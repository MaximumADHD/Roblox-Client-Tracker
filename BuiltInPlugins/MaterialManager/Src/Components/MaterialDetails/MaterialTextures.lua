local Plugin = script.Parent.Parent.Parent.Parent
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

local Actions = Plugin.Src.Actions
local SetMaterial = require(Actions.SetMaterial)

local UI = Framework.UI
local Image = UI.Decoration.Image
local Pane = UI.Pane
local TruncatedTextLabel = UI.TruncatedTextLabel

local MaterialController = require(Plugin.Src.Util.MaterialController)

export type Props = {
	LayoutOrder : number?,
	MockMaterial : _Types.Material?,
}

type _Props = Props & { 
	Analytics : any,
	dispatchSetMaterial : (material : _Types.Material) -> (),
	Localization : any,
	Material : _Types.Material?,
	MaterialController : any,
	Stylizer : any,
}

type _Style = {
	ButtonPosition : UDim2,
	ButtonSize : UDim2,
	ButtonStyle : string,
	Close : _Types.Image,
	DropdownSize : UDim2,
	Favorite : _Types.Image,
	HeaderBackground : Color3,
	HeaderFont : Enum.Font,
	HeaderSize : UDim2,
	ImagePosition : UDim2,
	ImageSize : UDim2,
	LabelColumnWidth : UDim,
	MoreMenu : _Types.Image,
	NameLabelSize : UDim2,
	LabelRowSize : UDim2,
	Padding : number,
	SectionHeaderTextSize : number,
	TextureLabelSize : UDim2,
	TextureRowSize : UDim2,
	TextureSize : UDim2,
	TitleTextSize : number,
}

local MaterialInformation = Roact.PureComponent:extend("MaterialInformation")

function MaterialInformation:init()
	self.createTextureElement = function(name : string, image : string, layoutOrder : number)
		local props : _Props = self.props
		local style : _Style = props.Stylizer.MaterialDetails

		return Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = layoutOrder,
			Size = style.TextureRowSize,
			Spacing = style.Padding,
		}, {
			Image = Roact.createElement(Image, {
				LayoutOrder = 1,
				Size = style.TextureSize,
				Style = {
					Image = image
				}
			}),
			Label = Roact.createElement(TruncatedTextLabel, {
				LayoutOrder = 2,
				Size = style.TextureLabelSize,
				Text = name,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
			})
		})
	end
end

function MaterialInformation:willUnmount()
	if self.connection then
		self.connection:Disconnect()
		self.connection = nil
	end
end

function MaterialInformation:didMount()
	local props : _Props = self.props
	local materialController = props.MaterialController

	self.connection = materialController:getMaterialChangedSignal():Connect(function(materialVariant : MaterialVariant)
		if self.props.Material and self.props.Material.MaterialVariant == materialVariant then
			self:setState({})
		end
	end)
end

function MaterialInformation:render()
	local props : _Props = self.props
	local style : _Style = props.Stylizer.MaterialDetails
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
		ColorMap = self.createTextureElement(
			localization:getText("MaterialTextures", "Color"),
			colorMap,
			layoutOrderIterator:getNextOrder()
		),
		NormalMap = self.createTextureElement(
			localization:getText("MaterialTextures", "Normal"),
			normalMap,
			layoutOrderIterator:getNextOrder()
		),
		MetalnessMap = self.createTextureElement(
			localization:getText("MaterialTextures", "Metalness"),
			metalnessMap,
			layoutOrderIterator:getNextOrder()
		),
		RoughnessMap = self.createTextureElement(
			localization:getText("MaterialTextures", "Roughness"),
			roughnessMap,
			layoutOrderIterator:getNextOrder()
		),
	})
end

MaterialInformation = withContext({
	Analytics = Analytics,
	Localization = Localization,
	MaterialController = MaterialController,
	Stylizer = Stylizer,
})(MaterialInformation)

return RoactRodux.connect(
	function(state, props)
		return {
			Material = props.MockMaterial or state.MaterialBrowserReducer.Material,
		}
	end,
	function(dispatch)
		return {
			dispatchSetMaterial = function(material : _Types.Material)
				dispatch(SetMaterial(material))
			end,
		}
	end
)(MaterialInformation)
