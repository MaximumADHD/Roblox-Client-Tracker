local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local TextInput = UI.TextInput
local SelectInput = UI.SelectInput

local LabeledElementList = require(Plugin.Src.Components.LabeledElementList)

local getSupportedMaterials = require(Plugin.Src.Util.getSupportedMaterials)
local getMaterialName = require(Plugin.Src.Util.getMaterialName)

local Actions = Plugin.Src.Actions
local SetName = require(Actions.SetName)
local SetBaseMaterial = require(Actions.SetBaseMaterial)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

export type Props = {
	LayoutOrder : number?,
	ErrorName : string?,
	ErrorBaseMaterial : string?,
}

type _Props = Props & {
	Analytics : any,
	BaseMaterial : Enum.Material,
	Localization : any,
	Name : string,
	Stylizer : any,
	dispatchSetName : (string) -> (),
	dispatchSetBaseMaterial : (Enum.Material) -> (),
}

type _Style = {
	DialogColumnSize : UDim2,
}

local materials = getSupportedMaterials()

local GeneralSettings = Roact.PureComponent:extend("GeneralSettings")

function GeneralSettings:init()
	self.state = {
		currentIndex = nil,
	}

	self.baseMaterials = {}

	self.onNameChanged = function(name)
		if name and name ~= "" then
			self.props.dispatchSetName(name)
		else
			self.props.dispatchSetName("")
		end
	end

	self.onBaseMaterialSelected = function(baseMaterial, index)
		if baseMaterial then
			self.props.dispatchSetBaseMaterial(materials[index])
			self:setState({
				currentIndex = index,
			})
		end
	end

	self.renderContent = function(key: string)
		local props : _Props = self.props
		local localization = props.Localization
		local style : _Style = props.Stylizer.GeneralSettings

		-- TODO: remove key strings
		if key == "NameVariant" then
			return Roact.createElement(TextInput, {
				PlaceholderText = localization:getText("CreateDialog", "PlaceholderName"),
				Style = "FilledRoundedBorder",
				Size = style.DialogColumnSize,
				Text = props.Name,
				OnTextChanged = self.onNameChanged,
			})
		elseif key == "BaseMaterialVariant" then
			return Roact.createElement(SelectInput, {
				Items = self.baseMaterials,
				Size = style.DialogColumnSize,
				OnItemActivated = self.onBaseMaterialSelected,
				PlaceholderText = localization:getText("CreateDialog", "PlaceholderBaseMaterial"),
				SelectedIndex = self.state.currentIndex,
			})
		end

		return nil
	end

	self.getError = function(key: string)
		local props : _Props = self.props
		
		-- TODO: remove key strings
		if key == "NameVariant" then
			return props.ErrorName
		elseif key == "BaseMaterialVariant" then
			return props.ErrorBaseMaterial
		end
		
		return nil
	end

	self.getText = function(key: string)
		local props : _Props = self.props
		local localization = props.Localization

		return localization:getText("CreateDialog", key)
	end
end

function GeneralSettings:didMount()
	local props : _Props = self.props

	for index, material in ipairs(materials) do
		table.insert(self.baseMaterials, self.props.Localization:getText("Materials", getMaterialName(material)))

		if material == props.BaseMaterial then
			self:setState({
				currentIndex = index
			})
		end
	end 
end

function GeneralSettings:render()
	local props : _Props = self.props

	local items = {
		"NameVariant",
		"BaseMaterialVariant",
	}

	return Roact.createElement(LabeledElementList, {
		GetText = self.getText,
		Items = items,
		LayoutOrder = props.LayoutOrder,
		RenderContent = self.renderContent,
		GetError = self.getError,
	})
end


GeneralSettings = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(GeneralSettings)

local function mapStateToProps(state : MainReducer.State, _)
	return {
		Name = state.MaterialPromptReducer.Name,
		BaseMaterial = state.MaterialPromptReducer.BaseMaterial,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchSetName = function (name)
			dispatch(SetName(name))
		end,
		dispatchSetBaseMaterial = function (baseMaterial)
			dispatch(SetBaseMaterial(baseMaterial))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(GeneralSettings)
