--[[
	A frame with a title offset to the left side.
	Used as a distinct vertical entry on a SettingsPage.

	Required Props:
		string Title: The title to the left of the content.

	Optional Props:
		string Style: The style of the title text label.
		table ForwardRef: An optional ref to pass to the underlying Frame.
		Enum.FillDirection FillDirection: The direction in which the content is filled.
		number LayoutOrder: The layoutOrder of this component.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		number ZIndex: The render index of this component.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Dash = require(Framework.Parent.Dash)
local omit = Dash.omit
local join = Dash.join

local Types = require(Framework.Types)

local Util = require(Framework.Util)
local prioritize = Util.prioritize

local UI = Framework.UI
local Pane = require(UI.Components.Pane)
local TextLabel = require(UI.Components.TextLabel)

local withForwardRef = require(Framework.Wrappers.withForwardRef)

local TitledFrame = Roact.PureComponent:extend("TitledFrame")

export type Props = {
	-- The title to the left of the content
	Title: string,
	-- The title width when displayed horizontally
	TitleWidth: number?,
} & Types.StandardProps
function TitledFrame:render()
	local props = self.props :: Props
	local style = props.Stylizer

	local spacing = UDim.new(0, style.Spacing)
	local layout = prioritize(props.FillDirection, style.FillDirection, Enum.FillDirection.Horizontal)

	local title = props.Title
	local titleWidth = if layout == Enum.FillDirection.Horizontal
		then prioritize(props.TitleWidth, style.TitleWidth)
		else nil

	local ref = props.ForwardRef
	local forwardProps = omit(props, {
		"ForwardRef",
		"Title",
		"TitleWidth",
		"FillDirection",
		"Style",
		Roact.Children,
	})

	return Roact.createElement(
		Pane,
		join({
			AutomaticSize = Enum.AutomaticSize.Y,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			Layout = layout,
			LayoutOrder = props.LayoutOrder,
			Spacing = spacing,
			[Roact.Ref] = ref,
		}, forwardProps),
		{
			Title = Roact.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.Y,
				TextXAlignment = Enum.TextXAlignment.Left,
				LayoutOrder = 1,
				Size = if titleWidth then UDim2.new(0, titleWidth, 0, 0) else UDim2.fromScale(1, 0),
				Style = props.Style or "Title",
				Text = title,
				TextWrapped = true,
			}),
			Content = Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.Y,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				Layout = Enum.FillDirection.Vertical,
				LayoutOrder = 2,
				Spacing = spacing,
				Size = if titleWidth then UDim2.new(1, -titleWidth, 0, 0) else UDim2.fromScale(1, 0),
				ZIndex = props.ZIndex,
			}, props[Roact.Children]),
		}
	)
end

TitledFrame = withContext({
	Stylizer = ContextServices.Stylizer,
})(TitledFrame)

return withForwardRef(TitledFrame)
