--[[
	A list of items organized in two columns.

	Each item consists of a label and some content. The label column width is
	equal to the label text from theme.

	Required Props:
		table Items: A list of items to display. Example: { Key = "", Text = "", Content = Roact.createElement(...) }.

	Optional Props:
		number LayoutOrder: The layout order of the component.
]]--

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local FrameworkTypes = require(Plugin.Packages._Index.DeveloperFramework.DeveloperFramework.Types)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local TextLabel = UI.Decoration.TextLabel
local Pane = UI.Pane

export type Item = {
	Key : string,
	Text : string,
	Content : FrameworkTypes.RoactElement,
}

type _ExternalProps = {
	Items : {Item},
	LayoutOrder : number?,
}

type _InternalProps = {
	ContentPadding : UDim,
	LabelColumnWidth : UDim,
	LayoutOrder : number,
	Spacing : number,
	Text : string,
	TextXAlignment : Enum.TextXAlignment,
	TextYAlignment : Enum.TextYAlignment,
}

export type Props = _ExternalProps & _InternalProps

type _Props = Props & {
	Stylizer : any,
}

type _Style = {
	ItemContentPadding : number,
	ItemPaddingHorizontal : UDim,
	TextWidth : UDim,
}

-- LabeledElementListItem is a helper compoment internal to this module.
local LabeledElementListItem = Roact.PureComponent:extend("LabeledElementListItem")

LabeledElementListItem.defaultProps = {
	ContentPadding = UDim.new(0, 0),
	LabelColumnWidth = UDim.new(0, 100),
	LayoutOrder = 1,
	Spacing = 0,
	Text = "Label",
	TextXAlignment = Enum.TextXAlignment.Left,
	TextYAlignment = Enum.TextYAlignment.Top,
}

function LabeledElementListItem:render()
	local props : _Props = self.props

	local fillDirection = Enum.FillDirection.Horizontal
	local labelColumnWidth = props.LabelColumnWidth

	local labelSize = UDim2.new(labelColumnWidth, UDim.new(0, 22))

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		Spacing = props.Spacing,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		Layout = fillDirection,
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = Roact.createElement(TextLabel, {
			LayoutOrder = 1,
			Size = labelSize,
			Text = props.Text,
			TextXAlignment = props.TextXAlignment,
			TextYAlignment = props.TextYAlignment,
		}),

		Content = Roact.createElement(Pane, { 
			AutomaticSize = Enum.AutomaticSize.XY,
			Spacing = props.ContentPadding,
			LayoutOrder = 2,
		}, (props :: any)[Roact.Children]),
	})
end

local LabeledElementList = Roact.PureComponent:extend("LabeledElementList")

LabeledElementList.defaultProps = {
	Items = {},
	LayoutOrder = 1,
}

function LabeledElementList:render()
	local props : _Props = self.props
	local items = props.Items
	local style : _Style = props.Stylizer.LabeledElementList

	local children = {}
	for index, item in ipairs(items) do
		children[item.Key] = Roact.createElement(LabeledElementListItem, {
			ContentPadding = style.ItemContentPadding,
			LabelColumnWidth = style.TextWidth,
			LayoutOrder = index,
			Spacing = style.ItemPaddingHorizontal,
			Text = item.Text,
		}, {
			Content = item.Content,
		})
	end

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.XY,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
	}, children)
end


LabeledElementList = withContext({
	Stylizer = Stylizer,
})(LabeledElementList)

return LabeledElementList
