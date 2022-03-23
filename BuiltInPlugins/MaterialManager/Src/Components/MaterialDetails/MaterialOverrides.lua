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
local SelectInput = UI.SelectInput
local TruncatedTextLabel = UI.TruncatedTextLabel

local Actions = Plugin.Src.Actions
local SetBaseMaterial = require(Actions.SetBaseMaterial)

local Util = Plugin.Src.Util
local MaterialController = require(Util.MaterialController)

local Components = Plugin.Src.Components
local LabeledElementList = require(Components.LabeledElementList)

local Flags = Plugin.Src.Flags
local getFFlagMaterialServiceStringOverride = require(Flags.getFFlagMaterialServiceStringOverride)

export type Props = {
	LayoutOrder : number?,
	MockMaterial : _Types.Material?,
	OpenPrompt : (type : string) -> (),
}

type _Props = Props & { 
	Analytics : any,
	dispatchSetBaseMaterial : (baseMaterial : string) -> (),
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
	HeaderSize : UDim2,
	ImagePosition : UDim2,
	ImageSize : UDim2,
	LabelColumnWidth : UDim,
	MoreMenu : _Types.Image,
	NameLabelSize : UDim2,
	LabelRowSize : UDim2,
	Padding : number,
	TextureLabelSize : UDim2,
	TextureRowSize : UDim2,
	TextureSize : UDim2,
}

local MaterialOverrides = Roact.PureComponent:extend("MaterialOverrides")

function MaterialOverrides:init()
	self.onMaterialVariantChanged = function(materialVariant : MaterialVariant)
		local props : _Props = self.props
		local material = props.Material

		if materialVariant.BaseMaterial == material.MaterialVariant.BaseMaterial then
			self:setState({})

			return
		end

		for _, variant in ipairs(self.variants) do
			if materialVariant == variant then
				self:setState({})

				return
			end
		end
	end

	self.onOverrideChanged = function(materialEnum : Enum.Material)
		local props : _Props = self.props
		local material = props.Material
		local baseMaterial = material.MaterialVariant.BaseMaterial

		if materialEnum == baseMaterial then
			self:setState({})
		end
	end

	self.onPartItemActivated = function(value, index)
		local props : _Props = self.props
		local material = props.Material
		local baseMaterial = material.MaterialVariant.BaseMaterial

		if index == 1 then
			props.MaterialController:setPartOverride(baseMaterial)
		else
			props.MaterialController:setPartOverride(baseMaterial, self.variants[index - 1].MaterialVariant)
		end

		self:setState({})
	end

	self.onTerrainItemActivated = function(value, index)
		local props : _Props = self.props
		local material = props.Material
		local baseMaterial = material.MaterialVariant.BaseMaterial

		if index == 1 then
			props.MaterialController:setTerrainOverride(baseMaterial)
		else
			props.MaterialController:setTerrainOverride(baseMaterial, self.variants[index - 1].MaterialVariant)
		end

		self:setState({})
	end

	self.onMaterialItemActivated = function(value, index)
		local props : _Props = self.props
		local material = props.Material
		local baseMaterial = material.MaterialVariant.BaseMaterial

		if index == 1 then
			props.MaterialController:setMaterialOverride(baseMaterial)
		else
			props.MaterialController:setMaterialOverride(baseMaterial, self.variants[index - 1].MaterialVariant.Name)
		end

		self:setState({})
	end

	self.renderContent = function(key : string)
		local props : _Props = self.props
		local style = props.Stylizer.MaterialDetails

		if key == "PartOverride" then
			return Roact.createElement(SelectInput, {
				Items = self.items,
				OnItemActivated = self.onPartItemActivated,
				SelectedIndex = self.partIndex,
				Size = style.DropdownSize,
			})
		elseif key == "TerrainOverride" then
			return Roact.createElement(SelectInput, {
				Items = self.items,
				OnItemActivated = self.onTerrainItemActivated,
				SelectedIndex = self.terrainIndex,
				Size = style.DropdownSize,
			})
		elseif key == "MaterialOverride" then
			return Roact.createElement(SelectInput, {
				Items = self.items,
				OnItemActivated = self.onMaterialItemActivated,
				SelectedIndex = self.materialIndex,
				Size = style.DropdownSize,
			})
		end

		return nil
	end

	self.getText = function(key: string)
		local props : _Props = self.props
		local localization = props.Localization

		return localization:getText("MaterialOverrides", key)
	end

	self.variants = {}
