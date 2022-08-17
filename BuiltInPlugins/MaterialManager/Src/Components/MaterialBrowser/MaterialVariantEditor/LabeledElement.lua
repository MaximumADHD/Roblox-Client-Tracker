local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local join = Framework.Dash.join
local UI = Framework.UI
local TextLabel = UI.Decoration.TextLabel
local Pane = UI.Pane
local LayoutOrderIterator = Framework.Util.LayoutOrderIterator

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local StatusIcon = require(Plugin.Src.Components.StatusIcon)

export type Props = {
	LabelColumnWidth: UDim?,
	LayoutOrder: number?,
	Status: Enum.PropertyStatus?,
	StatusText: string?,
	Text: string?,
	TextXAlignment: Enum.TextXAlignment?,
	TextYAlignment: Enum.TextYAlignment?,
	WrapperProps: any?,
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	FillDirection: Enum.FillDirection,
	ImageSize: UDim2,
	LabelYSize: UDim,
	TextXAlignment: Enum.TextXAlignment,
	TextYAlignment: Enum.TextYAlignment,
}

local LabeledElement = Roact.PureComponent:extend("LabeledElement")

function LabeledElement:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.LabeledElement

	local layoutOrderIterator = LayoutOrderIterator.new()
	local fillDirection = style.FillDirection
	local labelColumnWidth = props.LabelColumnWidth
	local labelSize = UDim2.new(labelColumnWidth, style.LabelYSize)
	local imageSize = style.ImageSize
	local status = props.Status
	local statusText = props.StatusText

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		Layout = fillDirection,
		LayoutOrder = props.LayoutOrder,
		Padding = if not status or (status and status == Enum.PropertyStatus.Ok) then {
			Left = imageSize.Width.Offset,
		} else nil,
	}, {
		StatusIcon = if status and status ~= Enum.PropertyStatus.Ok then 
			Roact.createElement(StatusIcon, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Size = imageSize,
				StatusText = statusText,
				Status = status,
			}) else nil,
		Label = Roact.createElement(TextLabel, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = labelSize,
			Text = props.Text,
			TextXAlignment = props.TextXAlignment or style.TextXAlignment,
		}),
		ElementListItem = Roact.createElement(Pane, join({
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			AutomaticSize = Enum.AutomaticSize.XY,
		}, props.WrapperProps), (props:: any)[Roact.Children]),
	})
end

LabeledElement = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(LabeledElement)

return LabeledElement
