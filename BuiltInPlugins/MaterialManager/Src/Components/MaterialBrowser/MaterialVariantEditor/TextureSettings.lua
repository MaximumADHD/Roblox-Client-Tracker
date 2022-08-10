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
local TruncatedTextLabel = UI.TruncatedTextLabel

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
	AdditionalLabelSize: UDim2,
	AdditionalTextSize: UDim2,
	ButtonPosition: UDim2,
	ButtonSize: UDim2,
	ButtonStyle: string,
	Close: _Types.Image,
	CreateVariant: _Types.Image,
	Delete: _Types.Image,
	DropdownSize: UDim2,
	Edit: _Types.Image,
	HeaderBackground: Color3,
	HeaderFont: Enum.Font,
	HeaderSize: UDim2,
	ImagePosition: UDim2,
	ImageSize: UDim2,
	LabelColumnWidth: UDim,
	NameLabelSizeBuiltIn: UDim2,
	NameLabelSizeVariant: UDim2,
	NoTexture: string,
	LabelRowSize: UDim2,
	OverrideSize: UDim2,
	Padding: number,
	SectionHeaderTextSize: number,
	TextureLabelSize: UDim2,
	TextureRowSize: UDim2,
	TextureSize: UDim2,
	TitleTextSize: number,
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

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
		Padding = style.Padding,
	}, {
		Name = Roact.createElement(TruncatedTextLabel, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Font = style.HeaderFont,
			Size = style.LabelRowSize,
			Text = localization:getText("MaterialTextures", "TextureMaps"),
			TextSize = style.SectionHeaderTextSize,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
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
