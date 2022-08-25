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
local TruncatedTextLabel = UI.TruncatedTextLabel
local Tooltip = UI.Tooltip

local Components = Plugin.Src.Components
local MaterialPreview = require(Components.MaterialPreview)
local StatusIcon = require(Components.StatusIcon)

local TILE_TEXT_THRESHOLD = 100

export type Props = {
	ApplyToSelection: () -> (),
	Hover: boolean?,
	LayoutOrder: number?,
	Material: _Types.Material,
	MaterialDescription: string,
	MaterialName: string,
	MaterialTileSize: number,
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
	Stylizer: any,
}

type _Style = {
	ApplyIcon: _Types.Image,
	ApplyIconPosition: UDim2,
	ApplyIconAnchorPoint: Vector2,
	ButtonSize: UDim2,
	Gradient: string,
	GradientHover: string,
	GradientPosition: UDim2,
	GradientSize: UDim2,
	IconSize: UDim2,
	MaterialVariantIcon: _Types.Image,
	MaterialVariantIconPosition: UDim2,
	MaterialVariantIconAnchorPoint: Vector2,
	Padding: number,
	StatusIconPosition: UDim2,
	TextSize: number,
}

local MaterialTileItem = Roact.PureComponent:extend("MaterialTileItem")

function MaterialTileItem:render()
	local props: _Props = self.props

	local localization = props.Localization
	local style: _Style = props.Stylizer.MaterialTileItem

	local applyToSelection = props.ApplyToSelection
	local hover = props.Hover
	local material = props.Material
	local materialDescription = props.MaterialDescription
	local materialName = props.MaterialName
	local materialVariant = material.MaterialVariant
	local materialTileSize = props.MaterialTileSize
	local materialType = material.Material
	local selected = props.Selected
	local status = props.Status

	local size = UDim2.fromOffset(materialTileSize, materialTileSize)
	local padding = style.Padding
	local textSize = style.TextSize

	return Roact.createElement(Button, {
		DisableHover = props.MenuHover,
		LayoutOrder = props.LayoutOrder,
		OnClick = props.OnClick,
		OnMouseEnter = props.OnMouseEnter,
		OnMouseLeave = props.OnMouseLeave,
		Style = if selected then "RoundActive" else "Round",
		Size = size,
	}, {
		Content = Roact.createElement(Container, {
			Size = size,
		}, {
			MaterialPreview = Roact.createElement(MaterialPreview, {
				Clone = false,
				Hover = hover,
				LayoutOrder = 1,
				Material = materialType,
				MaterialVariant = materialVariant,
				Position = UDim2.fromOffset(0, 0),
				Size = size,
				Static = true,
			}),
			Gradient = if materialTileSize >= TILE_TEXT_THRESHOLD then
				Roact.createElement(Pane, {
					AnchorPoint = Vector2.new(0.5, 1),
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					Layout = Enum.FillDirection.Vertical,
					LayoutOrder = 2,
					Position = style.GradientPosition,
					Size = style.GradientSize,
					ZIndex = 2,
				}, {
					Gradient = Roact.createElement(Image, {
						Size = UDim2.fromScale(1, 1),
						Style = {
							Image = if hover then style.GradientHover else style.Gradient,
						}
					})
				}) else nil,
			NameLabel = if materialTileSize >= TILE_TEXT_THRESHOLD then
				Roact.createElement(Pane, {
					AnchorPoint = Vector2.new(0, 1),
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					Layout = Enum.FillDirection.Vertical,
					LayoutOrder = 2,
					Position = UDim2.new(0, padding, 1, -padding),
					Size = if materialVariant then
					UDim2.new(1, (-2 * padding) - style.IconSize.X.Offset, 0, textSize)
					else
					UDim2.new(1, -2 * padding, 0,textSize),
					ZIndex = 3,
				}, {
					Name = Roact.createElement(TruncatedTextLabel, {
						Size = UDim2.fromScale(1, 1),
						Text = materialName,
						TextSize = textSize,
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
						TextWrapped = false,
					})
				}) else nil
		}),
		MaterialVariantIcon = if material.MaterialVariant then
			Roact.createElement(Container, {
				AnchorPoint = style.MaterialVariantIconAnchorPoint,
				LayoutOrder = 2,
				Position = style.MaterialVariantIconPosition,
				Size = style.IconSize,
				ZIndex = 2,
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
				LayoutOrder = 3,
				Material = material,
				Position = style.StatusIconPosition,
				Size = style.IconSize,
				Status = status,
				ZIndex = 2,
			})
			else nil,
		ApplyToSelection = if hover then
			Roact.createElement(Button, {
				AnchorPoint = style.ApplyIconAnchorPoint,
				LayoutOrder = 4,
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
			else nil
	})
end

return withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(MaterialTileItem)
