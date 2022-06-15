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

local LabeledTexture = require(Plugin.Src.Components.MaterialBrowser.MaterialDetails.LabeledTexture)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local SetMaterial = require(Plugin.Src.Actions.SetMaterial)

export type Props = {
	LayoutOrder: number?,
	MockMaterial: _Types.Material?,
}

type _Props = Props & { 
	Analytics: any,
	dispatchSetMaterial: (material: _Types.Material) -> (),
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

local MaterialTextures = Roact.PureComponent:extend("MaterialTextures")

function MaterialTextures:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.MaterialDetails
	local localization = props.Localization
	local material = props.Material

	if not material then
		return Roact.createElement(Pane)
	end

	local colorMap = material.MaterialVariant.ColorMap
	local metalnessMap = material.MaterialVariant.MetalnessMap
	local normalMap = material.MaterialVariant.NormalMap
	local roughnessMap = material.MaterialVariant.RoughnessMap

	local layoutOrderIterator = LayoutOrderIterator.new()

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
		Spacing = style.Padding,
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
		ColorMap = Roact.createElement(LabeledTexture, {
			Name = localization:getText("MaterialTextures", "Color"),
			Image = if colorMap == "" then style.NoTexture else colorMap,
			LayoutOrder = layoutOrderIterator:getNextOrder()
		}),
		MetalnessMap = Roact.createElement(LabeledTexture, {
			Name = localization:getText("MaterialTextures", "Metalness"),
			Image = if metalnessMap == "" then style.NoTexture else metalnessMap,
			LayoutOrder = layoutOrderIterator:getNextOrder()
		}),
		NormalMap = Roact.createElement(LabeledTexture, {
			Name = localization:getText("MaterialTextures", "Normal"),
			Image = if normalMap == "" then style.NoTexture else normalMap,
			LayoutOrder = layoutOrderIterator:getNextOrder()
		}),
		RoughnessMap = Roact.createElement(LabeledTexture, {
			Name = localization:getText("MaterialTextures", "Roughness"),
			Image = if roughnessMap == "" then style.NoTexture else roughnessMap,
			LayoutOrder = layoutOrderIterator:getNextOrder()
		}),
	})
end

MaterialTextures = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(MaterialTextures)

return RoactRodux.connect(
	function(state: MainReducer.State, props: _Props)
		return {
			Material = props.MockMaterial or state.MaterialBrowserReducer.Material,
		}
	end,
	function(dispatch)
		return {
			dispatchSetMaterial = function(material: _Types.Material)
				dispatch(SetMaterial(material))
			end,
		}
	end
)(MaterialTextures)
