local Plugin = script.Parent.Parent.Parent.Parent
local UILibrary = Plugin.Packages.UILibrary
local Signal = require(UILibrary.Utils.Signal)
local Cryo = require(Plugin.Packages.Cryo)

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape
local FlattenMode = TerrainEnums.FlattenMode
local PivotType = TerrainEnums.PivotType
local ToolId = TerrainEnums.ToolId

local TerrainBrushCursor = require(script.Parent.TerrainBrushCursor)
local TerrainBrushCursorGrid = require(script.Parent.TerrainBrushCursorGrid)

local performTerrainBrushOperation = require(script.Parent.performTerrainBrushOperation)

local AnalyticsService = game:GetService("RbxAnalyticsService")
local ChangeHistoryService = game:GetService("ChangeHistoryService")
local Players = game:GetService("Players")
local StudioService = game:GetService("StudioService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")

local FFlagTerrainToolMetrics = settings():GetFFlag("TerrainToolMetrics")

local CLICK_THRESHOLD = 0.1

local RenderStepped = game:GetService("RunService").RenderStepped
local function quickWait(waitTime)
	if not waitTime then
		RenderStepped:wait()
	elseif waitTime < 0.033333 then
		local startTick = tick()
		RenderStepped:wait()
		local delta = tick - startTick
		if delta <= waitTime * 0.5 then
			quickWait(waitTime - delta)
		end
	else
		wait(waitTime)
	end
end

local function lineToPlaneIntersection(linePoint, lineDirection, planePoint, planeNormal)
	local denominator = lineDirection:Dot(planeNormal)
	if denominator == 0 then
		return linePoint
	end
	local distance = (planePoint - linePoint):Dot(planeNormal) / denominator
	return linePoint + lineDirection * distance
end

local function round(n)
	return math.floor(n + 0.5)
end

local function getCameraLookSnappedForPlane()
	local camera = Workspace.CurrentCamera
	local lookVector = camera.CoordinateFrame.lookVector
	return Vector3.new(round(lookVector.x), round(lookVector.y), round(lookVector.z)).unit
end

local TerrainBrush = {}
TerrainBrush.__index = TerrainBrush

function TerrainBrush.new(options)
	local self = setmetatable({
		_plugin = options.plugin,
		_terrain = options.terrain,

		_operationSettings = {
			currentTool = ToolId.None,
			brushShape = BrushShape.Sphere,

			cursorSize = Constants.INITIAL_BRUSH_SIZE,
			cursorHeight = Constants.INITIAL_BRUSH_SIZE,
			strength = Constants.INITIAL_BRUSH_STRENGTH,
			centerPoint = Vector3.new(0, 0, 0),

			material = Enum.Material.Grass,
			autoMaterial = false,

			flattenMode = FlattenMode.Both,
			pivot = PivotType.Center,

			ignoreWater = true,
			planeLock = false,
			fixedPlane = false,
			snapToGrid = false,
			heightPicker = false,

			planePositionY = Constants.INITIAL_PLANE_POSITION_Y,
		},

		_active = false,
		_currentLoopTag = nil,

		_mouse = nil,
		_mouseDown = false,
		_mouseClick = false,
		_downKeys = {},
		_connections = {},

		_cursor = TerrainBrushCursor.new(options.terrain),
		_cursorGrid = TerrainBrushCursorGrid.new(),

		-- Set in :_run(), used for positioning cursor part and grid
		_cursorTargetLocation = Vector3.new(0, 0, 0),
		_lastNormal = Vector3.new(0, 1, 0),

		_planePositionYChanged = Signal.new(),
		_heightPickerSet = Signal.new(),
		_requestBrushSizeChanged = Signal.new(),
		_requestBrushStrengthChanged = Signal.new(),
	}, TerrainBrush)

	return self
end

function TerrainBrush:destroy()
	self:deactivate()
end

function TerrainBrush:subscribeToPlanePositionYChanged(...)
	return self._planePositionYChanged:connect(...)
end

function TerrainBrush:subscribeToHeightPickerSet(...)
	return self._heightPickerSet:connect(...)
end

function TerrainBrush:subscribeToRequestBrushSizeChanged(...)
	return self._requestBrushSizeChanged:connect(...)
end

function TerrainBrush:subscribeToRequestBrushStrengthChanged(...)
	return self._requestBrushStrengthChanged:connect(...)
end

function TerrainBrush:updateSettings(newSettings)
	self._operationSettings = Cryo.Dictionary.join(self._operationSettings, newSettings)
	self:_updateCursor()
end

function TerrainBrush:activateTool(newTool)
	if self._active and newTool ~= self._operationSettings.currentTool then
		self:deactivate()
	end

	self:updateSettings({
		currentTool = newTool,
		autoMaterial = newTool == ToolId.Flatten,
	})

	self._plugin:Activate(true)
	self._active = true
	self:_connectInput()

	self:_run()
end

