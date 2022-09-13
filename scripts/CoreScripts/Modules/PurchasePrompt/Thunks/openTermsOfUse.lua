--!nonstrict
local Root = script.Parent.Parent

local UpsellFlow = require(Root.Enums.UpsellFlow)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)
local ExternalSettings = require(Root.Services.ExternalSettings)
local PlatformInterface = require(Root.Services.PlatformInterface)
local Thunk = require(Root.Thunk)

local requiredServices = {
	ExternalSettings,
	PlatformInterface,
}

local function openTermsOfUse()
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local externalSettings = services[ExternalSettings]
		local platformInterface = services[PlatformInterface]

		local upsellFlow = getUpsellFlow(externalSettings.getPlatform())

		if upsellFlow == UpsellFlow.Web then
			platformInterface.openTermsOfUse()
		end
	end)
end

return openTermsOfUse
