local Packages = script:FindFirstAncestor("TenFootUiTesting").Parent
local Cryo = require(Packages.Cryo)
local RoactUtils = require(Packages.Dev.RoactUtils)

type ProviderSpec = RoactUtils.ProviderSpec

export type Provider = any
export type Providers = { Provider }

local function mapProviderListToSpecs(providers: Providers): { ProviderSpec }
	return Cryo.List.map(providers, function(provider)
		return {
			class = provider,
		}
	end)
end

return mapProviderListToSpecs
