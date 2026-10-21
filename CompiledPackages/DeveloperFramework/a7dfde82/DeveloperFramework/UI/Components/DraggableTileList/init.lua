--[[
	Renders a list of boxes with interactive dragging to reorder.

	Required Props:
		array[any] TileList: A list of objects to be displayed in the draggable UI boxes.
		number Capacity: A maximum number of boxes to display.

	Optional Props:
		callback OnOrderChanged: A function to be called when the box order is changed by the user.
			Must accept two number parameters, oldIndex and newIndex. oldIndex is the original
			index of the box that was dragged. newIndex is the index where the box ended up.
		number LayoutOrder: LayoutOrder of the component.
		any TileComponent: A component to render for each box using the props in TileList.
		callback GetTileProps: A function to return the props for a tile in TileList.
			For each tile it is passed (tile) -> RowProps
		UDim2 Position: The position of this component.
		UDim2 Size: The size of this component.
		boolean ShowEmptyBoxes: Whether empty boxes should be shown in the UI.
		number AnimationSpeed: How fast boxes slide.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		callback GetTileId: A callback called to obtain a unique ID for the tile. Required for new code to correctly track components - GetTileId(tile: any) -> string
]]

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local Otter = (if Framework.Parent:FindFirstChild("Otter") then require(Framework.Parent.Otter) else nil) :: any

local Util = require(Framework.Util)
local Typecheck = require(Framework.Util.Typecheck)
local isInputMainPress = Util.isInputMainPress
local prioritize = Util.prioritize

local Pane = require(Framework.UI.Components.Pane)
local TileBox = require(script.TileBox)

local FFlagDevFrameworkFixMissingKeyErrors = require(Framework.SharedFlags.getFFlagDevFrameworkFixMissingKeyErrors)()
local isRoact17 = require(Framework.Util.isRoact17)(Roact)

local DraggableTileList = Roact.PureComponent:extend("DraggableTileList")
Typecheck.wrap(DraggableTileList, script)

export type Props = {
	TileList: { any },
	Capacity: number,
	TileComponent: any?,
	OnOrderChanged: ((oldIndex: number, newIndex: number) -> ())?,
	LayoutOrder: number?,
	AnchorPoint: Vector2?,
	Position: UDim2?,
	Size: UDim2?,
	ShowEmptyBoxes: boolean?,
	AnimationSpeed: number?,
	GetTileProps: (any) -> { [string]: any },
}

type _Props = Props & {
	Stylizer: { [string]: any },
}

type _State = {
	isDragging: boolean,
	isAnimating: boolean,
	dragPositionY: number,
}

DraggableTileList.defaultProps = {
	ShowEmptyBoxes = false,
	LayoutOrder = 1,
	Capacity = 10,
	AnimationSpeed = 10,
	Position = UDim2.new(0, 0, 0, 0),
}

