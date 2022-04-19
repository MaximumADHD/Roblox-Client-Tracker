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
local ToggleButton = UI.ToggleButton
local TruncatedTextLabel = UI.TruncatedTextLabel

local Actions = Plugin.Src.Actions
local SetBaseMaterial = require(Actions.SetBaseMaterial)

local Util = Plugin.Src.Util
local MaterialController = require(Util.MaterialController)

local Components = Plugin.Src.Components
local LabeledElementList = require(Components.LabeledElementList)

export type Props = {
	LayoutOrder : number?,
	MockMaterial : _Types.Material?,
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
	CreateVariant : _Types.Image,
	Delete : _Types.Image,
	DropdownSize : UDim2,
	Edit : _Types.Image,
	HeaderBackground : Color3,
	HeaderFont : Enum.Font,
	HeaderSize : UDim2,
	ImagePosition : UDim2,
	ImageSize : UDim2,
	LabelColumnWidth : UDim,
	NameLabelSizeBuiltIn : UDim2,
	NameLabelSizeVariant : UDim2,
	LabelRowSize : UDim2,
	Padding : number,
	SectionHeaderTextSize : number,
	TextureLabelSize : UDim2,
	TextureRowSize : UDim2,
	TextureSize : UDim2,
	TitleTextSize : number,
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

	self.onMaterialItemActivated = function(value, index)
		local props : _Props = self.props
		local material = props.Material
		local baseMaterial = material.MaterialVariant.BaseMaterial

		if index == 1 then
			props.MaterialController:setMaterialOverride(baseMaterial)
		else
			props.MaterialController:setMaterialOverride(baseMaterial, self.state.items[index])
		end

		self:setState({
			materialIndex = index
		})
	end

	self.onOverrideToggled = function()
		local props : _Props = self.props
		local material = props.Material 
		local materialType = material.MaterialVariant.BaseMaterial
		local materialName = material.MaterialVariant.Name

		local materialIndex = 1
		if self.state.index ~= 1 then
			props.MaterialController:setMaterialOverride(materialType)
		else
			props.MaterialController:setMaterialOverride(materialType, materialName)

			for index, name in ipairs(self.state.items) do
				if materialName == name then
					materialIndex = index + 1
				end
			end
		end

		self:setState({
			index = materialIndex
		})
	end

	self.renderContent = function(key : string)
		local props : _Props = self.props
		local style = props.Stylizer.MaterialDetails

		if key == "MaterialOverride" then
			return Roact.createElement(SelectInput, {
				Items = self.state.items,
				OnItemActivated = self.onMaterialItemActivated,
				SelectedIndex = self.state.index,
				Size = style.DropdownSize,
			})
		elseif key == "SetOverride" then
			return Roact.createElement(ToggleButton, {
				Selected = self.state.index ~= 1,
				LayoutOrder = 1,
				OnClick = self.onOverrideToggled,
				Size = UDim2.fromOffset(40, 24),
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
	self.state = {
		items = {}
	}
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
	local localization = props.Localization
	local materialController = props.MaterialController

	self.connection = materialController:getMaterialChangedSignal():Connect(self.onMaterialVariantChanged)
	self.overrideChanged = materialController:getOverrideChangedSignal():Connect(self.onOverrideChanged)

	if props.Material then
		local items, index = props.MaterialController:getMaterialOverrides(props.Material.MaterialVariant.BaseMaterial)
		table.insert(items, 1, localization:getText("MaterialOverrides", "None"))

		self:setState({
			items = items,
			index = index + 1
		})
	end
end

function MaterialOverrides:didUpdate(prevProps : _Props)
	local props : _Props = self.props
	local localization = props.Localization
	local materialController = props.MaterialController

	if prevProps.Material ~= props.Material then
		if props.Material then
			local items, index = materialController:getMaterialOverrides(props.Material.MaterialVariant.BaseMaterial)
			table.insert(items, 1, localization:getText("MaterialOverrides", "None"))

			self:setState({
				items = items,
				index = index + 1
			})
		end
	end
end

function MaterialOverrides:render()
	local props : _Props = self.props
	local style = props.Stylizer.MaterialDetails
	local localization = props.Localization
	local material = props.Material

	if not material then
		return Roact.createElement(Pane)
	end

	local labeledElements = {}

	if material.IsBuiltin then
		table.insert(labeledElements, "MaterialOverride")
	else
		table.insert(labeledElements, "SetOverride")
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

