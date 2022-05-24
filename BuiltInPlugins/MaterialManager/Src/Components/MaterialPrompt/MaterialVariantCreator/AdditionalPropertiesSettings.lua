local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local _Types = require(Plugin.Src.Types)

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

local Constants = Plugin.Src.Resources.Constants
local getMaterialPatterns = require(Constants.getMaterialPatterns)
local getMaterialPatternName = require(Constants.getMaterialPatternName)

local Actions = Plugin.Src.Actions
local SetStudsPerTile = require(Actions.SetStudsPerTile)
local SetMaterialPattern = require(Actions.SetMaterialPattern)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

export type Props = {
	LayoutOrder : number?,
	ErrorStudsPerTile : string?,
	setStudsPerTileError : (string?) -> (),
}

type _Props = Props & {
	Analytics : any,
	Localization : any,
	Stylizer : any,
	StudsPerTile : number,
	MaterialPattern : Enum.MaterialPattern,
	dispatchSetStudsPerTile : (number) -> (),
	dispatchSetMaterialPattern : (Enum.MaterialPattern) -> (),
}

type _Style = {
	DialogColumnSize : UDim2,
	CustomSelectInput : any,
}

local materialPatterns = getMaterialPatterns()

local AdditionalPropertiesSettings = Roact.PureComponent:extend("AdditionalPropertiesSettings")

function AdditionalPropertiesSettings:init()
	self.materialPatterns = {}

	local function isTextValid(text)
		if utf8.len(text) == 0 then
			return nil
		end
		local numberFromText = tonumber(text)
		if numberFromText and numberFromText > 0 then
			return numberFromText
		end
		return nil
	end

	self.onStudsPerTileChanged = function(text)
		local props : _Props = self.props
		local localization = props.Localization

		local numberFromText = isTextValid(text)
		if numberFromText then
			props.dispatchSetStudsPerTile(numberFromText)
			props.setStudsPerTileError(nil)
		else
			props.setStudsPerTileError(localization:getText("CreateDialog", "ErrorStudsPerTile"))
		end
	end

	self.onMaterialPatternSelected = function(materialPattern, index)
		if materialPattern then
			self.props.dispatchSetMaterialPattern(materialPatterns[index])
			self:setState({
				currentIndex = index,
			})
		end
	end

	self.renderContent = function(key: string)
		local props : _Props = self.props
		local style : _Style = props.Stylizer.AdditionalPropertiesSettings

		-- TODO: remove key strings
		if key == "StudsPerTileVariant" then
			return Roact.createElement(TextInput, {
				Style = "FilledRoundedBorder",
				Size = style.DialogColumnSize,
				Text = props.StudsPerTile,
				OnTextChanged = self.onStudsPerTileChanged,
			})
		elseif key == "MaterialPatternVariant" then
			return Roact.createElement(SelectInput, {
				Items = self.materialPatterns,
				Size = style.DialogColumnSize,
				OnItemActivated = self.onMaterialPatternSelected,
				SelectedIndex = self.state.currentIndex,
			})
		end

		return nil
	end

	self.getError = function(key: string)
		local props : _Props = self.props

		-- TODO: remove key strings
		if key == "StudsPerTileVariant" then
			return props.ErrorStudsPerTile
		end

		return nil
	end

	self.getText = function(key: string)
		local props : _Props = self.props
		local localization = props.Localization

		return localization:getText("CreateDialog", key)
	end
end

function AdditionalPropertiesSettings:didMount()
	local props : _Props = self.props

	self:setState({
		currentIndex = 1
	})

	for index, materialPattern in ipairs(materialPatterns) do
		table.insert(self.materialPatterns, props.Localization:getText("MaterialPatterns", getMaterialPatternName(materialPattern)))

		if materialPattern == props.MaterialPattern then
			self:setState({
				currentIndex = index
			})
		end
	end
end

function AdditionalPropertiesSettings:render()
	local props : _Props = self.props

	local items = {
		"StudsPerTileVariant",
		"MaterialPatternVariant",
	}

	return Roact.createElement(LabeledElementList, {
		GetText = self.getText,
		GetError = self.getError,
		Items = items,
		LayoutOrder = props.LayoutOrder,
		RenderContent = self.renderContent,
	})
end


AdditionalPropertiesSettings = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(AdditionalPropertiesSettings)



local function mapStateToProps(state : MainReducer.State, _)
	return {
		StudsPerTile = state.MaterialPromptReducer.StudsPerTile,
		MaterialPattern = state.MaterialPromptReducer.MaterialPattern,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchSetStudsPerTile = function (studsPerTile)
			dispatch(SetStudsPerTile(studsPerTile))
		end,
		dispatchSetMaterialPattern = function (materialPattern)
			dispatch(SetMaterialPattern(materialPattern))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AdditionalPropertiesSettings)
