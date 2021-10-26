--[[
	Contains the TextInputs half of the 9SliceEditor
	Creates TextLabels for Offsets, Left, Right, Top, Bottom text
	Creates four TextOffset components for Left, Right, Top, Bottom

	Props:
		pixelDimensions (Vector2) -- dimensions of the image in pixels
		sliceRect -- current SliceCenter ordered in { X0, X1, Y0, Y1 } format
		setSliceRect -- callback to change sliceRect in SliceEditor
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local TextOffset = require(Plugin.Src.Components.TextOffset)
local Constants = require(Plugin.Src.Util.Constants)
local Orientation = require(Plugin.Src.Util.Orientation)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local TextEditor = Roact.PureComponent:extend("TextEditor")

local LEFT = Orientation.Left.rawValue()
local RIGHT = Orientation.Right.rawValue()
local TOP = Orientation.Top.rawValue()
local BOTTOM = Orientation.Bottom.rawValue()

function TextEditor:createOffset(orientation)
	-- helper function to create TextOffsets
	local props = self.props
	local localization = props.Localization
	local labelText, layoutOrder

	if orientation == LEFT then
		labelText = localization:getText("TextEditor", "Left")
		layoutOrder = 1
	elseif orientation == RIGHT then
		labelText = localization:getText("TextEditor", "Right")
		layoutOrder = 2
	elseif orientation == TOP then
		labelText = localization:getText("TextEditor", "Top")
		layoutOrder = 3
	elseif orientation == BOTTOM then
		labelText = localization:getText("TextEditor", "Bottom")
		layoutOrder = 4
	end

	return Roact.createElement(TextOffset, {
		orientation = orientation,
		labelText = labelText,
		sliceRect = props.sliceRect,
		setSliceRect = props.setSliceRect,
		pixelDimensions = props.pixelDimensions,
		layoutOrder = layoutOrder,
	})
end

function TextEditor:render()
	-- Renders the TextEditor as a pane with labels for offset items
	local props = self.props
	local style = props.Stylizer
	local localization = props.Localization

	return Roact.createElement(Pane, {
		Position = props.position,
		Size = UDim2.fromOffset(Constants.TEXTEDITOR_XSIZE, Constants.TEXTEDITOR_YSIZE),
		Layout = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		Spacing = style.TextEditor.OffsetItemSpacing,
		LayoutOrder = props.layoutOrder,
	}, {
		OffsetLabel = Roact.createElement(TextLabel, {
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.fromScale(0.5, 0),
			Size = UDim2.new(1, 0, 0, Constants.TEXTSIZE),
			Text = localization:getText("TextEditor", "Offsets"),
			TextSize = Constants.TEXTSIZE,
			TextXAlignment = Enum.TextXAlignment.Center,
		}),
		LeftInput = self:createOffset(LEFT),
		RightInput = self:createOffset(RIGHT),
		TopInput = self:createOffset(TOP),
		BottomInput = self:createOffset(BOTTOM),
	})
end

TextEditor = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = ContextServices.Stylizer,
})(TextEditor)

return TextEditor
