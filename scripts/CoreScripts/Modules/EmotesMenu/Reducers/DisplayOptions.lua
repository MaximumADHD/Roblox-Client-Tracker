local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)

local Reducers = script.Parent
local EmotesMenu = Reducers.Parent

local Actions = EmotesMenu.Actions

local ShowMenu = require(Actions.ShowMenu)
local HideMenu = require(Actions.HideMenu)

local ShowError = require(Actions.ShowError)
local HideError = require(Actions.HideError)

local SetGuiInset = require(Actions.SetGuiInset)

local default = {
    menuVisible = false,

    guiInset = 0,

    errorVisible = false,
    errorText = "",
}

return Rodux.createReducer(default, {
    [ShowMenu.name] = function(state, action)
        return Cryo.Dictionary.join(state, {
            menuVisible = true,
        })
    end,

    [HideMenu.name] = function(state, action)
        return Cryo.Dictionary.join(state, {
            menuVisible = false,
        })
    end,

    [ShowError.name] = function(state, action)
        return Cryo.Dictionary.join(state, {
            errorVisible = true,
            errorText = action.errorText,
        })
    end,

    [HideError.name] = function(state, action)
        return Cryo.Dictionary.join(state, {
            errorVisible = false,
        })
    end,

    [SetGuiInset.name] = function(state, action)
        return Cryo.Dictionary.join(state, {
            guiInset = action.guiInset,
        })
    end,
})