function TerrainBrush:deactivate()
	self._currentLoopTag = nil
	self._active = false

	self._mouse = nil
	self._mouseDown = false
	self._mouseClick = false
	self._downKeys = {}
	self:_disconnectAllConnections()

	self:_destroyCursor()
end

function TerrainBrush:_updateCursor()
	if TerrainBrushCursor.isVisibleForOperation(self._operationSettings) then
		self._cursor:maybeCreate()
		self._cursor:update({
			size = self._operationSettings.cursorSize,
			height = self._operationSettings.cursorHeight,
			strength = self._operationSettings.strength,
			location = self._cursorTargetLocation,
			shape = self._operationSettings.brushShape,
			pivot = self._operationSettings.pivot,
			mouseDown = self._mouseDown,
		})
	else
		self._cursor:hide()
	end

	if TerrainBrushCursorGrid.isVisibleForOperation(self._operationSettings) then
		self._cursorGrid:maybeCreate()
		self._cursorGrid:update({
			currentTool = self._operationSettings.currentTool,
			cursorSize = self._operationSettings.cursorSize,

			fixedPlane = self._operationSettings.fixedPlane,
			planeLock = self._operationSettings.planeLock,
			planePositionY = self._operationSettings.planePositionY,
			heightPicker = self._operationSettings.heightPicker,

			mouseDown = self._mouseDown,

			mainPoint = self._cursorTargetLocation,
			lastNormal = self._lastNormal,
		})
	else
		self._cursorGrid:hide()
	end
end

function TerrainBrush:_destroyCursor()
	self._cursor:destroy()
	self._cursorGrid:destroy()
end

function TerrainBrush:_disconnectAllConnections()
	for _, connection in pairs(self._connections) do
		connection:Disconnect()
	end
	self._connections = {}
end

function TerrainBrush:_connectInput()
	self._mouse = self._plugin:GetMouse()

	local function connectHelper(event, func)
		if self._connections[event] then
			self._connections[event]:Disconnect()
		end

		self._connections[event] = event:Connect(func)
	end

	connectHelper(UserInputService.InputBegan, function(event, soaked)
		self._downKeys[event.KeyCode] = true
		if event.UserInputType == Enum.UserInputType.MouseButton1 and not soaked and self._active then
			self._mouseDown = true
			self._mouseClick = true
		end
	end)

	connectHelper(UserInputService.InputEnded, function(event, soaked)
		self._downKeys[event.KeyCode] = nil
		if event.UserInputType == Enum.UserInputType.MouseButton1 and self._mouseDown then
			self._mouseDown = false
			ChangeHistoryService:SetWaypoint("Terrain " .. self._operationSettings.currentTool)
		end
	end)

	connectHelper(UserInputService.WindowFocusReleased, function()
		self._downKeys = {}
	end)

	local function handleScrollWheel(direction)
		if self._downKeys[Enum.KeyCode.LeftShift] or self._downKeys[Enum.KeyCode.RightShift] then
			local scalingChange = direction / 10

			local sizeGrow = self._operationSettings.cursorSize * scalingChange
			local heightGrow = self._operationSettings.cursorHeight * scalingChange

			-- If the amount we grow by is less than 1, then it's possible we'll get stuck at a position
			-- e.g. If cursorSize = 2, sizeGrow = 0.2, round(cursorSize + sizeGrow) = 2, and we're stuck there forever
			-- But if we clamp it to be bigger than 1, then round(cursorSize + sizeGrow) = 3
			if math.abs(sizeGrow) < 1 then
				sizeGrow = math.sign(sizeGrow)
			end

			if math.abs(heightGrow) < 1 then
				heightGrow = math.sign(heightGrow)
			end

			local newSize = round(self._operationSettings.cursorSize + sizeGrow)
			local newHeight = round(self._operationSettings.cursorHeight + heightGrow)

			local newSizeClamped = math.max(Constants.MIN_BRUSH_SIZE, math.min(Constants.MAX_BRUSH_SIZE, newSize))
			local newHeightClamped = math.max(Constants.MIN_BRUSH_SIZE, math.min(Constants.MAX_BRUSH_SIZE, newHeight))

			self._requestBrushSizeChanged:fire(newSizeClamped, newHeightClamped)
		end

		if self._downKeys[Enum.KeyCode.LeftControl] or self._downKeys[Enum.KeyCode.RightControl] then
			local newStrength = math.max(0.1, math.min(1, self._operationSettings.strength + (direction * 0.1)))

			self._requestBrushStrengthChanged:fire(newStrength)
		end
	end

	connectHelper(self._mouse.WheelForward, function()
		handleScrollWheel(1)
	end)

	connectHelper(self._mouse.WheelBackward, function()
		handleScrollWheel(-1)
	end)
end

