local Plugin = script.Parent.Parent.Parent.Parent
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
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel
local ScrollingFrame = UI.ScrollingFrame

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local GeneralSettings = require(Plugin.Src.Components.MaterialPrompt.MaterialVariantCreator.GeneralSettings)
local TextureSettings = require(Plugin.Src.Components.MaterialPrompt.MaterialVariantCreator.TextureSettings)
local AdditionalPropertiesSettings = require(Plugin.Src.Components.MaterialPrompt.MaterialVariantCreator.AdditionalPropertiesSettings)
local MaterialPreview = require(Plugin.Src.Components.MaterialPreview)
-- TODO: cleaning up for the FFLagMaterialVariantTempIdCompatibility - remove all texture maps from that file
local getFFlagMaterialVariantTempIdCompatibility = require(Plugin.Src.Flags.getFFlagMaterialVariantTempIdCompatibility)

export type Props = {
	ErrorName : string?,
	ErrorBaseMaterial : string?,
	ErrorStudsPerTile : string?,
	SetStudsPerTileError : (string?) -> (),
	MaterialVariantTemp : MaterialVariant,
}

type _Props = Props & {
	ColorMap : _Types.TextureMap?,
	MetalnessMap : _Types.TextureMap?,
	NormalMap : _Types.TextureMap?,
	RoughnessMap : _Types.TextureMap?,
	Material : _Types.Material?,
	Analytics : any,
	Localization : any,
	Stylizer : any,
}

type _Style = {
	Background : Color3,
	ListItemPadding : number,
	Padding : number,
	TextFont : Enum.Font,
	SettingsSize : UDim2,
	PreviewSize : UDim2,
}

local MaterialVariantCreator = Roact.PureComponent:extend("MaterialVariantCreator")

function MaterialVariantCreator:render()
	local props : _Props = self.props
	local localization = props.Localization
	local style : _Style = props.Stylizer.MaterialVariantCreator
	local layoutOrderIterator = LayoutOrderIterator.new()

	local padding = UDim.new(0, style.Padding)
	local materialVariant
	if getFFlagMaterialVariantTempIdCompatibility() then
		materialVariant = props.MaterialVariantTemp
	end
	local colorMap = props.ColorMap
	local metalnessMap = props.MetalnessMap
	local normalMap = props.NormalMap
	local roughnessMap = props.RoughnessMap

	colorMap = if colorMap then colorMap.assetId or colorMap.tempId else nil
	metalnessMap = if metalnessMap then metalnessMap.assetId or metalnessMap.tempId else nil
	normalMap = if normalMap then normalMap.assetId or normalMap.tempId else nil
	roughnessMap = if roughnessMap then roughnessMap.assetId or roughnessMap.tempId else nil

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Horizontal,
	}, {
		Scroller = Roact.createElement(ScrollingFrame, {
			AutoSizeCanvas = true,
			AutoSizeLayoutOptions = {
				Padding = style.ListItemPadding,
				SortOrder = Enum.SortOrder.LayoutOrder,
			},
			LayoutOrder = 1,
			Size = style.SettingsSize,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = padding,
				PaddingTop = padding,
				-- PaddingRight omitted to prevent the layout from collapsing prematurely.
				PaddingBottom = padding,
			}),

			TextGeneral = Roact.createElement(TextLabel, {
				Text = localization:getText("CreateDialog", "General"),
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Font = style.TextFont,
			}),

			GeneralSettings = Roact.createElement(GeneralSettings, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				ErrorName = props.ErrorName,
				ErrorBaseMaterial = props.ErrorBaseMaterial,
			}),

			TextMaps = Roact.createElement(TextLabel, {
				Text = localization:getText("CreateDialog", "TextureMaps"),
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Font = style.TextFont,
			}),

			TextureSettings = Roact.createElement(TextureSettings, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
			}),

			TextAdditional = Roact.createElement(TextLabel, {
				Text = localization:getText("CreateDialog", "AdditionalProperties"),
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Font = style.TextFont,
			}),

			AdditionalPropertiesSettings = Roact.createElement(AdditionalPropertiesSettings, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				ErrorStudsPerTile = props.ErrorStudsPerTile,
				setStudsPerTileError = props.SetStudsPerTileError,
			}),
		}),

		MaterialPreview = getFFlagMaterialVariantTempIdCompatibility() and Roact.createElement(MaterialPreview, {
			BackgroundColor = style.Background,
			DisableZoom = true,
			MaterialVariant = materialVariant.Name,
			Material = materialVariant.BaseMaterial,
			InitialDistance = 12,
			LayoutOrder = 2,
			Size = style.PreviewSize,
		}) or Roact.createElement(MaterialPreview, {
			BackgroundColor = style.Background,
			ColorMap = colorMap,
			DisableZoom = true,
			ForceSurfaceAppearance = true,
			InitialDistance = 12,
			LayoutOrder = 2,
			MetalnessMap = metalnessMap,
			NormalMap = normalMap,
			RoughnessMap = roughnessMap,
			Size = style.PreviewSize,
		})
	})
end


MaterialVariantCreator = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(MaterialVariantCreator)



return RoactRodux.connect(
	function(state : MainReducer.State, _)
		return {
			ColorMap = state.MaterialPromptReducer.ColorMap,
			MetalnessMap = state.MaterialPromptReducer.MetalnessMap,
			NormalMap = state.MaterialPromptReducer.NormalMap,
			RoughnessMap = state.MaterialPromptReducer.RoughnessMap,
		}
	end
)(MaterialVariantCreator)
