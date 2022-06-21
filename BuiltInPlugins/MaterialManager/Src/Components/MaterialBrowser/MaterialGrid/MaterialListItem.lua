local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Button = UI.Button
local Container = UI.Container
local Image = UI.Decoration.Image
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel
local Tooltip = UI.Tooltip

local Components = Plugin.Src.Components
local MaterialPreview = require(Components.MaterialPreview)
local StatusIcon = require(Components.StatusIcon)

local Util = Plugin.Src.Util
local CalculateFillWidth = require(Util.CalculateFillWidth)
local MaterialServiceController = require(Util.MaterialServiceController)

export type Props = {
	ApplyToSelection: () -> (),
	Hover: boolean?,
	LayoutOrder: number?,
	Material: _Types.Material,
	MaterialDescription: string,
	MaterialName: string,
	MenuHover: boolean?,
	OnClick: (material: _Types.Material) -> (),
	OnMouseEnter: (() -> ())?,
	OnMouseLeave: (() -> ())?,
	Selected: boolean?,
	Status: Enum.PropertyStatus?,
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	MaterialController: any,
	Stylizer: any,
}

type _Style = {
	ApplyIcon: _Types.Image,
	ApplyIconPosition: UDim2,
	ButtonSize: UDim2,
	Height: number,
	IconSize: UDim2,
	MaterialVariantIcon: _Types.Image,
	Spacing: number,
	TextSize: number,
}

local MaterialListItem = Roact.PureComponent:extend("MaterialListItem")

function MaterialListItem:render()
	local props: _Props = self.props

	local localization = props.Localization
	local style: _Style = props.Stylizer.MaterialListItem

	local applyToSelection = props.ApplyToSelection
	local hover = props.Hover
	local material = props.Material
	local materialDescription = props.MaterialDescription
	local materialName = props.MaterialName
	local materialVariant = material.MaterialVariant
	local materialType = material.Material
	local selected = props.Selected
	local status = props.Status

	local height = style.Height
	local textSize = style.TextSize

	local showApplyToSelection = hover
	local showIcon = if materialVariant then true else false
	local showStatus = if not materialVariant then status and status ~= Enum.PropertyStatus.Ok else false

	local widths = {
		UDim.new(0, height),
		if showIcon then style.IconSize.X else UDim.new(0, 0),
		if showStatus then style.IconSize.X else UDim.new(0, 0),
		if showApplyToSelection then style.ButtonSize.X else UDim.new(0, 0),
	}
	local labelSize = UDim2.new(CalculateFillWidth(widths, 0, style.Spacing), UDim.new(0, height))

	return Roact.createElement(Button, {
		DisableHover = props.MenuHover,
		LayoutOrder = props.LayoutOrder,
		OnClick = props.OnClick,
		OnMouseEnter = props.OnMouseEnter,
		OnMouseLeave = props.OnMouseLeave,
		Style = if selected then "RoundActive" else "Round",
		Size = UDim2.fromScale(1, 1),
	}, {
		Content = Roact.createElement(Pane, {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Horizontal,
			Spacing = style.Spacing,
			Size = UDim2.new(1, -10, 1, 0),
		}, {
			MaterialPreview = Roact.createElement(MaterialPreview, {
				Clone = false,
				LayoutOrder = 1,
				Material = materialType,
				MaterialVariant = materialVariant,
				Size = UDim2.fromOffset(height, height),
				Static = true,
			}),
			NameLabel = Roact.createElement(Pane, {
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				Layout = Enum.FillDirection.Vertical,
				LayoutOrder = 2,
				Size = labelSize,
			}, {
				Name = Roact.createElement(TextLabel, {
					Size = UDim2.fromScale(1, 1),
					Text = materialName,
					TextSize = textSize,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
					TextWrapped = false,
				})
			}),
			ApplyToSelection = if hover then
				Roact.createElement(Button, {
					LayoutOrder = 3,
					OnClick = applyToSelection,
					Position = style.ApplyIconPosition,
					Size = style.ButtonSize,
					Style = "Round",
				}, {
					Image = Roact.createElement(Image, {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.fromScale(0.5, 0.5),
						Size = style.IconSize,
						Style = style.ApplyIcon,
					}),
					Tooltip = Roact.createElement(Tooltip, {
						Text = localization:getText("TopBar", "Apply"),
					})
				})
				else nil,
			MaterialVariantIcon = if materialVariant then
				Roact.createElement(Container, {
					LayoutOrder = 4,
					Size = style.IconSize,
				}, {
					Image = Roact.createElement(Image, {
						Style = style.MaterialVariantIcon,
					}),
					Tooltip = Roact.createElement(Tooltip, {
						Text = materialDescription,
					})
				})
				else nil,
			StatusIcon = if status and status ~= Enum.PropertyStatus.Ok then
				Roact.createElement(StatusIcon, {
					LayoutOrder = 5,
					Material = material,
					Size = style.IconSize,
					Status = status,
				})
				else nil
		}),
	})
end

return withContext({
	Analytics = Analytics,
	Localization = Localization,
	MaterialController = MaterialServiceController,
	Stylizer = Stylizer,
})(MaterialListItem)
