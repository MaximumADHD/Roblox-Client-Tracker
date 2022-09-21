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

local getFFlagMaterialManagerExpandablePaneHeaderColor = require(
	Plugin.Src.Flags.getFFlagMaterialManagerExpandablePaneHeaderColor
)

export type Props = {
	FillDirection: Enum.FillDirection?,
	Font: Enum.Font?,
	LabelColumnWidth: UDim?,
	LayoutOrder: number?,
	Padding: number?,
	Status: Enum.PropertyStatus?,
	StatusText: string?,
	Text: string?,
	TextXAlignment: Enum.TextXAlignment?,
	TextYAlignment: Enum.TextYAlignment?,
	VerticalAlignment: Enum.VerticalAlignment?,
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
	local fillDirection = props.FillDirection or style.FillDirection
	local labelColumnWidth = props.LabelColumnWidth
	local labelSize = UDim2.new(labelColumnWidth, style.LabelYSize)
	local imageSize = style.ImageSize
	local status = props.Status
	local statusText = props.StatusText
	local verticalAlignment = props.VerticalAlignment

	local padding = props.Padding
	if not padding then
		padding = if not status or (status and status == Enum.PropertyStatus.Ok)
			then {
				Left = imageSize.Width.Offset,
			}
			else nil
	end

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = if getFFlagMaterialManagerExpandablePaneHeaderColor() then verticalAlignment or Enum.VerticalAlignment.Top else Enum.VerticalAlignment.Top,
		Layout = Enum.FillDirection.Horizontal,
		LayoutOrder = props.LayoutOrder,
		Padding = padding,
	}, {
		StatusIcon = if status and status ~= Enum.PropertyStatus.Ok then 
			Roact.createElement(StatusIcon, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Size = imageSize,
				StatusText = statusText,
				Status = status,
			}) else nil,
		LabeledElement = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = fillDirection,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Spacing = 2,
			VerticalAlignment = if getFFlagMaterialManagerExpandablePaneHeaderColor() then verticalAlignment or Enum.VerticalAlignment.Top else Enum.VerticalAlignment.Top,
		}, {
			Label = Roact.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.Y,
				Font = if getFFlagMaterialManagerExpandablePaneHeaderColor() then props.Font else nil,
				LayoutOrder = 1,
				Size = labelSize,
				Text = props.Text,
				TextXAlignment = props.TextXAlignment or style.TextXAlignment,
				TextWrapped = true,
			}),
			ElementListItem = Roact.createElement(Pane, join({
				LayoutOrder = 2,
				AutomaticSize = Enum.AutomaticSize.XY,
				VerticalAlignment = if getFFlagMaterialManagerExpandablePaneHeaderColor() then verticalAlignment else nil,
			}, props.WrapperProps), (props:: any)[Roact.Children]),
		})
	})
end

LabeledElement = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(LabeledElement)

return LabeledElement
