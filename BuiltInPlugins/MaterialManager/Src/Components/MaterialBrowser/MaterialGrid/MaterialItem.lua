local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
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
local TruncatedTextLabel = UI.TruncatedTextLabel
local Tooltip = UI.Tooltip

local Components = Plugin.Src.Components
local MaterialPreview = require(Components.MaterialPreview)
local StatusIcon = require(Components.StatusIcon)

local Constants = Plugin.Src.Resources.Constants
local getFullMaterialType = require(Constants.getFullMaterialType)
local getMaterialName = require(Constants.getMaterialName)

local Util = Plugin.Src.Util
local MaterialController = require(Util.MaterialController)
local ApplyToSelection = require(Util.ApplyToSelection)
local CalculateFillWidth = require(Util.CalculateFillWidth)

local Flags = Plugin.Src.Flags
local getFFlagMaterialManagerGlassNeonForceField = require(Flags.getFFlagMaterialManagerGlassNeonForceField)

local TILE_TEXT_THRESHOLD = 100

export type Props = {
	Item: _Types.Material,
	LayoutOrder: number?,
	OnClick: (material: _Types.Material) -> (),
	Padding: number?,
	SetUpdate: ((item: _Types.Material, layoutOrder: number?, property: string) -> ()),
	Size: UDim2?,
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Material: _Types.Material,
	MaterialController: any,
	MaterialTileSize: number,
	MenuHover: boolean,
	Size: number,
	Stylizer: any,
	ViewType: string,
}

type _Style = {
	ApplyIcon: _Types.Image,
	ApplyIconPosition: UDim2,
	ApplyIconAnchorPoint: Vector2,
	ButtonSize: UDim2,
	Gradient: string,
	GradientHover: string,
	GridPadding: number,
	IconSize: UDim2,
	ListHeight: number,
	ListPadding: number,
	MaterialVariantIcon: _Types.Image,
	MaterialVariantIconPosition: UDim2,
	MaterialVariantIconAnchorPoint: Vector2,
	Padding: number,
	Spacing: number,
	StatusIconPosition: UDim2,
	TextSize: number,
}

local MaterialItem = Roact.PureComponent:extend("MaterialItem")

function MaterialItem:init()
	self.onClick = function()
		local props : _Props = self.props

		props.OnClick(props.Item)
	end

	self.onMouseEnter = function()
		self:setState({
			hover = true
		})
	end

	self.onMouseLeave = function()
		self:setState({
			hover = false
		})
	end

	self.applyToSelection = function()
		local props : _Props = self.props
		local item = props.Item

		local isBuiltin = if getFFlagMaterialManagerGlassNeonForceField() then not item.MaterialVariant else item.IsBuiltin

		if isBuiltin then
			if getFFlagMaterialManagerGlassNeonForceField() then
				ApplyToSelection(item.Material)
			elseif props.Item.MaterialVariant then
				ApplyToSelection(props.Item.MaterialVariant.BaseMaterial)
			end
		elseif props.Item.MaterialVariant then
			ApplyToSelection(if getFFlagMaterialManagerGlassNeonForceField() then item.Material else props.Item.MaterialVariant.BaseMaterial, props.Item.MaterialVariant.Name)
		end
	end

	self.state = {
		hover = false
	}
end

function MaterialItem:willUnmount()
	if self.changedConnection then
		self.changedConnection:Disconnect()
		self.changedConnection = nil
	end

	if self.overrideStatusChangedConnection then
		self.overrideStatusChangedConnection:Disconnect()
		self.overrideStatusChangedConnection = nil
	end
end

function MaterialItem:didMount()
	local props : _Props = self.props

	self.changedConnection = props.MaterialController:getMaterialChangedSignal():Connect(function(materialVariant)
		local props : _Props = self.props

		if materialVariant == props.Item.MaterialVariant then
			self:setState({})
		end
	end)

	self.overrideStatusChangedConnection = props.MaterialController:getOverrideStatusChangedSignal():Connect(function(materialType)
		local props : _Props = self.props

		if getFFlagMaterialManagerGlassNeonForceField() then
			if not props.Item.MaterialVariant and materialType == props.Item.Material then
				self:setState({})
			end
		else
			if props.Item.IsBuiltin and props.Item.MaterialVariant and materialType == props.Item.MaterialVariant.BaseMaterial then
				self:setState({})
			end
		end
	end)
