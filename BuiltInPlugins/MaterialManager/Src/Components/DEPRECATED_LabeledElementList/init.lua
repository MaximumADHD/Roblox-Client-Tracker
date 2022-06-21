--[[
	A list of items organized in two columns.

	Each item consists of a label and some content. 

	Required Props:
		callback GetText: ((key: string) -> string) gets the text for a label
		table Items: A list of items to display , simply a list of strings
		callback RenderContent: ((key: string) -> FrameworkTypes.RoactElement?) renders an element given a key

	Optional Props:
		number ColumnSpacing: The spacing between the columns of the list
		UDim LabelColumnWidth: The width of the label column
		number LayoutOrder: The layout order of the component
		number Padding: The padding around the entire list
		number Spacing: The spacing between elements in the list
		Enum.TextXAlignment TextXAlignment: The X alignment of the text in the label
		Enum.TextYAlignment TextYAlignment: The Y alignment of the text in the label
		callback GetWarning: ((key: string) -> (warning: string?)) The warning to show below
		callback GetError: ((key: string) -> (error: string?)) The error to show below
]]--

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local FrameworkTypes = require(Plugin.Packages._Index.DeveloperFramework.DeveloperFramework.Types)

local prioritize = Framework.Util.prioritize

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane

local Components = Plugin.Src.Components
local LabeledElementListItem = require(Components.DEPRECATED_LabeledElementList.LabeledElementListItem)

export type Props = {
	ColumnSpacing: number?,
	GetText: (key: string) -> string,
	Items: {string},
	Padding: number?,
	RenderContent: (key: string) -> FrameworkTypes.RoactElement?,
	Spacing: number?,
	TextXAlignment: Enum.TextXAlignment?,
	TextYAlignment: Enum.TextYAlignment?,
	GetWarning: ((key: string) -> string)?,
	GetError: ((key: string) -> string)?,
	LabelColumnWidth: UDim?,
	LayoutOrder: number?,
}

type _Props = Props & {
	Stylizer: any,
}

type _Style = {
	ItemSpacing: number,
	VerticalSpacing: number,
	ItemPaddingHorizontal: UDim,
	ErrorOrWarningTextSize: number,
	ErrorOrWarningColor: Color3,
}

local LabeledElementList = Roact.PureComponent:extend("LabeledElementList")

LabeledElementList.defaultProps = {
	LabelColumnWidth = UDim.new(0, 80),
	LayoutOrder = 1,
}

function LabeledElementList:render()
	local props: _Props = self.props
	local getText = props.GetText
	local items = props.Items
	local renderContent = props.RenderContent
	local labelColumnWidth = props.LabelColumnWidth
	local style: _Style = props.Stylizer.LabeledElementList

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
