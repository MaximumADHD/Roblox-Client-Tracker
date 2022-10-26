--!nonstrict
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Cryo = InGameMenuDependencies.Cryo
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent

local SetLanguageSelectionDropdown = require(InGameMenu.Actions.SetLanguageSelectionDropdown)

return Rodux.createReducer({
    selectionMapping = {{
        languageName = "-----",
        localeCode = nil,
        id = nil,
    }},
    selectedIndex = 1,
    enabled = false,
}, {
    [SetLanguageSelectionDropdown.name] = function(state, action)
        return Cryo.Dictionary.join(state, {
            selectionMapping = action.selectionMapping,
            selectedIndex = action.selectedIndex,
            enabled = action.enabled,
        })
    end,
})
