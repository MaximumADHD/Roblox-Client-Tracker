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

local getFFlagMaterialManagerGlassNeonForceField = require(Plugin.Src.Flags.getFFlagMaterialManagerGlassNeonForceField)

local getMaterialPatternName = require(Plugin.Src.Resources.Constants.getMaterialPatternName)
local LabeledString = require(Plugin.Src.Components.MaterialBrowser.MaterialDetails.LabeledString)
local MainReducer = require(Plugin.Src.Reducers.MainReducer) 

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

local MaterialAdditional = Roact.PureComponent:extend("MaterialAdditional")

function MaterialAdditional:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.MaterialDetails
	local localization = props.Localization
	local material = props.Material

	if not material or (getFFlagMaterialManagerGlassNeonForceField() and not material.MaterialVariant) then
		return Roact.createElement(Pane)
	end

	local studsPerTile = tostring(material.MaterialVariant.StudsPerTile)
	local materialPattern = getMaterialPatternName(material.MaterialVariant.MaterialPattern)

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
			Text = localization:getText("MaterialAdditional", "Additional"),
			TextSize = style.SectionHeaderTextSize,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		StudsPerTile = Roact.createElement(LabeledString, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Name = localization:getText("MaterialAdditional", "StudsPerTile"),
			Text = studsPerTile,
		}),
		MaterialPattern = Roact.createElement(LabeledString, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Name = localization:getText("MaterialAdditional", "MaterialPattern"),
			Text = materialPattern,
		}),
	})
end


MaterialAdditional = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(MaterialAdditional)

local function mapStateToProps(state: MainReducer.State, props: _Props)
	return {
		Material = props.MockMaterial or state.MaterialBrowserReducer.Material
	}
end

return RoactRodux.connect(mapStateToProps, nil)(MaterialAdditional)
