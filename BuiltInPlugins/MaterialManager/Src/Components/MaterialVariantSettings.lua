local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics

local UI = Framework.UI
local TextInput = UI.TextInput
local SelectInput = UI.SelectInput

local LabeledElementList = require(Plugin.Src.Components.LabeledElementList)
local baseMaterialsTable = require(Plugin.Src.Util.BaseMaterials)

export type Props = {
	LayoutOrder : number?,
}

type _Props = Props & {
	Analytics : any,
	Localization : any,
	Stylizer : any,
}

type _Style = {
	DialogColumnSize : UDim2,
}

local MaterialVariantSettings = Roact.PureComponent:extend("MaterialVariantSettings")

function MaterialVariantSettings:init()
	self.state = {
		currentIndex = nil,
	}

	self.baseMaterials = {}
	for key, _ in pairs(baseMaterialsTable) do
		table.insert(self.baseMaterials, key)
	end

	-- TODO update with actions functionality
	self.onNameChanged = function(name)
		if name then
			-- dispatch action
		-- Handle error
		-- else
		end
	end

	-- TODO update with actions functionality
	self.onBaseMaterialSelected = function(baseMaterial, index)
		if baseMaterial then
			-- dispatch action
			self:setState({
				currentIndex = index,
			})
		-- Handle error
		-- else
		end
	end
end

function MaterialVariantSettings:render()
	local props : _Props = self.props
	local localization = props.Localization
	local style : _Style = props.Stylizer.MaterialVariantSettings

	local items = {
		{
			Key = "NameVariant",
			Text = localization:getText("CreateDialog", "NameVariant"),
			Content = Roact.createElement(TextInput, {
				PlaceholderText = localization:getText("CreateDialog", "PlaceholderName"),
				Style = "FilledRoundedBorder",
				Size = style.DialogColumnSize,
				OnTextChanged = self.onNameChanged,
			}),
		},
		{
			Key = "BaseMaterialVariant",
			Text = localization:getText("CreateDialog", "BaseMaterialVariant"),
			Content = Roact.createElement(SelectInput, {
				Items = self.baseMaterials,
				Size = style.DialogColumnSize,
				OnItemActivated = self.onBaseMaterialSelected,
				PlaceholderText = localization:getText("CreateDialog", "PlaceholderBaseMaterial"),
				SelectedIndex = self.state.currentIndex,
			}),
		},
	}

	return Roact.createElement(LabeledElementList, {
		Items = items,
		LayoutOrder = props.LayoutOrder,
	})
end


MaterialVariantSettings = withContext({
	Analytics = Analytics,
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(MaterialVariantSettings)

return MaterialVariantSettings
