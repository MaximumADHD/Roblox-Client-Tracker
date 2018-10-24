local Thunk = require(script.Parent.Parent.Thunk)
local PlatformInterface = require(script.Parent.Parent.Services.PlatformInterface)
local ExternalSettings = require(script.Parent.Parent.Services.ExternalSettings)

local PromptState = require(script.Parent.Parent.PromptState)

local SetPromptState = require(script.Parent.Parent.Actions.SetPromptState)

local requiredServices = {
	ExternalSettings,
	PlatformInterface,
}

local function launchBuildersClubUpsell()
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local externalSettings = services[ExternalSettings]
		local platformInterface = services[PlatformInterface]

		if externalSettings.isStudio() then
			return
		end

		platformInterface.startBuildersClubUpsellWeb()
		store:dispatch(SetPromptState(PromptState.UpsellInProgress))
	end)
end

return launchBuildersClubUpsell