--!nonstrict
local Root = script.Parent.Parent

local SetPromptState = require(Root.Actions.SetPromptState)
local PromptState = require(Root.Enums.PromptState)
local PlatformInterface = require(Root.Services.PlatformInterface)
local Thunk = require(Root.Thunk)

local requiredServices = {
    PlatformInterface,
}

local function openRobuxStore()
    return Thunk.new(script.Name, requiredServices, function(store, services)
        local platformInterface = services[PlatformInterface]

        store:dispatch(SetPromptState(PromptState.UpsellInProgress))
        platformInterface.openRobuxStore()
    end)
end

return openRobuxStore