function TerrainBrush:_run()
	self._active = true

	local lastCursorDistance = 300
	local lastPlanePoint = Vector3.new(0, 0, 0)
	local lastNormal = Vector3.new(0, 1, 0)
	local lastMainPoint = Vector3.new(0, 0, 0)
	local firstOperation = tick()

	local reportClick = true

	local loopTag = {}
	self._currentLoopTag = loopTag

	while self._currentLoopTag and self._currentLoopTag == loopTag do
		if not self._mouse then
			warn("No mouse in TerrainBrush:_run()")
			break
		end

		local currentTick = tick()
		local radius = self._operationSettings.cursorSize * 0.5 * Constants.VOXEL_RESOLUTION

		-- Why is mouse used for camera?
		local cameraPos = self._mouse.Origin.p

		local ignoreList = {self._cursor:getCursorPart()}
		if Players.LocalPlayer and Players.LocalPlayer.Character then
			table.insert(ignoreList, Players.LocalPlayer.Character)
		end

		local unitRay = self._mouse.UnitRay.Direction
		local mouseRay = Ray.new(cameraPos, unitRay * 10000)
		local _, mainPoint, _, _ = Workspace:FindPartOnRayWithIgnoreList(mouseRay, ignoreList,
			false, self._operationSettings.ignoreWater)

		if self._operationSettings.heightPicker then
			self._planePositionYChanged:fire(mainPoint.y - 1)
		end

		local currentTool = self._operationSettings.currentTool
		if currentTool == ToolId.Add then
			mainPoint = mainPoint - unitRay * 0.05
		elseif currentTool == ToolId.Subtract or currentTool == ToolId.Paint or currentTool == ToolId.Grow then
			mainPoint = mainPoint + unitRay * 0.05
		elseif currentTool == ToolId.Flatten then
			if not self._operationSettings.planeLock and self._mouseClick then
				if not self._operationSettings.fixedPlane then
					self._planePositionYChanged:fire(mainPoint.Y - 1)
				end
			end
		end

		if not self._mouse.Target then
			mainPoint = cameraPos + unitRay * lastCursorDistance
		end

		if not self._operationSettings.planeLock
			or not (self._downKeys[Enum.KeyCode.LeftShift] or self._downKeys[Enum.KeyCode.RightShift]) then
			if not self._mouseDown or self._mouseClick then
				lastPlanePoint = mainPoint
				lastNormal = currentTool == ToolId.Flatten and Vector3.new(0, 1, 0) or getCameraLookSnappedForPlane()
				reportClick = true
			end
		end

		if self._operationSettings.planeLock then
			mainPoint = lineToPlaneIntersection(cameraPos, unitRay, lastPlanePoint, lastNormal)
		end

		if self._operationSettings.snapToGrid then
			local snapOffset = Vector3.new(1, 1, 1) * (radius % Constants.VOXEL_RESOLUTION)
			local tempMainPoint = ((mainPoint - snapOffset) / Constants.VOXEL_RESOLUTION) + Vector3.new(0.5, 0.5, 0.5)
			mainPoint = (Vector3.new(math.floor(tempMainPoint.x),
				math.floor(tempMainPoint.y),
				math.floor(tempMainPoint.z)) * Constants.VOXEL_RESOLUTION) + snapOffset
		end

		if self._mouseDown then
			if self._mouseClick then
				firstOperation = currentTick
				lastMainPoint = mainPoint
			end

			if self._mouseClick or currentTick > firstOperation + CLICK_THRESHOLD then
				self._mouseClick = false

				if reportClick then
					if FFlagTerrainToolMetrics then
						AnalyticsService:SendEventDeferred("studio", "TerrainEditorV2", "UseTerrainTool", {
							userId = StudioService:GetUserId(),
							toolName = currentTool
						})
					end
					reportClick = false
				end

				local difference = mainPoint - lastMainPoint
				local dragDistance = difference.magnitude
				local crawlDistance = radius * 0.5

				if dragDistance > crawlDistance then
					local differenceVector = difference.unit
					local dragDistance = math.min(dragDistance, (crawlDistance * 2) + 20)
					local samples = math.ceil((dragDistance / crawlDistance) - 0.1)

					for i = 1, samples, 1 do
						self._operationSettings.centerPoint = lastMainPoint + (differenceVector * dragDistance * (i / samples))
						performTerrainBrushOperation(self._terrain, self._operationSettings)
					end
					mainPoint = lastMainPoint + differenceVector * dragDistance
				else
					self._operationSettings.centerPoint = mainPoint
					performTerrainBrushOperation(self._terrain, self._operationSettings)
				end

				lastMainPoint = mainPoint

				if currentTool == ToolId.Flatten and self._operationSettings.heightPicker then
					self._heightPickerSet:fire(false)
				end
			end
		end

		self._cursorTargetLocation = mainPoint
		self._lastNormal = lastNormal

		self:_updateCursor()

		lastCursorDistance = math.max(20 + (self._operationSettings.cursorSize * Constants.VOXEL_RESOLUTION * 1.5),
			(mainPoint - cameraPos).magnitude)

		quickWait()
	end
end

return TerrainBrush