function DraggableTileList:init()
	self:setState({
		isDragging = false,
		isAnimating = false,
		dragPositionY = 0,
	})
	self.draggingIndex = 0
	self.blankIndex = 0
	self.clickOffsetY = 0
	self.frameRef = Roact.createRef()
	self.numBoxesToDisplay = 0
	self.otterMotors = {}
	self.otterMotorBindings = {}
	self.updateOtterMotorBindings = {}
	self.tileList = {}

	self.onInputBegan = function(_, input)
		if isInputMainPress(input) then
			local mouseY = input.Position.Y
			local dragPositionY = mouseY - self.getAbsoluteY()
			self.draggingIndex = self.getClosestBox(mouseY)
			self.clickOffsetY = self.getOffset(mouseY, self.draggingIndex)
			self.blankIndex = self.draggingIndex
			if self.draggingIndex > 0 and self.draggingIndex <= #self.tileList then
				self:setState({
					isDragging = true,
					dragPositionY = dragPositionY,
				})
			end
		end
	end

	self.onInputEnded = function(_, input)
		if isInputMainPress(input) then
			if self.draggingIndex ~= self.blankIndex then
				self.onOrderChanged(self.draggingIndex, self.blankIndex)
				if self.props.OnOrderChanged then
					self.props.OnOrderChanged(self.draggingIndex, self.blankIndex)
				end
				self.destroyMotors()
			end
			self:setState({
				isDragging = false,
			})
		end
	end

	self.onInputChanged = function(_, input)
		local state: _State = self.state
		if input.UserInputType == Enum.UserInputType.MouseMovement and state.isDragging then
			local mouseY = input.Position.Y
			local dragPositionY = mouseY - self.getAbsoluteY()
			self.blankIndex = self.getClosestBox(mouseY)
			self:setState({
				dragPositionY = dragPositionY,
			})
		end
	end

	self.onOrderChanged = function(oldIndex, newIndex)
		local temp = table.remove(self.tileList, oldIndex)
		table.insert(self.tileList, newIndex, temp)
	end

	self.getOffset = function(mouseY, index)
		if not self.frameRef then
			return 0
		end
		local frame = self.frameRef:getValue()
		if frame then
			local boxCount = self.numBoxesToDisplay
			local size = frame.AbsoluteSize.Y
			local absoluteY = self.getAbsoluteY()
			return (size * (index - 1) / boxCount) - (mouseY - absoluteY)
		end
		return 0
	end

	self.getClosestBox = function(mouseY)
		if not self.frameRef then
			return 0
		end
		local frame = self.frameRef:getValue()
		if frame then
			local boxCount = self.numBoxesToDisplay
			local size = frame.AbsoluteSize.Y
			local absoluteY = self.getAbsoluteY()
			return math.floor((mouseY - absoluteY) / (size / boxCount)) + 1
		end
		return 0
	end

	self.getAbsoluteY = function()
		if not self.frameRef then
			return 0
		end
		local frame = self.frameRef:getValue()
		if frame then
			return frame.AbsolutePosition.Y
		end
		return 0
	end

	self.getMaxY = function()
		if not self.frameRef then
			return 0
		end
		local frame = self.frameRef:getValue()
		if frame then
			local boxCount = math.min(#self.tileList, self.props.Capacity)
			local size = frame.AbsoluteSize.Y
			return size * (boxCount - 1) / self.numBoxesToDisplay
		end
		return 0
	end

	self.destroyMotors = function()
		if self.otterMotors then
			for _, motor in ipairs(self.otterMotors) do
				motor:destroy()
			end
		end
		self.otterMotors = {}
		self.updateOtterMotorBindings = {}
		self.otterMotorBindings = {}
	end

	self.createOtterMotors = function(count)
		if not next(self.otterMotors) or #self.otterMotors ~= self.maxDragIndex then
			self.destroyMotors()
			for i = 1, count do
				if #self.otterMotors == self.numBoxesToDisplay then
					break
				end
				self.otterMotors[i] = Otter.createSingleMotor((i - 1) / self.numBoxesToDisplay)
				self.otterMotorBindings[i], self.updateOtterMotorBindings[i] =
					Roact.createBinding((i - 1) / self.numBoxesToDisplay)
				self.otterMotors[i]:onStep(function(value)
					self.updateOtterMotorBindings[i](value)
					self:setState({
						isAnimating = true,
					})
				end)
				self.otterMotors[i]:onComplete(function()
					self:setState({
						isAnimating = false,
					})
				end)
			end
		end
	end

	self.isDragInBounds = function()
		return self.state.isDragging and self.draggingIndex <= self.maxDragIndex and self.draggingIndex > 0
	end

	self.getTileProps = function(tile)
		return self:getDefaultTileProps(tile)
	end

	self.createBoxContainer = function(position, zIndex, layoutOrder, tile)
		local props: _Props = self.props
		local tileComponent = props.TileComponent
		local getTileProps = props.GetTileProps or self.getTileProps
		local boxProps = getTileProps(tile)
		return Roact.createElement(Pane, {
			key = if FFlagDevFrameworkFixMissingKeyErrors
					and isRoact17
					and self.props.GetTileId
				then self.props.GetTileId(tile)
				else nil,
			Size = UDim2.new(1, 0, 1.0 / self.numBoxesToDisplay, 0),
			Position = position,
			LayoutOrder = layoutOrder,
			ZIndex = zIndex,
		}, {
			BoxContent = Roact.createElement(tileComponent or TileBox, boxProps),
		})
	end

	self.updateMotorAndGetPosition = function(i, index, speed)
		local pos = UDim2.new(0, 0, (index - 1) / self.numBoxesToDisplay, 0)
		if Otter then
			self.otterMotors[i]:setGoal(Otter.spring((index - 1) / self.numBoxesToDisplay, { frequency = speed }))
			pos = UDim2.new(0, 0, self.otterMotorBindings[i]:getValue(), 0)
		end
		return pos
	end

	self.doUpdate = function(oldTileList, newTileList)
		local update = false
		if oldTileList and newTileList and #oldTileList ~= #newTileList then
			update = true
		else
			local oldTileSet = {}
			for _, oldTile in ipairs(oldTileList) do
				oldTileSet[oldTile] = true
			end
			for _, newTile in ipairs(newTileList) do
				if not oldTileSet[newTile] then
					update = true
					break
				end
			end
		end
		if update then
			self.tileList = {}
			for i, child in ipairs(newTileList) do
				local layoutOrder = child.LayoutOrder
				if not layoutOrder then
					layoutOrder = i
				end
				self.tileList[layoutOrder] = child
			end
		end
	end

	self.doUpdate(self.tileList, self.props.TileList)
end

function DraggableTileList:getDefaultTileProps(tile)
	return {
		Tile = tile or { Text = "" },
		Style = self.props.Stylizer,
	}
end

function DraggableTileList:willUnmount()
	self.destroyMotors()
end

function DraggableTileList:willUpdate(nextProps)
	self.doUpdate(self.tileList, nextProps.TileList)
end

function DraggableTileList:render()
	if not Otter then
		print("Error: Otter not found, disabling animations. Please re-run manage_libraries.py")
	end

	local props: _Props = self.props
	local state: _State = self.state
	local anchorPoint = props.AnchorPoint
	local layoutOrder = props.LayoutOrder
	local size = prioritize(props.Size, UDim2.new(1, 0, 1, 0))
	local position = props.Position
	local showEmptyBoxes = props.ShowEmptyBoxes
	local capacity = math.max(1, props.Capacity)
	local speed = props.AnimationSpeed
	local dragPositionY = state.dragPositionY
	local blankIndex = self.blankIndex

	self.numBoxesToDisplay = capacity
	self.maxDragIndex = capacity
	if #self.tileList < capacity then
		if not showEmptyBoxes then
			self.numBoxesToDisplay = #self.tileList
		end
		self.maxDragIndex = #self.tileList
	end

	if #self.tileList > 0 then
		blankIndex = math.clamp(blankIndex, 1, #self.tileList)
	end

	if Otter then
		self.createOtterMotors(#self.tileList)
	end

	local children = {}
	local index = 1

	for i, tile in ipairs(self.tileList) do
		if #children == self.numBoxesToDisplay then
			break
		end
		if self.isDragInBounds() then
			if i == self.draggingIndex then
				local y = dragPositionY + self.clickOffsetY
				y = math.clamp(y, 0, self.getMaxY())
				local box = self.createBoxContainer(UDim2.new(0, 0, 0, y), 100, 1, tile)
				table.insert(children, box)
			else
				if index == blankIndex then
					index += 1
				end
				local pos = self.updateMotorAndGetPosition(i, index, speed)
				local box = self.createBoxContainer(pos, 99, index + 1, tile)
				table.insert(children, box)
				index += 1
			end
		else
			local pos = self.updateMotorAndGetPosition(i, i, speed)
			local box = self.createBoxContainer(pos, 99, i + 1, tile)
			table.insert(children, box)
		end
	end

	if #children < self.numBoxesToDisplay and showEmptyBoxes then
		for i = #children + 1, self.numBoxesToDisplay do
			local pos = UDim2.new(0, 0, (i - 1) / self.numBoxesToDisplay, 0)
			local box = self.createBoxContainer(pos, 99, i + 1, nil)
			table.insert(children, box)
		end
	end

	return Roact.createElement("TextButton", {
		AnchorPoint = anchorPoint,
		LayoutOrder = layoutOrder,
		Position = position,
		Size = UDim2.new(0, size.X.Offset, 0, size.Y.Offset * self.numBoxesToDisplay / capacity),

		BorderSizePixel = 0,
		BackgroundTransparency = 1,

		[Roact.Ref] = self.frameRef,

		[Roact.Event.InputBegan] = self.onInputBegan,
		[Roact.Event.InputEnded] = self.onInputEnded,
		[Roact.Event.InputChanged] = self.onInputChanged,

		Text = "",
	}, children)
end

DraggableTileList = withContext({
	Stylizer = ContextServices.Stylizer,
})(DraggableTileList)

return DraggableTileList
