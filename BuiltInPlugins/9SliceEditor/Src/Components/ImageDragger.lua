--[[
	Component for Left, Right, Top, and Bottom draggers in the ImageEditor.
	Clamps values so that values do not exceed image bounds or other drag lines.
	Vertical draggers are Left and Right, horizontal draggers are Top and Bottom.

	Props:
		orientation (int) -- specifies which TextInput: LEFT = 1, RIGHT = 2, TOP = 3, BOTTOM = 4
		pixelDimensions (Vector2) -- dimensions of the image in pixels
		sliceRect -- current SliceCenter ordered in { X0, X1, Y0, Y1 } format
		onDragBegin = (function) when onInputBegan on draggers
		onDragging = (function) when onInputChanged on draggers
		onDragEnd = (function) when onInputEnded on draggers
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Constants = require(Plugin.Src.Util.Constants)
local Orientation = require(Plugin.Src.Util.Orientation)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local ImageDragger = Roact.PureComponent:extend("ImageDragger")

local LEFT = Orientation.Left.rawValue()
local RIGHT = Orientation.Right.rawValue()
local TOP = Orientation.Top.rawValue()
local BOTTOM = Orientation.Bottom.rawValue()

local zIndexMap = {
	[LEFT] = 1,
	[RIGHT] = 2,
	[TOP] = 3,
	[BOTTOM] = 4,
}

function ImageDragger:init(props)
	self:setState({
		dragging = false,
	})

	self.draggerInstanceRef = Roact.createRef()

	self.onInputBegan = function(obj, input)
		local orientation = self.props.orientation

		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self:setState({
				dragging = true,
			})
			local mousePosition = Vector2.new(input.Position.X, input.Position.Y)

			local draggerPosition = Vector2.new(obj.Position.X.Scale, obj.Position.Y.Scale)
			props.onDragBegin(obj, orientation, mousePosition, draggerPosition)
		elseif input.UserInputType == Enum.UserInputType.MouseMovement then
			self.props.addPriorityDragCandidate(orientation, obj.ZIndex, obj)
		end
	end

	self.onHandleInputChanged = function(obj, input)
		local distance
		local orientation = self.props.orientation
		local draggerInstance = self.draggerInstanceRef:getValue()
		if orientation == LEFT or orientation == RIGHT then
			distance = math.abs(draggerInstance.AbsolutePosition.X + Constants.DRAGGER_WIDTH/2 - input.Position.X)
		elseif orientation == TOP or orientation == BOTTOM then
			distance = math.abs(draggerInstance.AbsolutePosition.Y + Constants.DRAGGER_WIDTH/2 - input.Position.Y)
		end
		self.props.addDragCandidate(self.props.orientation, distance, draggerInstance)
	end

	self.onInputBeganOnLowPriorityHandles = function(obj, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			local mousePosition = Vector2.new(input.Position.X, input.Position.Y)
			self.props.startUncertainDrag(mousePosition)

		elseif input.UserInputType == Enum.UserInputType.MouseMovement then
			self.onHandleInputChanged(obj, input)
		end
	end

	self.onInputChanged = function(_, input)
		local orientation = self.props.orientation

		if self.state.dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			local inputPosition = Vector2.new(input.Position.X, input.Position.Y)
			props.onDragging(inputPosition, orientation)
		end
	end

	self.onInputEnded = function(_, input)
		local orientation = self.props.orientation

		props.onDragEnd(input, orientation)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self:setState({
				dragging = false,
			})
		elseif input.UserInputType == Enum.UserInputType.MouseMovement then
			self.props.removePriorityDragCandidate(orientation)
		end
	end

	self.onHandleMouseLeave = function(obj, x, y)
		self.props.removeDragCandidate(self.props.orientation)
	end
end

function ImageDragger:render()
	-- Renders a dragger on top of the image and checks the orientation
	local props = self.props
	local sliceRect = props.sliceRect
	local pixelDimensions = props.pixelDimensions
	local orientation = props.orientation
	local style = props.Stylizer
	local isHovering = props.isHovering

	local sliceValue = math.round(sliceRect[orientation])
	local draggerImage, draggerPosition, draggerSize
	local handle1Position, handle2Position, handleSize

	if orientation == LEFT or orientation == RIGHT then
		local sideOffset = sliceValue / pixelDimensions.X
		sideOffset = math.clamp(sideOffset, 0, 1)
		draggerImage = Constants.IMAGES.VERTICAL_DRAGGER
		draggerPosition = UDim2.fromScale(sideOffset, 0.5)
		draggerSize = UDim2.fromOffset(Constants.DRAGGER_WIDTH, Constants.DRAGGER_HEIGHT)
		handle1Position = UDim2.new(0.5, 0, 0, style.EdgeHandleInsetPx)
		handle2Position = UDim2.new(0.5, 0, 1, -style.EdgeHandleInsetPx)
		handleSize = style.EdgeHandleSize

	elseif orientation == TOP or orientation == BOTTOM then
		local sideOffset = sliceValue / pixelDimensions.Y
		sideOffset = math.clamp(sideOffset, 0, 1)
		draggerImage = Constants.IMAGES.HORIZONTAL_DRAGGER
		draggerPosition = UDim2.fromScale(0.5, sideOffset)
		draggerSize = UDim2.fromOffset(Constants.DRAGGER_HEIGHT, Constants.DRAGGER_WIDTH)
		handle1Position = UDim2.new(0, style.EdgeHandleInsetPx, 0.5, 0)
		handle2Position = UDim2.new(1, -style.EdgeHandleInsetPx, 0.5, 0)
		handleSize = UDim2.new(style.EdgeHandleSize.Y, style.EdgeHandleSize.X)
	end

	local hoverColor = Color3.new(0.8, 0.8, 1)

	return Roact.createElement("ImageButton", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		AutoButtonColor = false,
		Image = draggerImage,
		Position = draggerPosition,
		Size = draggerSize,
		BorderSizePixel = 0,
		ZIndex = 5 + zIndexMap[orientation],
		ImageColor3 = isHovering and hoverColor or Color3.new(1, 1, 1),
		[Roact.Event.InputBegan] = self.onInputBegan,
		[Roact.Event.InputChanged] = self.onInputChanged,
		[Roact.Event.InputEnded] = self.onInputEnded,
		[Roact.Ref] = self.draggerInstanceRef,
	}, {
		handle1 = handle1Position and Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = handle1Position,
			Size = handleSize,
			BorderSizePixel = 0,
			ZIndex = 1 + zIndexMap[orientation],
			BackgroundColor3 = Color3.new(0, 1, 0),
			BackgroundTransparency = 1,
			[Roact.Event.InputBegan] = self.onInputBeganOnLowPriorityHandles,
			[Roact.Event.InputChanged] = self.onHandleInputChanged,
			[Roact.Event.MouseLeave] = self.onHandleMouseLeave,
		}),
		handle2 = handle1Position and Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = handle2Position,
			Size = handleSize,
			BorderSizePixel = 0,
			ZIndex = 1 + zIndexMap[orientation],
			BackgroundColor3 = Color3.new(0, 1, 0),
			BackgroundTransparency = 1,
			[Roact.Event.InputBegan] = self.onInputBeganOnLowPriorityHandles,
			[Roact.Event.InputChanged] = self.onHandleInputChanged,
			[Roact.Event.MouseLeave] = self.onHandleMouseLeave,
		}),
	})
end

ImageDragger = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = ContextServices.Stylizer,
	Mouse = ContextServices.Mouse,
})(ImageDragger)

return ImageDragger
