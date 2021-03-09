local FFlagPlayerEmulatorSerializeIntoDM2 = game:GetFastFlag("PlayerEmulatorSerializeIntoDM2")

local PlayerEmulatorService = game:GetService("PlayerEmulatorService")

local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local GetUserCountryRegionCode = require(Plugin.Src.Networking.Requests.GetUserCountryRegionCode)

return function(networkingImpl, plugin)
	return function(store)
		local state = store:getState()
		local countryRegionTable = state.CountryRegion.countryRegionTable
		local cachedCountryRegionCode = plugin:GetSetting(Constants.COUNTRY_REGION_SETTING_KEY)

		if cachedCountryRegionCode and countryRegionTable[cachedCountryRegionCode] then
			if FFlagPlayerEmulatorSerializeIntoDM2 then
				PlayerEmulatorService.EmulatedCountryCode = cachedCountryRegionCode
			else
				PlayerEmulatorService.StudioEmulatedCountryRegionCode = cachedCountryRegionCode
			end
		else
			store:dispatch(GetUserCountryRegionCode(networkingImpl))
		end
	end
end
