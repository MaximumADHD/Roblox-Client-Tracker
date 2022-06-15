-- DO NOT Copy paste this into your own plugin, this is meant for Material Manager. If you want to use this, contact skuhne first

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local Stylizer = Framework.Style.Stylizer

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel
local TruncatedTextLabel = UI.TruncatedTextLabel

export type Props = {
	LayoutOrder: number?,
	Name: string,
	Text: string,
}

type _Props = Props & {
	Stylizer: any,
}

type _Style = {
	LabelSize: UDim2,
	RowSize: UDim2,
	TextSize: UDim2,
}

local LabeledString = Roact.PureComponent:extend("LabeledString")

function LabeledString:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.LabeledString

	local layoutOrder = props.LayoutOrder
	local name = props.Name
	local text = props.Text

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Horizontal,
		LayoutOrder = layoutOrder,
		Size = style.RowSize,
	}, {
		Label = Roact.createElement(TextLabel, {
			LayoutOrder = 1,
			Size = style.LabelSize,
			Text = name,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
		}),
		Text = Roact.createElement(TruncatedTextLabel, {
			LayoutOrder = 2,
			Size = style.TextSize,
			Text = text,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
		}),
	})
end

return withContext({
	Stylizer = Stylizer,
})(LabeledString)
