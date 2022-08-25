local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local LayoutOrderIterator = Framework.Util.LayoutOrderIterator
local Stylizer = Framework.Style.Stylizer

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local UI = Framework.UI
local Pane = UI.Pane
local SimpleExpandablePane = UI.SimpleExpandablePane

local TextureMapSelector = require(Plugin.Src.Components.MaterialBrowser.MaterialVariantEditor.TextureMapSelector)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local getTextureMapNames = require(Plugin.Src.Resources.Constants.getTextureMapNames)

local TextureMaps = getTextureMapNames()

export type Props = {
	LayoutOrder: number?,
	MockMaterial: _Types.Material?,
}

type _Props = Props & { 
	Analytics: any,
	Localization: any,
	Material: _Types.Material?,
	Stylizer: any,
}

type _Style = {
	ContentPadding: number,
	CustomExpandablePane: any,
	ItemSpacing: number,
	LabelColumnWidth: UDim,
}

local TextureSettings = Roact.PureComponent:extend("TextureSettings")

function TextureSettings:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.MaterialDetails
	local localization = props.Localization
	local material = props.Material

	if not material or not material.MaterialVariant then
		return Roact.createElement(Pane)
	end

	local layoutOrderIterator = LayoutOrderIterator.new()

	return Roact.createElement(SimpleExpandablePane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		LayoutOrder = props.LayoutOrder,
		ContentPadding = style.ContentPadding,
		ContentSpacing = style.ItemSpacing,
		Text = localization:getText("MaterialTextures", "TextureMaps"),
		Style = style.CustomExpandablePane,
	}, {
		ImportColorMap = Roact.createElement(TextureMapSelector, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			LabelColumnWidth = style.LabelColumnWidth,
			MapType = TextureMaps.ColorMap,
			PreviewTitle = localization:getText("Import", "ColorMapPreview"),
			Text = localization:getText("CreateDialog", "ImportColorMap"),
			MaterialVariant = material.MaterialVariant,
		}),
		ImportMetalnessMap = Roact.createElement(TextureMapSelector, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			LabelColumnWidth = style.LabelColumnWidth,
			MapType = TextureMaps.MetalnessMap,
			PreviewTitle = localization:getText("Import", "MetalnessMapPreview"),
			Text = localization:getText("CreateDialog", "ImportMetalnessMap"),
			MaterialVariant = material.MaterialVariant,
		}),
		ImportNormalMap = Roact.createElement(TextureMapSelector, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			LabelColumnWidth = style.LabelColumnWidth,
			MapType = TextureMaps.NormalMap,
			PreviewTitle = localization:getText("Import", "NormalMapPreview"),
			Text = localization:getText("CreateDialog", "ImportNormalMap"),
			MaterialVariant = material.MaterialVariant,
		}),
		ImportRoughnessMap = Roact.createElement(TextureMapSelector, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			LabelColumnWidth = style.LabelColumnWidth,
			MapType = TextureMaps.RoughnessMap,
			PreviewTitle = localization:getText("Import", "RoughnessMapPreview"),
			Text = localization:getText("CreateDialog", "ImportRoughnessMap"),
			MaterialVariant = material.MaterialVariant,
		})
	})
end

TextureSettings = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TextureSettings)

return RoactRodux.connect(
	function(state: MainReducer.State, props: Props)
		return {
			Material = props.MockMaterial or state.MaterialBrowserReducer.Material,
		}
	end
)(TextureSettings)
