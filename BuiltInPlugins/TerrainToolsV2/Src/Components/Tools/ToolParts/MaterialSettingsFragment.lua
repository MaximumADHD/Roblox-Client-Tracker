local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = require(Plugin.Src.ContextItems)

local ToolParts = script.Parent
local LabeledToggle = require(ToolParts.LabeledToggle)
local MaterialSelector = require(ToolParts.MaterialSelector)

local MaterialSettingsFragment = Roact.PureComponent:extend("MaterialSettingsFragment")

function MaterialSettingsFragment:render()
	local localization = self.props.Localization:get()

	local layoutOrder = self.props.LayoutOrder or 1
	local autoMaterial = self.props.autoMaterial

	return Roact.createFragment({
		AutoMaterial = autoMaterial ~= nil and Roact.createElement(LabeledToggle, {
			LayoutOrder = layoutOrder,
			Text = localization:getText("MaterialSettings", "AutoMaterial"),
			IsOn = autoMaterial,
			SetIsOn = self.props.setAutoMaterial,
		}),

		MaterialSelector = Roact.createElement(MaterialSelector, {
			LayoutOrder = layoutOrder + 1,
			material = self.props.material,
			setMaterial = self.props.setMaterial,
			AllowAir = self.props.AllowAir,
		}),
	})
end


MaterialSettingsFragment = withContext({
	Localization = ContextItems.UILibraryLocalization,
})(MaterialSettingsFragment)



return MaterialSettingsFragment
