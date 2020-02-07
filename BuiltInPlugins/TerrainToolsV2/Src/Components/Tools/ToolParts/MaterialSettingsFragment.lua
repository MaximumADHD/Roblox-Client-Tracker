local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local UILibrary = Plugin.Packages.UILibrary
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization
local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local ToolParts = script.Parent
local LabeledToggle = require(ToolParts.LabeledToggle)

local MaterialSelector = require(ToolParts.MaterialSelector)

local function MaterialSettingsFragment(props)
	return withLocalization(function(localization)
		return withTheme(function(theme)
			local layoutOrder = props.LayoutOrder or 1
			local autoMaterial = props.autoMaterial

			return Roact.createFragment({
				AutoMaterial = autoMaterial ~= nil and Roact.createElement(LabeledToggle, {
					LayoutOrder = layoutOrder,
					Text = localization:getText("MaterialSettings", "AutoMaterial"),
					IsOn = autoMaterial,
					SetIsOn = props.setAutoMaterial,
				}),

				MaterialSelector = Roact.createElement(MaterialSelector, {
					LayoutOrder = layoutOrder + 1,
					material = props.material,
					setMaterial = props.setMaterial,
				}),
			})
		end)
	end)
end

return MaterialSettingsFragment
