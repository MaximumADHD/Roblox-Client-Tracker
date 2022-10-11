local Plugin = script.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local LayoutOrderIterator = Framework.Util.LayoutOrderIterator

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local ScrollingFrame = UI.ScrollingFrame

local MaterialVariantEditorComponent = Plugin.Src.Components.MaterialBrowser.MaterialVariantEditor
local MaterialHeader = require(MaterialVariantEditorComponent.MaterialHeader)
local MaterialInformation = require(MaterialVariantEditorComponent.MaterialInformation)
local GeneralSettings = require(MaterialVariantEditorComponent.GeneralSettings)
local TextureSettings = require(MaterialVariantEditorComponent.TextureSettings)
local TilingSettings = require(MaterialVariantEditorComponent.TilingSettings)
local MaterialOverrides = require(MaterialVariantEditorComponent.MaterialOverrides)
local OverrideSettings = require(MaterialVariantEditorComponent.OverrideSettings)
local TerrainDetailsSettings = require(MaterialVariantEditorComponent.TerrainDetailsSettings)
local PhysicalSettings = require(MaterialVariantEditorComponent.PhysicalSettings)

local getSupportedMaterials = require(Plugin.Src.Resources.Constants.getSupportedMaterials)
local supportedMaterials = getSupportedMaterials()

local getFFlagMaterialManagerTerrainDetails = require(Plugin.Src.Flags.getFFlagMaterialManagerTerrainDetails)

local MaterialVariantEditor = Roact.PureComponent:extend("MaterialVariantEditor")

export type Props = {
	LayoutOrder: number?,
	MaterialMock: _Types.Material?,
	Size: UDim2?,
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Material: _Types.Material?,
	Stylizer: any,
}

type _Style = {
	CustomExpandablePane: any,
}

function MaterialVariantEditor:render()
	local props: _Props = self.props

	local layoutOrder = props.LayoutOrder
	local size = props.Size

	if not props.Material then
		return Roact.createElement(Pane)
	else
		local materialVariant = props.Material.MaterialVariant
		local overrideSupport = supportedMaterials[props.Material.Material]
		local layoutOrderIterator = LayoutOrderIterator.new()

		return Roact.createElement(ScrollingFrame, {
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = layoutOrder,
			Size = size,
		}, {
			Pane = Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.Y,
				Layout = Enum.FillDirection.Vertical,
			}, {
				MaterialHeader = Roact.createElement(MaterialHeader, {
					LayoutOrder = layoutOrderIterator:getNextOrder(),
				}),
				MaterialInformation = Roact.createElement(MaterialInformation, {
					LayoutOrder = layoutOrderIterator:getNextOrder(),
				}),
				GeneralSettings = if materialVariant
					then Roact.createElement(GeneralSettings, {
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						MaterialVariant = materialVariant,
					})
					else nil,
				TextureSettings = if materialVariant
					then Roact.createElement(TextureSettings, {
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						PBRMaterial = materialVariant,
						Expandable = true,
					})
					else nil,
				OverrideSettings = if materialVariant and overrideSupport
					then Roact.createElement(OverrideSettings, {
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						MaterialVariant = materialVariant,
					})
					else Roact.createElement(MaterialOverrides, {
						LayoutOrder = layoutOrderIterator:getNextOrder(),
					}),
				TilingSettings = if materialVariant
					then Roact.createElement(TilingSettings, {
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						PBRMaterial = materialVariant,
						Expandable = true,
					})
					else nil,
				TerrainDetailsSettings = if getFFlagMaterialManagerTerrainDetails() and materialVariant
					then Roact.createElement(TerrainDetailsSettings, {
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						MaterialVariant = materialVariant,
					})
					else nil,
				PhysicalSettings = if materialVariant
					then Roact.createElement(PhysicalSettings, {
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						MaterialVariant = materialVariant,
					})
					else nil,
			}),
		})
	end
end

MaterialVariantEditor = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(MaterialVariantEditor)

return RoactRodux.connect(
	function(state, props)
	return {
		Material = props.MaterialMock or state.MaterialBrowserReducer.Material,
	}
	end
)(MaterialVariantEditor)
