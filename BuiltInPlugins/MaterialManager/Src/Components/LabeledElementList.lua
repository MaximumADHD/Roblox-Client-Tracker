--[[
	A list of items organized in two columns.

	Each item consists of a label and some content. The label column width is
	equal to the label text from theme.

	Required Props:
		callback GetText: ((key : string) -> string) gets the text for a label
		table Items: A list of items to display , simply a list of strings
		callback RenderContent: ((key : string) -> FrameworkTypes.RoactElement?) renders an element given a key

	Optional Props:
		number ColumnSpacing: The spacing between the columns of the list
		UDim LabelColumnWidth : The width of the label column
		number LayoutOrder: The layout order of the component
		number Padding: The padding around the entire list
		number Spacing: The spacing between elements in the list
		Enum.TextXAlignment TextXAlignment: The X alignment of the text in the label
		Enum.TextYAlignment TextYAlignment: The Y alignment of the text in the label
		callback GetWarning: ((key : string) -> (warning : string?)) The warning to show below
		callback GetError: ((key : string) -> (error : string?)) The error to show below
]]--

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local FrameworkTypes = require(Plugin.Packages._Index.DeveloperFramework.DeveloperFramework.Types)

local prioritize = Framework.Util.prioritize
local join = Framework.Dash.join

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local withAbsoluteSize = Framework.Wrappers.withAbsoluteSize

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local TextLabel = UI.Decoration.TextLabel
local Pane = UI.Pane

type _ListItemProps = {
	AbsoluteSize : Vector2,
	LabelColumnWidth : UDim,
	LayoutOrder : number,
	Spacing : number,
	Text : string,
	TextSize : number,
	TextXAlignment : Enum.TextXAlignment,
	TextYAlignment : Enum.TextYAlignment,
	VerticalSpacing : number,
	TextErrorOrWarningColor : Color3,
	WrapperProps : any,
	ErrorText : string?,
	WarningText : string?,
}

type SharedProps = {
	ColumnSpacing : number?,
	GetText : (key : string) -> string,
	Items : {string},
	Padding : number?,
	RenderContent : (key : string) -> FrameworkTypes.RoactElement?,
	Spacing : number?,
	TextXAlignment : Enum.TextXAlignment?,
	TextYAlignment : Enum.TextYAlignment?,
	GetWarning : ((key : string) -> string)?,
	GetError : ((key : string) -> string)?,
}

type ExternalProps = {
	LabelColumnWidth : UDim?,
	LayoutOrder : number?,
}

type InternalProps = {
	LabelColumnWidth : UDim,
	LayoutOrder : number,
	Stylizer : any,
}

export type Props = SharedProps & ExternalProps
type _Props = SharedProps & InternalProps

type _Style = {
	ItemSpacing : number,
	VerticalSpacing : number,
	ItemPaddingHorizontal : UDim,
	ErrorOrWarningTextSize : number,
	ErrorOrWarningColor : Color3,
}

-- LabeledElementListItem is a helper compoment internal to this module.
local LabeledElementListItem = Roact.PureComponent:extend("LabeledElementListItem")

LabeledElementListItem.defaultProps = {
	LabelColumnWidth = UDim.new(0, 100),
	LayoutOrder = 1,
	Spacing = 0,
	VerticalSpacing = 0,
	Text = "",
	TextSize = 16,
	TextXAlignment = Enum.TextXAlignment.Left,
	TextYAlignment = Enum.TextYAlignment.Top,
}

function LabeledElementListItem:render()
	local props : _ListItemProps = self.props

	local fillDirection = Enum.FillDirection.Horizontal
	local labelColumnWidth = props.LabelColumnWidth
	local labelSize = UDim2.new(labelColumnWidth, UDim.new(0, props.AbsoluteSize.Y))
	local errorOrWarningText = if props.ErrorText and props.ErrorText ~= "" then props.ErrorText else props.WarningText

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

		Content = Roact.createElement(Pane, join({
			AutomaticSize = Enum.AutomaticSize.XY,
			Spacing = props.VerticalSpacing,
			LayoutOrder = 2,
			Layout = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}, props.WrapperProps), {
			Pane = Roact.createElement(Pane, {
				LayoutOrder = 3,
				AutomaticSize = Enum.AutomaticSize.XY,
			}, (props :: any)[Roact.Children]),

			ErrorOrWarning = errorOrWarningText and Roact.createElement(Pane, {
				Size = UDim2.new(1, 0, 0, props.TextSize),
				LayoutOrder = 4,
			}, {
				TextErrorOrWarning = errorOrWarningText ~= "" and Roact.createElement(TextLabel, {
					Text = errorOrWarningText,
					TextSize = props.TextSize,
					TextColor = props.TextErrorOrWarningColor,
					AutomaticSize = Enum.AutomaticSize.XY,
				}) or nil,
			}) or nil
		})
	})
end

LabeledElementListItem = withAbsoluteSize(LabeledElementListItem)

local LabeledElementList = Roact.PureComponent:extend("LabeledElementList")

LabeledElementList.defaultProps = {
	LabelColumnWidth = UDim.new(0, 80),
	LayoutOrder = 1,
}

function LabeledElementList:render()
	local props : _Props = self.props
	local getText = props.GetText
	local items = props.Items
	local renderContent = props.RenderContent
	local labelColumnWidth = props.LabelColumnWidth
	local style : _Style = props.Stylizer.LabeledElementList

	local children = {}
	for index, item in ipairs(items) do
		local warning = if props.GetWarning then props.GetWarning(item) else nil
		local error = if props.GetError then props.GetError(item) else nil

		children[item] = Roact.createElement(LabeledElementListItem, {
			LabelColumnWidth = labelColumnWidth,
			LayoutOrder = index,
			Spacing = prioritize(props.ColumnSpacing, style.ItemPaddingHorizontal),
			Text = getText(item),
			TextXAlignment = props.TextXAlignment,
			TextYAlignment = props.TextYAlignment,
			WarningText = warning,
			ErrorText = error,
			TextSize = style.ErrorOrWarningTextSize,
			TextErrorOrWarningColor = style.ErrorOrWarningColor,
			VerticalSpacing = style.VerticalSpacing,
		}, {
			Content = renderContent(item),
		})
	end

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.XY,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
		Padding = props.Padding,
		Spacing = prioritize(props.Spacing, style.ItemSpacing),
	}, children)
end

LabeledElementList = withContext({
	Stylizer = Stylizer,
})(LabeledElementList)

return LabeledElementList