end

function MaterialOverrides:willUnmount()
	if self.connection then
		self.connection:Disconnect()
		self.connection = nil
	end

	if self.overrideChanged then
		self.overrideChanged:Disconnect()
		self.overrideChanged = nil
	end
end

function MaterialOverrides:didMount()
	local props : _Props = self.props

	self.connection = props.MaterialController:getMaterialChangedSignal():Connect(self.onMaterialVariantChanged)
	self.overrideChanged = props.MaterialController:getOverrideChangedSignal():Connect(self.onOverrideChanged)
end

function MaterialOverrides:render()
	local props : _Props = self.props
	local style = props.Stylizer.MaterialDetails
	local localization = props.Localization
	local material = props.Material

	if not material then
		return Roact.createElement(Pane)
	end

	local materialVariant = material.MaterialVariant
	local baseMaterial = materialVariant.BaseMaterial

	local base = material.MaterialType == "Base"
	local isPart = not getFFlagMaterialServiceStringOverride() and (material.MaterialType == "Part" or base)
	local isTerrain = not getFFlagMaterialServiceStringOverride() and (material.MaterialType == "Terrain" or base)
	local isMaterial = getFFlagMaterialServiceStringOverride()

	local currentPartOverride
	local currentTerrainOverride
	local currentMaterialOverride
	if isPart then
		currentPartOverride = props.MaterialController:getPartOverride(baseMaterial)
	end
	if isTerrain then
		currentTerrainOverride = props.MaterialController:getTerrainOverride(baseMaterial)
	end
	if isMaterial then
		currentMaterialOverride = props.MaterialController:getMaterialOverride(baseMaterial)
	end

	self.variants = props.MaterialController:getVariants(baseMaterial)

	self.items = {
		localization:getText("MaterialOverrides", "None")
	}

	self.partIndex = 1
	self.terrainIndex = 1
	self.materialIndex = 1
	for index, variant in ipairs(self.variants) do
		table.insert(self.items, variant.MaterialVariant.Name)

		if isPart and variant.MaterialVariant == currentPartOverride then
			self.partIndex = index + 1
		end

		if isTerrain and variant.MaterialVariant == currentTerrainOverride then
			self.terrainIndex = index + 1
		end

		if isMaterial and variant.MaterialVariant.Name == currentMaterialOverride then
			self.materialIndex = index + 1
		end
	end

	local labeledElements = {}

	if isPart then
		table.insert(labeledElements, "PartOverride")
	end

	if isTerrain then
		table.insert(labeledElements, "TerrainOverride")
	end

	if isMaterial then
		table.insert(labeledElements, "MaterialOverride")
	end

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
		Spacing = style.Padding,
		Padding = style.Padding,
	}, {
		Name = Roact.createElement(TruncatedTextLabel, {
			LayoutOrder = 1,
			Font = style.HeaderFont,
			Size = style.LabelRowSize,
			Text = localization:getText("MaterialOverrides", "MaterialOverrides"),
			TextSize = style.SectionHeaderTextSize,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Overrides = Roact.createElement(LabeledElementList, {
			GetText = self.getText,
			Items = labeledElements,
			LabelColumnWidth = style.LabelColumnWidth,
			LayoutOrder = 2,
			RenderContent = self.renderContent,
			TextYAlignment = Enum.TextYAlignment.Center,
		})
	})
end

MaterialOverrides = withContext({
	Analytics = Analytics,
	Localization = Localization,
	MaterialController = MaterialController,
	Stylizer = Stylizer,
})(MaterialOverrides)

return RoactRodux.connect(
	function(state, props)
		return {
			Material = props.MockMaterial or state.MaterialBrowserReducer.Material,
		}
	end,
	function(dispatch)
		return {
			dispatchSetBaseMaterial = function(baseMaterial : string)
				dispatch(SetBaseMaterial(baseMaterial))
			end,
		}
	end
)(MaterialOverrides)

