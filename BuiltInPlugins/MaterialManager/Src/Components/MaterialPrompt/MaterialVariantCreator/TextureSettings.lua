local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local LayoutOrderIterator = Framework.Util.LayoutOrderIterator

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane

local getTextureMapNames = require(Plugin.Src.Resources.Constants.getTextureMapNames)
local Flags = Plugin.Src.Flags
local getFFlagMaterialManagerRefactorTextureMapSelector = require(Flags.getFFlagMaterialManagerRefactorTextureMapSelector)
local LabeledTextureElement = if getFFlagMaterialManagerRefactorTextureMapSelector() then require(Plugin.Src.Components.MaterialPrompt.MaterialVariantCreator.LabeledTextureElement) else require(Plugin.Src.Components.MaterialPrompt.MaterialVariantCreator.DEPRECATED_LabeledTextureElement)

local TextureMaps = getTextureMapNames()

export type Props = {
	LayoutOrder: number?,
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	ItemSpacing: number,
	LabelColumnWidth: UDim,
}

local TextureSettings = Roact.PureComponent:extend("TextureSettings")

function TextureSettings:render()
	local props: _Props = self.props
	local localization = props.Localization
	local style: _Style = props.Stylizer.TextureSettings
	local layoutOrderIterator = LayoutOrderIterator.new()

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.XY,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
		Spacing = style.ItemSpacing,
	}, {
		ImportColorMap = Roact.createElement(LabeledTextureElement, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			LabelColumnWidth = style.LabelColumnWidth,
			MapType = TextureMaps.ColorMap,
			PreviewTitle = localization:getText("Import", "ColorMapPreview"),
			Text = localization:getText("CreateDialog", "ImportColorMap"),
		}),
		ImportMetalnessMap = Roact.createElement(LabeledTextureElement, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			LabelColumnWidth = style.LabelColumnWidth,
			MapType = TextureMaps.MetalnessMap,
			PreviewTitle = localization:getText("Import", "MetalnessMapPreview"),
			Text = localization:getText("CreateDialog", "ImportMetalnessMap"),
		}),
		ImportNormalMap = Roact.createElement(LabeledTextureElement, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			LabelColumnWidth = style.LabelColumnWidth,
			MapType = TextureMaps.NormalMap,
			PreviewTitle = localization:getText("Import", "NormalMapPreview"),
			Text = localization:getText("CreateDialog", "ImportNormalMap"),
		}),
		ImportRoughnessMap = Roact.createElement(LabeledTextureElement, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			LabelColumnWidth = style.LabelColumnWidth,
			MapType = TextureMaps.RoughnessMap,
			PreviewTitle = localization:getText("Import", "RoughnessMapPreview"),
			Text = localization:getText("CreateDialog", "ImportRoughnessMap"),
		})
	})
end

TextureSettings = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TextureSettings)

return TextureSettings
