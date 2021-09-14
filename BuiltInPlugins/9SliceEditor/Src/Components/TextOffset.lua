--[[
	Component for Left, Right, Top, and Bottom TextInput boxes in the TextEditor.
	Clamps values so that values do not exceed image bounds or other drag lines.
	Also checks that inputs are integer values.

	Props:
		orientation (int) -- specifies which TextInput: left = 1, right = 2, top = 3, bottom = 4
		pixelDimensions (Vector2) -- dimensions of the image in pixels
		sliceRect -- current SliceCenter ordered in { X0, X1, Y0, Y1 } format
		setSliceRect -- callback to change sliceRect in SliceEditor
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

local UI = Framework.UI
local TextInput = UI.TextInput

local TextOffset = Roact.PureComponent:extend("TextOffset")

local LEFT = Orientation.Left.rawValue()
local RIGHT = Orientation.Right.rawValue()
local TOP = Orientation.Top.rawValue()
local BOTTOM = Orientation.Bottom.rawValue()

local function SliceToOffset (slice, pixelSize)
	--[[
		given the pixelDimensions of the image and a slice = {X0, Y0, X1, Y1}
		returns corresponding rect of offsets = {left, right, top, bottom}
	]]--
	local LEFT = Orientation.Left.rawValue()
	local RIGHT = Orientation.Right.rawValue()
	local TOP = Orientation.Top.rawValue()
	local BOTTOM = Orientation.Bottom.rawValue()

	local left = slice[LEFT]
	local right = pixelSize.X - slice[RIGHT]
	local top = slice[TOP]
	local bottom = pixelSize.Y - slice[BOTTOM]
	return {left, right, top, bottom}
end

function TextOffset:init(props)
	local pixelDimensions = props.pixelDimensions
	local setSliceRect= props.setSliceRect

	self.onLeftFocusLost = function(_, textBox)
		local sliceRect = self.props.sliceRect
		local offsetRect = SliceToOffset(sliceRect, pixelDimensions)
		local offsetValue = offsetRect[LEFT] -- value in Offset form
		local numberInput: number = tonumber(textBox.Text)

		if numberInput then -- check that input is a number
			local newText = math.clamp(numberInput, 0, sliceRect[RIGHT])
			newText = math.round(newText)
			local slice = {newText, sliceRect[RIGHT], sliceRect[TOP], sliceRect[BOTTOM]}
			setSliceRect(slice, true)
			textBox.Text = ("%d"):format(newText)
		else
			textBox.Text = ("%d"):format(offsetValue) -- if not number, go to last value
		end
	end

	self.onRightFocusLost = function(_, textBox)
		local sliceRect = self.props.sliceRect
		local offsetRect = SliceToOffset(sliceRect, pixelDimensions)
		local offsetValue = offsetRect[RIGHT]
		local numberInput: number = tonumber(textBox.Text)

		if numberInput then
			local newText = math.clamp(numberInput, 0, pixelDimensions.X - sliceRect[LEFT])
			newText = math.round(newText)
			local sliceValue = pixelDimensions.X - newText
			local slice = {sliceRect[LEFT], sliceValue, sliceRect[TOP], sliceRect[BOTTOM]}
			setSliceRect(slice, true)
			textBox.Text = ("%d"):format(newText)
		else
			textBox.Text = ("%d"):format(offsetValue)
		end
	end

	self.onTopFocusLost = function(_, textBox)
		local sliceRect = self.props.sliceRect
		local offsetRect = SliceToOffset(sliceRect, pixelDimensions)
		local offsetValue = offsetRect[TOP]
		local numberInput: number = tonumber(textBox.Text)

		if numberInput then
			local newText = math.clamp(numberInput, 0, sliceRect[BOTTOM])
			newText = math.round(newText)
			local slice = {sliceRect[LEFT], sliceRect[RIGHT], newText, sliceRect[BOTTOM]}
			setSliceRect(slice, true)
			textBox.Text = ("%d"):format(newText)
		else
			textBox.Text = ("%d"):format(offsetValue)
		end
	end

	self.onBottomFocusLost = function(_, textBox)
		local sliceRect = self.props.sliceRect
		local offsetRect = SliceToOffset(sliceRect, pixelDimensions)
		local offsetValue = offsetRect[BOTTOM]
		local numberInput: number = tonumber(textBox.Text)

		if numberInput then
			local newText = math.clamp(numberInput, 0, pixelDimensions.Y - sliceRect[TOP])
			newText = math.round(newText)
			local sliceValue = pixelDimensions.Y - newText
			local slice = {sliceRect[LEFT], sliceRect[RIGHT], sliceRect[TOP], sliceValue}
			setSliceRect(slice, true)
			textBox.Text = ("%d"):format(newText)
		else
			textBox.Text = ("%d"):format(offsetValue)
		end
	end
end

function TextOffset:render()
	-- Renders the input text boxes and clamps values based on orientation
	local props = self.props
	local pixelDimensions = props.pixelDimensions
	local sliceRect = props.sliceRect
	local orientation = props.orientation
	local TextInputStyle = props.Stylizer.TextInput

	local yPosition, onFocusLost
	local offsetRect = SliceToOffset(sliceRect, pixelDimensions)
	local offsetValue = offsetRect[orientation]

	if orientation == LEFT then
		yPosition = Constants.LEFTINPUT_YPOSITION
		onFocusLost = self.onLeftFocusLost

	elseif orientation == RIGHT then
		yPosition = Constants.RIGHTINPUT_YPOSITION
		onFocusLost = self.onRightFocusLost

	elseif orientation == TOP then
		yPosition = Constants.TOPINPUT_YPOSITION
		onFocusLost = self.onTopFocusLost

	elseif orientation == BOTTOM then
		yPosition = Constants.BOTTOMINPUT_YPOSITION
		onFocusLost = self.onBottomFocusLost
	end

	return Roact.createElement(TextInput, {
		AnchorPoint = Vector2.new(1, 0),
		Enabled = true,
		Size = TextInputStyle.Size,
		Position = UDim2.new(1, 0, 0, yPosition),
		Style = TextInputStyle.Style,
		Text = ("%d"):format(offsetValue),
		TextXAlignment = Enum.TextXAlignment.Center,
		OnFocusLost = onFocusLost,
	})
end

TextOffset = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = ContextServices.Stylizer,
})(TextOffset)

return TextOffset
