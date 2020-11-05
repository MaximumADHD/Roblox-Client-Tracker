local FFlagPlayerEmulatorSerializeIntoDM = game:GetFastFlag("PlayerEmulatorSerializeIntoDM")

local PlayerEmulatorService = game:GetService("PlayerEmulatorService")

local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local GetUserCountryRegionCode = require(Plugin.Src.Networking.Requests.GetUserCountryRegionCode)
local OnEmulatedCountryRegionChanged = require(Plugin.Src.Actions.OnEmulatedCountryRegionChanged)

return function(networkingImpl, plugin)
	return function(store)
		local state = store:getState()

		local countryRegionTable = state.CountryRegion.countryRegionTable

		if FFlagPlayerEmulatorSerializeIntoDM then
			local serializedCountryRegionCode = PlayerEmulatorService.EmulatedCountryCode
			if serializedCountryRegionCode == nil or serializedCountryRegionCode == ""
				or countryRegionTable[serializedCountryRegionCode] == nil then
				store:dispatch(GetUserCountryRegionCode(networkingImpl))
			else
				store:dispatch(OnEmulatedCountryRegionChanged(serializedCountryRegionCode))
			end
		else
			local cachedCountryRegionCode = plugin:GetSetting(Constants.COUNTRY_REGION_SETTING_KEY)

			if cachedCountryRegionCode and countryRegionTable[cachedCountryRegionCode] then
				PlayerEmulatorService.StudioEmulatedCountryRegionCode = cachedCountryRegionCode
			else
				store:dispatch(GetUserCountryRegionCode(networkingImpl))
			end
		end
	end
end