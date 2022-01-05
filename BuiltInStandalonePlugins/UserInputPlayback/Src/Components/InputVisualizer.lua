--[[
	Visualizes user input events.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Otter = require(Plugin.Packages.Otter)
local Cryo = require(Plugin.Packages.Cryo)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Pane = UI.Pane

local KeyBarTile = require(Plugin.Src.Components.KeyBarTile)

local UserInputService = game:GetService("UserInputService")

-- Constants
local MOUSE_CURSOR_SIZE = 64
local FAKE_CURSOR_IMAGE = "rbxasset://textures/UserInputPlaybackPlugin/ArrowCursor.png"
local FAKE_MOUSE_CURSOR_COLOR = Color3.new(0, 1, 0)
local RING_IMAGE = "rbxasset://textures/UserInputPlaybackPlugin/Ring.png"
local LEFT_MOUSE_RING_COLOR = Color3.new(1, 1, 1)
local RIGHT_MOUSE_RING_COLOR = Color3.new(1, 1, 0)
local RING_MAX_SIZE = 50
local CURSOR_RING_EXPAND_TIME = 1

local TAP_IMAGE = "rbxasset://textures/UserInputPlaybackPlugin/TapCursor.png"
local TAP_IMAGE_SIZE = 64
local TAP_IMAGE_COLOR = FAKE_MOUSE_CURSOR_COLOR
local TAP_IMAGE_FADE_IN_TIME = 0.4
local TAP_IMAGE_FADE_OUT_TIME = 1

local KEY_ROW_MAX_TILES = 6
local KEY_TILE_SIZE = 50
local KEY_TILE_FADE_IN_TIME = 0.4
local KEY_ROW_FADE_IN_TIME = 0.4
local KEY_TILE_OPACITY = 1 - 0.4
local KEY_ROW_CLEANUP_TIME = 0.5
local KEY_TILE_FADE_OUT_TIME = 0.5
local KEY_ROW_MIN_DISPLAY_TIME = 1.5

local mouseRingColorsByButtonId = {
	[1] = LEFT_MOUSE_RING_COLOR,
	[2] = RIGHT_MOUSE_RING_COLOR,
}

local buttonInputTypes = {
	[Enum.UserInputType.Keyboard] = 1,
	[Enum.UserInputType.Gamepad1] = 2,
	[Enum.UserInputType.Gamepad2] = 2,
	[Enum.UserInputType.Gamepad3] = 2,
	[Enum.UserInputType.Gamepad4] = 2,
	[Enum.UserInputType.Gamepad5] = 2,
	[Enum.UserInputType.Gamepad6] = 2,
	[Enum.UserInputType.Gamepad7] = 2,
	[Enum.UserInputType.Gamepad8] = 2,
}

local ignoreKeyCodes = {
	[Enum.KeyCode.Thumbstick1] = 1,
	[Enum.KeyCode.Thumbstick2] = 1,
}

-- Types
type Binding<T> = T | {
	getValue: () -> T,
	map: <U>((T) -> U) -> any, -- Should be <U>((T) -> U) -> Binding<U>, but not supported by luau currently.
}

type OtterMotor = {
	onStep: (OtterMotor, any) -> (),
	setGoal: (OtterMotor, any) -> (),
	onComplete: (OtterMotor, () -> ()) -> (),
}

type CursorRing = {
	id: number,
	buttonId: number,
	color: Color3,
	position: Binding<UDim2>,
	updatePosition: (UDim2) -> (),
	size: Binding<UDim2>,
	updateSize: (UDim2) -> (),
	transparency: Binding<number>,
	updateTransparency: (number) -> (),
	image: string,
	zIndex: number,
	motor: OtterMotor,
}

type KeyTileData = {
	size: Binding<UDim2>,
	updateSize: (UDim2) -> (),
	backgroundTransparency: Binding<number>,
	updateBackgroundTransparency: (number) -> (),
	foregroundTransparency: Binding<number>,
	updateForegroundTransparency: (number) -> (),
	motor: OtterMotor,
}

type TouchInfo = {
	tapImage: CursorRing,
	ring: CursorRing,
}

local InputVisualizer = Roact.PureComponent:extend("InputVisualizer")

local getUniqueId : () -> number = (function()
	local uniqueId = 0
	return function()
		uniqueId += 1
		return uniqueId
	end
end)()

local function makeCursorRingData(buttonId: number, image: string, zIndex: number?,
	initialTransparency: number?): CursorRing

	local position, updatePosition = Roact.createBinding(UDim2.fromOffset(0, 0))
	local size, updateSize = Roact.createBinding(UDim2.fromOffset(0, 0))
	local transparency, updateTransparency = Roact.createBinding(0)
	return {
		id = getUniqueId(),
		buttonId = buttonId,
		color = mouseRingColorsByButtonId[buttonId],
		position = position,
		updatePosition = updatePosition,
		size = size,
		updateSize = updateSize,
		transparency = transparency,
		image = image,
		zIndex = zIndex or 1,
		updateTransparency = updateTransparency,
		motor = Otter.createGroupMotor({
			size = 0,
			transparency = initialTransparency or 0,
		}),
	}
end

local function makeKeyTileData(initialSize: number, initialTransparency: number): KeyTileData
	local size, updateSize = Roact.createBinding(UDim2.fromOffset(initialSize, KEY_TILE_SIZE))
	local backgroundTransparency, updateBackgroundTransparency = Roact.createBinding(initialTransparency)
	local foregroundTransparency, updateForegroundTransparency = Roact.createBinding(initialTransparency)
	return {
		size = size,
		updateSize = updateSize,
		backgroundTransparency = backgroundTransparency,
		updateBackgroundTransparency = updateBackgroundTransparency,
		foregroundTransparency = foregroundTransparency,
		updateForegroundTransparency = updateForegroundTransparency,
		motor = Otter.createGroupMotor({
			size = initialSize or UDim2.new(),
			transparency = initialTransparency or 0,
		}),
	}
end

function InputVisualizer:init()
	self.state = {
		visibleCursorRingIds = {},
		keyRows = {},
	}

	self.cursorRings = {}
	self.currentCursorRingsByButtonId = {}
	self.mouseButtonIsDown = {}
	self.connections = {}
	self.touchMap = {}
	self.keyTileData = {}

	self.fakeCursorPosition, self.updateFakeCursorPosition = Roact.createBinding(UDim2.fromOffset(0, 0))

	-- Mouse:
	self.onMouseDown = function(pos: Vector2, buttonId: number)
		if self.currentCursorRingsByButtonId[buttonId] then
			-- Somehow we received 2 mousedown events without a mouseup event.
			return
		end

		local ring: CursorRing = makeCursorRingData(buttonId, RING_IMAGE)
		table.insert(self.cursorRings, ring)
		ring.updatePosition(UDim2.fromOffset(pos.X, pos.Y))
		ring.updateSize(UDim2.fromOffset(1, 1))
		ring.updateTransparency(0)

		ring.motor:onStep(function(value)
			ring.updateSize(UDim2.fromOffset(value.size, value.size))
			ring.updateTransparency(value.transparency)
		end)

		ring.motor:setGoal({
			size = Otter.spring(RING_MAX_SIZE, {
				frequency = 1.0 / CURSOR_RING_EXPAND_TIME,
			}),
			transparency = Otter.instant(0),
		})

		self:setState({
			visibleCursorRingIds = Cryo.Dictionary.join(self.state.visibleCursorRingIds, {
				[ring.id] = true,
			})
		})

		self.currentCursorRingsByButtonId[buttonId] = ring
		self.mouseButtonIsDown[buttonId] = true
	end

	self.onMouseMove = function(pos: Vector2)
		self.updateFakeCursorPosition(UDim2.fromOffset(pos.X, pos.Y))

		for i = 1,2 do
			if self.currentCursorRingsByButtonId[i] and self.mouseButtonIsDown[i] then
				self.currentCursorRingsByButtonId[i].updatePosition(UDim2.fromOffset(pos.X, pos.Y))
			end
		end

		-- Don't show the real mouse cursor, only the fake one.
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
	end

	self.removeCursorRing = function(ring)
		if not self.isMounted then
			return
		end

		self:setState({
			visibleCursorRingIds = Cryo.Dictionary.join(self.state.visibleCursorRingIds, {
				[ring.id] = false,
			})
		})

		local index = table.find(self.cursorRings, ring)
		assert(index ~= nil, "Couldn't find ring")
		table.remove(self.cursorRings, index)
	end

	self.onMouseUp = function(pos: Vector2, buttonId: number)
		local currentRing = self.currentCursorRingsByButtonId[buttonId]
		if currentRing then
			currentRing.updatePosition(UDim2.fromOffset(pos.X, pos.Y))
			currentRing.motor:setGoal({
				size = Otter.spring(RING_MAX_SIZE * 2, {
					frequency = 1.0 / CURSOR_RING_EXPAND_TIME,
				}),
				transparency = Otter.spring(1, {
					frequency = 1.0 / CURSOR_RING_EXPAND_TIME,
				}),
			})
			currentRing.motor:onComplete(function()
				self.removeCursorRing(currentRing)
			end)
		end

		self.currentCursorRingsByButtonId[buttonId] = nil
		self.mouseButtonIsDown[buttonId] = false
	end

	-- Touch:
	self.onTouchStarted = function(inputObj: InputObject)
		local pos = inputObj.Position
		local posUDim2 = UDim2.fromOffset(pos.X, pos.Y)

		local ring: CursorRing = makeCursorRingData(0, RING_IMAGE, 2, 0)
		table.insert(self.cursorRings, ring)
		ring.updatePosition(posUDim2)
		ring.motor:onStep(function(value)
			ring.updateSize(UDim2.fromOffset(value.size, value.size))
			ring.updateTransparency(value.transparency)
		end)
		ring.motor:setGoal({
			size = Otter.spring(RING_MAX_SIZE, {
				frequency = 1.0 / CURSOR_RING_EXPAND_TIME,
			}),
			transparency = Otter.instant(0),
		})

		local tapImage: CursorRing = makeCursorRingData(0, TAP_IMAGE, 1, 1)
		table.insert(self.cursorRings, tapImage)
		tapImage.color = TAP_IMAGE_COLOR
		tapImage.updatePosition(posUDim2)
		tapImage.updateTransparency(1)
		tapImage.updateSize(UDim2.fromOffset(TAP_IMAGE_SIZE, TAP_IMAGE_SIZE))
		tapImage.motor:onStep(function(value)
			tapImage.updateTransparency(value.transparency)
		end)
		tapImage.motor:setGoal({
			transparency = Otter.spring(0, {
				frequency = 1.0 / TAP_IMAGE_FADE_IN_TIME,
			}),
		})

		local visibleRings = self.state.visibleCursorRingIds
		visibleRings[ring.id] = true
		visibleRings[tapImage.id] = true
		self:setState({
			visibleCursorRingIds = visibleRings,
		})

		self.touchMap[inputObj] = {
			tapImage = tapImage,
			ring = ring,
		}
	end

	self.onTouchMoved = function(inputObj: InputObject)
		local touchInfo: TouchInfo = self.touchMap[inputObj]
		if touchInfo then
			local pos = inputObj.Position
			local posUDim2 = UDim2.fromOffset(pos.X, pos.Y)
			touchInfo.tapImage.updatePosition(posUDim2)
			touchInfo.ring.updatePosition(posUDim2)
		end
	end

	self.onTouchEnded = function(inputObj: InputObject)
		local touchInfo: TouchInfo = self.touchMap[inputObj]
		if touchInfo then
			self.onTouchMoved(inputObj)

			touchInfo.ring.motor:setGoal({
				size = Otter.spring(2 * RING_MAX_SIZE, {
					frequency = 1.0 / CURSOR_RING_EXPAND_TIME,
				}),
				transparency = Otter.spring(1, {
					frequency = 1.0 / CURSOR_RING_EXPAND_TIME,
				}),
			})
			touchInfo.ring.motor:onComplete(function()
				self.removeCursorRing(touchInfo.ring)
			end)

			touchInfo.tapImage.motor:setGoal({
				transparency = Otter.spring(1, {
					frequency = 1.0 / TAP_IMAGE_FADE_OUT_TIME,
				}),
			})
			touchInfo.tapImage.motor:onComplete(function()
				self.removeCursorRing(touchInfo.tapImage)
			end)
		end
	end

	-- Buttons/Keys:
	self.onKeyDown = function(keyCode)
		if ignoreKeyCodes[keyCode] then
			return
		end

		self:setState(function(prevState, props)
			local currentKeyRows = prevState.keyRows
			local newKeyRows = Cryo.Dictionary.join(currentKeyRows) -- Make a new table

			local currentRow = newKeyRows[1]
			if not currentRow or currentRow.numberOfKeys >= KEY_ROW_MAX_TILES then
				-- Make new row
				currentRow = {
					lastUpdateTime = tick(),
					numberOfKeys = 0,
					keys = {},
					dataId = getUniqueId(),
				}
				table.insert(newKeyRows, 1, currentRow)

				local rowData = makeKeyTileData(0, 1)
				self.keyTileData[currentRow.dataId] = rowData

				rowData.updateSize(UDim2.fromOffset(KEY_TILE_SIZE, 0))
				rowData.motor:onStep(function(value)
					rowData.updateSize(UDim2.fromOffset(KEY_TILE_SIZE, value.size))
				end)
				rowData.motor:setGoal({
					size = Otter.spring(KEY_TILE_SIZE, {
						frequency = 1.0 / KEY_ROW_FADE_IN_TIME,
					}),
				})
			end

			local keyTileData = makeKeyTileData(0, 1)
			local id = getUniqueId()
			self.keyTileData[id] = keyTileData
			keyTileData.motor:onStep(function(value)
				keyTileData.updateSize(UDim2.fromOffset(value.size, KEY_TILE_SIZE))
				keyTileData.updateForegroundTransparency(value.transparency)
				keyTileData.updateBackgroundTransparency(1 - (1 - value.transparency) * KEY_TILE_OPACITY)
			end)
			keyTileData.motor:setGoal({
				size = Otter.spring(KEY_TILE_SIZE, {
					frequency = 1.0 / KEY_TILE_FADE_IN_TIME,
				}),
				transparency = Otter.spring(0, {
					frequency = 1.0 / KEY_TILE_FADE_IN_TIME,
				}),
			})

			currentRow.lastUpdateTime = tick()
			currentRow.numberOfKeys += 1
			table.insert(currentRow.keys, {
				keyCode = keyCode,
				dataId = id,
			})

			return {
				keyRows = newKeyRows,
			}
		end)
	end

	self.deleteKeyRowThread = function()
		local function deleteKeyRowWithId(rowDataId)
			if not self.isMounted then
				return
			end

			self:setState(function(prevState, props)
				local currentKeyRows = prevState.keyRows
				local newKeyRows = Cryo.Dictionary.join(currentKeyRows) -- Make a new table

				local row
				local index
				for i, r in ipairs(newKeyRows) do
					if r.dataId == rowDataId then
						row = r
						index = i
						break
					end
				end
				
				if not row then
					return
				end

				-- Delete all data for this row and its keys
				self.keyTileData[row.dataId] = nil
				for _, key in ipairs(row.keys) do
					self.keyTileData[key.dataId] = nil
				end
				row.keys = nil
				
				table.remove(newKeyRows, index)
				return {
					keyRows = newKeyRows,
				}
			end)			
		end

		local function fadeOutKeyRow(keyRow)
			for i, key in ipairs(keyRow.keys) do
				local data = self.keyTileData[key.dataId]
				data.motor:setGoal({
					transparency = Otter.spring(1, {
						frequency = 1.0 / KEY_TILE_FADE_OUT_TIME,
					}),
				})

				if i == 1 then
					data.motor:onComplete(function()
						deleteKeyRowWithId(keyRow.dataId)
					end)
				end
			end
		end
	
		while true do
			if not self.isMounted then
				return
			end
	
			local keyRows = self.state.keyRows
			for _, row in ipairs(keyRows) do
				local lastTime = row.lastUpdateTime
				if tick() - lastTime > KEY_ROW_MIN_DISPLAY_TIME then
					fadeOutKeyRow(row)
				end
			end

			wait(KEY_ROW_CLEANUP_TIME)
		end
	end
end

function InputVisualizer:didMount()
	table.insert(self.connections, UserInputService.InputBegan:connect(function(obj: InputObject)
		local pos3: Vector3 = obj.Position
		if obj.UserInputType == Enum.UserInputType.MouseButton1 then
			self.onMouseDown(Vector2.new(pos3.X, pos3.Y), 1)
		elseif obj.UserInputType == Enum.UserInputType.MouseButton2 then
			self.onMouseDown(Vector2.new(pos3.X, pos3.Y), 2)
		elseif obj.UserInputType == Enum.UserInputType.Touch then
			self.onTouchStarted(obj)
		elseif buttonInputTypes[obj.UserInputType] then
			self.onKeyDown(obj.KeyCode)
		end
	end))

	table.insert(self.connections, UserInputService.InputEnded:connect(function(obj)
		local pos3: Vector3 = obj.Position
		if obj.UserInputType == Enum.UserInputType.MouseButton1 then
			self.onMouseUp(Vector2.new(pos3.X, pos3.Y), 1)
		elseif obj.UserInputType == Enum.UserInputType.MouseButton2 then
			self.onMouseUp(Vector2.new(pos3.X, pos3.Y), 2)
		elseif obj.UserInputType == Enum.UserInputType.Touch then
			self.onTouchEnded(obj)
		end
	end))

	table.insert(self.connections, UserInputService.InputChanged:connect(function(obj)
		local pos3: Vector3 = obj.Position
		if obj.UserInputType == Enum.UserInputType.MouseMovement then
			self.onMouseMove(Vector2.new(pos3.X, pos3.Y))
		elseif obj.UserInputType == Enum.UserInputType.Touch then
			self.onTouchMoved(obj)
		end
	end))

	self.isMounted = true
	task.defer(self.deleteKeyRowThread)
end

function InputVisualizer:willUnmount()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end
	self.connections = {}
	self.isMounted = false
end

function InputVisualizer:render()
	local props = self.props
	local state = self.state
	local style = props.Stylizer

	local keyRowElements = {}
	for i, keyRowItem in ipairs(state.keyRows) do
		local keyElements = {}
		for j, keyItem in ipairs(keyRowItem.keys) do
			local data: KeyTileData? = self.keyTileData[keyItem.dataId]
			if data then
				keyElements[j] = Roact.createElement(KeyBarTile, {
					KeyCode = keyItem.keyCode,
					LayoutOrder = j,
					Size = data.size,
					ForegroundTransparency = data.foregroundTransparency,
					BackgroundTransparency = data.backgroundTransparency,
				})
			end
		end

		local data: KeyTileData? = self.keyTileData[keyRowItem.dataId]
		if data then
			keyRowElements[i] = Roact.createElement(Pane, {
				Layout = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Bottom,
				Spacing = style.KeyBarRowSpacingPx,
				Size = data.size,
				LayoutOrder = -i,
			}, keyElements)
		end
	end

	local elements = {
		-- Use ImageLabel instead of DevFramework.UI.Image because of prop validation issues
		-- when using Roact bindings as props.
		FakeCursorImage = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Image = FAKE_CURSOR_IMAGE,
			Position = self.fakeCursorPosition,
			Size = UDim2.fromOffset(MOUSE_CURSOR_SIZE, MOUSE_CURSOR_SIZE),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Visible = true,
			ImageColor3 = FAKE_MOUSE_CURSOR_COLOR,
			ZIndex = 1,
		}),
		KeyBar = Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Vertical,
			Spacing = style.KeyBarRowSpacingPx,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Bottom,
			Size = style.KeyBarSize,
			Position = UDim2.fromScale(0, 1),
			AnchorPoint = Vector2.new(0, 1),
		}, keyRowElements),
	}

	for i, ring: CursorRing in ipairs(self.cursorRings) do
		if state.visibleCursorRingIds[ring.id] then
			elements[ring.id] = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Image = ring.image,
				ZIndex = ring.zIndex,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = ring.size,
				Position = ring.position,
				ImageTransparency = ring.transparency,
				ImageColor3 = ring.color,
				Visible = true,
			})
		end
	end

	return Roact.createFragment(elements)
end

InputVisualizer = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
})(InputVisualizer)

return InputVisualizer
