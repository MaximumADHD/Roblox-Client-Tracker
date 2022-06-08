-- Remove MaterialTile with FFlagMaterialManagerGridListView
local FFlagDevFrameworkRemoveFitFrame = game:GetFastFlag("DevFrameworkRemoveFitFrame")

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

local prioritize = Framework.Util.prioritize

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

local getFullMaterialType = require(Plugin.Src.Resources.Constants.getFullMaterialType)
local getMaterialName = require(Plugin.Src.Resources.Constants.getMaterialName)
local MaterialController = require(Plugin.Src.Util.MaterialController)
local ApplyToSelection = require(Plugin.Src.Util.ApplyToSelection)

local Flags = Plugin.Src.Flags
local getFFlagDevFrameworkInfiniteScrollingGridBottomPadding = require(Flags.getFFlagDevFrameworkInfiniteScrollingGridBottomPadding)
local getFFlagMaterialManagerGlassNeonForceField = require(Flags.getFFlagMaterialManagerGlassNeonForceField)

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
	Stylizer: any,
}

type _Style = {
	IconSize: UDim2,
	MaterialVariant: _Types.Image,
	MaterialVariantIconPosition: UDim2,
	MaxWidth: number,
	Padding: number,
	Size: UDim2,
	Spacing: number,
	StatusIconPosition: UDim2,
	TextLabelSize: UDim2,
	TextSize: number,
}

local MaterialTile = Roact.PureComponent:extend("MaterialTile")

function MaterialTile:init()
	self.onClick = function()
		local props: _Props = self.props

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

function MaterialTile:willUnmount()
	if self.changedConnection then
		self.changedConnection:Disconnect()
		self.changedConnection = nil
	end

	if self.overrideStatusChangedConnection then
		self.overrideStatusChangedConnection:Disconnect()
		self.overrideStatusChangedConnection = nil
	end
end

function MaterialTile:didMount()
	local props: _Props = self.props

	self.changedConnection = props.MaterialController:getMaterialChangedSignal():Connect(function(materialVariant)
		local props: _Props = self.props

		if materialVariant == props.Item.MaterialVariant then
			self:setState({})
		end
	end)

	self.overrideStatusChangedConnection = props.MaterialController:getOverrideStatusChangedSignal():Connect(function(materialType)
		local props: _Props = self.props

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

function MaterialTile:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.MaterialTile
	local localization = props.Localization

	local item = props.Item
	local materialVariant = item.MaterialVariant

	local name
	if getFFlagMaterialManagerGlassNeonForceField() then
		name = if not materialVariant then localization:getText("Materials", getMaterialName(item.Material)) else materialVariant.Name
	else
		name = if item.IsBuiltin then localization:getText("Materials", materialVariant.Name) else materialVariant.Name
	end

	local fullMaterialType = getFullMaterialType(item, localization)
	local textSize = style.TextSize

	-- Remove and replace with getFFlagMaterialManagerGlassNeonForceField
	local isBuiltin = if getFFlagMaterialManagerGlassNeonForceField() then not materialVariant else item.IsBuiltin
	local padding = prioritize(props.Padding, style.Padding)
	local size = prioritize(props.Size, style.Size)
	local spacing = style.Spacing

	return Roact.createElement(Button, {
		LayoutOrder = props.LayoutOrder,
		OnClick = self.onClick,
		Style = if props.Material == item
			then "RoundActive"
			else "Round",
		Size = size,
	}, {
		Content = Roact.createElement(Pane, {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Vertical,
			Padding = padding * 2,
			Spacing = padding,
			Size = size,
		}, {
			MaterialPreview = Roact.createElement(MaterialPreview, {
				LayoutOrder = 1,
				Material = if getFFlagMaterialManagerGlassNeonForceField() then item.Material else materialVariant.BaseMaterial,
				MaterialVariant = if not isBuiltin then materialVariant.Name else nil,
				Size = if getFFlagDevFrameworkInfiniteScrollingGridBottomPadding() then
					UDim2.fromOffset(160, 140)
					else
					UDim2.new(size.X.Scale, size.X.Offset - (2 * padding), size.Y.Scale,  size.Y.Offset - (2 * padding) - spacing - textSize),
				Static = true,
			}),
			NameLabel = Roact.createElement(Pane, {
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				Layout = Enum.FillDirection.Vertical,
				LayoutOrder = 2,
				Size = style.TextLabelSize,
			}, {
				Name = Roact.createElement(TextLabel, {
					FitMaxWidth = if FFlagDevFrameworkRemoveFitFrame then nil else style.MaxWidth,
					Size = UDim2.fromScale(1, 1),
					Text = name,
					TextSize = textSize,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					TextWrapped = false,
				})
			})
		}),
		MaterialVariantIcon = if not isBuiltin then
			Roact.createElement(Container, {
				LayoutOrder = 2,
				Position = style.MaterialVariantIconPosition,
				Size = style.IconSize,
				ZIndex = 2,
			}, {
				Image = Roact.createElement(Image, {
					Style = style.MaterialVariant,
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
			else nil
	})
end

MaterialTile = withContext({
	Analytics = Analytics,
	Localization = Localization,
	MaterialController = MaterialController,
	Stylizer = Stylizer,
})(MaterialTile)

return RoactRodux.connect(
	function(state, props)
		return {
			Material = state.MaterialBrowserReducer.Material,
			MaterialTileSize = state.MaterialBrowserReducer.MaterialTileSize,
			MenuHover = state.MaterialBrowserReducer.MenuHover,
		}
	end
)(MaterialTile)
