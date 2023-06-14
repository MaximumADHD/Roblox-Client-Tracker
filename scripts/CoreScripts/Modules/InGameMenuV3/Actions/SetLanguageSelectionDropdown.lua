--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Rodux).makeActionCreator

--[[
    selectionMapping: table, indexed starting from 1, with each value having
    languageName (string), localeCode (string), and id (number)
    selectedIndex: number
    enabled: boolean
]]

return Action(script.Name, function(selectionMapping, selectedIndex, enabled)
    return {
        selectionMapping = selectionMapping,
        selectedIndex =  selectedIndex,
        enabled = enabled,
    }
end)
