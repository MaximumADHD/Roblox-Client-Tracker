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
local MouseCursorUtil = require(Plugin.Src.Util.MouseCursorUtil)
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

function ImageDragger:init(props)
	self:setState({
		dragging = false,
	})

	self.onInputBegan = function(obj, input)
		local orientation = self.props.orientation

		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self:setState({
				dragging = true,
			})
			local mousePosition = Vector2.new(input.Position.X, input.Position.Y)
			local draggerPosition = Vector2.new(obj.Position.X.Scale, obj.Position.Y.Scale)
			props.onDragBegin(obj, orientation, mousePosition, draggerPosition)
		end

		--set mouse cursor to dragging arrows
		if MouseCursorUtil.currentIconPath == "" then
			if orientation == LEFT or orientation == RIGHT then
				MouseCursorUtil.setMouseCursor(Constants.MOUSE_CURSORS.EW)

			elseif orientation == TOP or orientation == BOTTOM then
				MouseCursorUtil.setMouseCursor(Constants.MOUSE_CURSORS.NS)
			end
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
		end
	end
end

function ImageDragger:render()
	-- Renders a dragger on top of the image and checks the orientation
	local props = self.props
	local sliceRect = props.sliceRect
	local pixelDimensions = props.pixelDimensions
	local orientation = props.orientation

	local sliceValue = math.round(sliceRect[orientation])
	local draggerImage, draggerPosition, draggerSize

	if orientation == LEFT or orientation == RIGHT then
		local sideOffset = sliceValue / pixelDimensions.X
		sideOffset = math.clamp(sideOffset, 0, 1)
		draggerImage = Constants.IMAGES.VERTICAL_DRAGGER
		draggerPosition = UDim2.fromScale(sideOffset, 0.5)
		draggerSize = UDim2.fromOffset(Constants.DRAGGER_WIDTH, Constants.DRAGGER_HEIGHT)

	elseif orientation == TOP or orientation == BOTTOM then
		local sideOffset = sliceValue / pixelDimensions.Y
		sideOffset = math.clamp(sideOffset, 0, 1)
		draggerImage = Constants.IMAGES.HORIZONTAL_DRAGGER
		draggerPosition = UDim2.fromScale(0.5, sideOffset)
		draggerSize = UDim2.fromOffset(Constants.DRAGGER_HEIGHT, Constants.DRAGGER_WIDTH)
	end

	return Roact.createElement("ImageButton", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		Image = draggerImage,
		Position = draggerPosition,
		Size = draggerSize,
		[Roact.Event.InputBegan] = self.onInputBegan,
		[Roact.Event.InputChanged] = self.onInputChanged,
		[Roact.Event.InputEnded] = self.onInputEnded,
	})
end

ImageDragger = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = ContextServices.Stylizer,
})(ImageDragger)

return ImageDragger