end

function MaterialItem:render()
	local props : _Props = self.props
	local style : _Style = props.Stylizer.MaterialItem
	local localization = props.Localization
	local viewType = props.ViewType

	local item = props.Item
	local materialVariant = item.MaterialVariant

	local name
	local colorMap, metalnessMap, normalMap, roughnessMap

	if getFFlagMaterialManagerGlassNeonForceField() then
		name = if not materialVariant then localization:getText("Materials", getMaterialName(item.Material)) else materialVariant.Name

		if materialVariant then
			colorMap = materialVariant.ColorMap
			metalnessMap = materialVariant.MetalnessMap
			normalMap = materialVariant.NormalMap
			roughnessMap = materialVariant.RoughnessMap
		end
	else
		colorMap = materialVariant.ColorMap
		metalnessMap = materialVariant.MetalnessMap
		name = if item.IsBuiltin then localization:getText("Materials", materialVariant.Name) else materialVariant.Name
		normalMap = materialVariant.NormalMap
		roughnessMap = materialVariant.RoughnessMap
	end

	local fullMaterialType = getFullMaterialType(item, localization)
	local textSize = style.TextSize
	local height = style.ListHeight

	-- Remove and replace with getFFlagMaterialManagerGlassNeonForceField
	local isBuiltin = if getFFlagMaterialManagerGlassNeonForceField() then not item.MaterialVariant else item.IsBuiltin

	if viewType == "List" then
		local status = props.MaterialController:getOverrideStatus(if getFFlagMaterialManagerGlassNeonForceField() then item.Material else materialVariant.BaseMaterial)
		local widths = {
			UDim.new(0, height),
			if isBuiltin and status ~= Enum.PropertyStatus.Ok then style.IconSize.X else UDim.new(0, 0),
			if not isBuiltin then style.IconSize.X else UDim.new(0, 0),
			if self.state.hover then style.ButtonSize.X else UDim.new(0, 0),
		}
		local labelSize = UDim2.new(CalculateFillWidth(widths, 0, style.Spacing), UDim.new(0, height))

		return Roact.createElement(Button, {
			DisableHover = props.MenuHover,
			LayoutOrder = props.LayoutOrder,
			OnClick = self.onClick,
			OnMouseEnter = self.onMouseEnter,
			OnMouseLeave = self.onMouseLeave,
			Style = if props.Material == item
				then "RoundActive"
				else "Round",
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
					ColorMap = colorMap,
					LayoutOrder = 1,
					Material = if getFFlagMaterialManagerGlassNeonForceField() then item.Material else materialVariant.BaseMaterial,
					MaterialVariant = if not isBuiltin then materialVariant.Name else nil,
					MetalnessMap = metalnessMap,
					NormalMap = normalMap,
					RoughnessMap = roughnessMap,
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
						Text = name,
						TextSize = textSize,
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Center,
						TextWrapped = false,
					})
				}),
				ApplyToSelection = if self.state.hover then
					Roact.createElement(Button, {
						LayoutOrder = 3,
						OnClick = self.applyToSelection,
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
				MaterialVariantIcon = if not isBuiltin then
					Roact.createElement(Container, {
						LayoutOrder = 4,
						Size = style.IconSize,
					}, {
						Image = Roact.createElement(Image, {
							Style = style.MaterialVariantIcon,
						}),
						Tooltip = Roact.createElement(Tooltip, {
							Text = fullMaterialType,
						})
					})
					else nil,
				StatusIcon = if isBuiltin then
					Roact.createElement(StatusIcon, {
						LayoutOrder = 5,
						Material = item,
						Size = style.IconSize,
					})
					else nil
			}),
		})
	else

		local materialTileSize = props.MaterialTileSize
		local size = UDim2.fromOffset(materialTileSize, materialTileSize)

		return Roact.createElement(Button, {
			DisableHover = props.MenuHover,
			LayoutOrder = props.LayoutOrder,
			OnClick = self.onClick,
			OnMouseEnter = self.onMouseEnter,
			OnMouseLeave = self.onMouseLeave,
			Style = if props.Material == item
				then "RoundActive"
				else "Round",
			Size = size,
		}, {
			Content = Roact.createElement(Container, {
				Size = size,
			}, {
				MaterialPreview = Roact.createElement(MaterialPreview, {
					Clone = false,
					ColorMap = colorMap,
					LayoutOrder = 1,
					Material = if getFFlagMaterialManagerGlassNeonForceField() then item.Material else materialVariant.BaseMaterial,
					MaterialVariant = if not isBuiltin then materialVariant.Name else nil,
					MetalnessMap = metalnessMap,
					NormalMap = normalMap,
					RoughnessMap = roughnessMap,
					Position = UDim2.fromOffset(0, 0),
					Size = UDim2.fromOffset(materialTileSize, materialTileSize),
					Static = true,
				}),
				Gradient = if materialTileSize >= TILE_TEXT_THRESHOLD then
					Roact.createElement(Pane, {
						AnchorPoint = Vector2.new(0.5, 1),
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						Layout = Enum.FillDirection.Vertical,
						LayoutOrder = 2,
						Position = UDim2.fromScale(0.5, 1),
						Size = UDim2.new(1, -8, 0, 24),
						ZIndex = 2,
					}, {
						Gradient = Roact.createElement(Image, {
							Size = UDim2.fromScale(1, 1),
							Style = {
								Image = if self.state.hover then style.GradientHover else style.Gradient,
							}
						})
					}) else nil,
				NameLabel = if materialTileSize >= TILE_TEXT_THRESHOLD then
					Roact.createElement(Pane, {
						AnchorPoint = Vector2.new(0, 1),
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						Layout = Enum.FillDirection.Vertical,
						LayoutOrder = 2,
						Position = UDim2.new(0, 6, 1, -6),
						Size = if not isBuiltin then
						UDim2.new(1, -12 - style.IconSize.X.Offset, 0, 18)
						else
						UDim2.new(1, -12, 0, 18),
						ZIndex = 3,
					}, {
						Name = Roact.createElement(TruncatedTextLabel, {
							Size = UDim2.fromScale(1, 1),
							Text = name,
							TextSize = textSize,
							TextTruncate = Enum.TextTruncate.AtEnd,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextYAlignment = Enum.TextYAlignment.Top,
							TextWrapped = false,
						})
					}) else nil
			}),
			MaterialVariantIcon = if not isBuiltin then
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
						Text = fullMaterialType,
					})
				})
				else nil,
			StatusIcon = if isBuiltin then
				Roact.createElement(StatusIcon, {
					LayoutOrder = 3,
					Material = item,
					Position = style.StatusIconPosition,
					Size = style.IconSize,
					ZIndex = 2,
				})
				else nil,
			ApplyToSelection = if self.state.hover then
				Roact.createElement(Button, {
					AnchorPoint = style.ApplyIconAnchorPoint,
					LayoutOrder = 4,
					OnClick = self.applyToSelection,
					Position = style.ApplyIconPosition,
					Size = UDim2.fromOffset(28, 28),
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
end

MaterialItem = withContext({
	Analytics = Analytics,
	Localization = Localization,
	MaterialController = MaterialController,
	Stylizer = Stylizer,
})(MaterialItem)

return RoactRodux.connect(
	function(state, props)
		return {
			Material = state.MaterialBrowserReducer.Material,
			MaterialItemSize = state.MaterialBrowserReducer.MaterialItemSize,
			MaterialTileSize = state.MaterialBrowserReducer.MaterialTileSize,
			MenuHover = state.MaterialBrowserReducer.MenuHover,
			ViewType = state.MaterialBrowserReducer.ViewType
		}
	end
)(MaterialItem)