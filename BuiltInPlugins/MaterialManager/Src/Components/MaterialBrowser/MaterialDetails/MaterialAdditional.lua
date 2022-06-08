local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local LayoutOrderIterator = Framework.Util.LayoutOrderIterator

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local TruncatedTextLabel = UI.TruncatedTextLabel
local TextLabel = UI.Decoration.TextLabel

local getMaterialPatternName = require(Plugin.Src.Resources.Constants.getMaterialPatternName)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local MaterialController = require(Plugin.Src.Util.MaterialController)

local Flags = Plugin.Src.Flags
local getFFlagMaterialManagerGlassNeonForceField = require(Flags.getFFlagMaterialManagerGlassNeonForceField)

export type Props = {
	LayoutOrder: number?,
	MockMaterial: _Types.Material?,
}

type _Props = Props & { 
	Analytics: any,
	Localization: any,
	Material: _Types.Material?,
	MaterialController: any,
	Stylizer: any,
}

type _Style = {
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
	AdditionalLabelSize: UDim2,
	AdditionalTextSize: UDim2,
	TextureRowSize: UDim2,
	TextureSize: UDim2,
	TitleTextSize: number,
}

local MaterialAdditional = Roact.PureComponent:extend("MaterialAdditional")

function MaterialAdditional:init()
	self.createAdditionalElement = function(name: string, text: string, layoutOrder: number)
		local props: _Props = self.props
		local style: _Style = props.Stylizer.MaterialDetails

		return Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = layoutOrder,
			Size = style.LabelRowSize,
		}, {
			Label = Roact.createElement(TextLabel, {
				LayoutOrder = 1,
				Size = style.AdditionalLabelSize,
				Text = name,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
			}),
			Text = Roact.createElement(TruncatedTextLabel, {
				LayoutOrder = 2,
				Size = style.AdditionalTextSize,
				Text = text,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
			}),
		})
	end
end

function MaterialAdditional:willUnmount()
	if self.connection then
		self.connection:Disconnect()
		self.connection = nil
	end
end

function MaterialAdditional:didMount()
	local props: _Props = self.props
	local materialController = props.MaterialController

	self.connection = materialController:getMaterialChangedSignal():Connect(function(materialVariant: MaterialVariant)
		if self.props.Material and self.props.Material.MaterialVariant == materialVariant then
			self:setState({})
		end
	end)
end

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
		StudsPerTile = self.createAdditionalElement(
			localization:getText("MaterialAdditional", "StudsPerTile"),
			studsPerTile,
			layoutOrderIterator:getNextOrder()
		),
		MaterialPattern = self.createAdditionalElement(
			localization:getText("MaterialAdditional", "MaterialPattern"),
			materialPattern,
			layoutOrderIterator:getNextOrder()
		),
	})
end


MaterialAdditional = withContext({
	Analytics = Analytics,
	Localization = Localization,
	MaterialController = MaterialController,
	Stylizer = Stylizer,
})(MaterialAdditional)



local function mapStateToProps(state: MainReducer.State, props: _Props)
	return {
		Material = props.MockMaterial or state.MaterialBrowserReducer.Material,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(MaterialAdditional)
