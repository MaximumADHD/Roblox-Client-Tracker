local SocialModalsCommon = script:FindFirstAncestor("SocialModalsCommon")
local Packages = SocialModalsCommon.Parent
local Rodux = require(Packages.Rodux)

export type ParamsType = {
	isDiscoverabilityUnset: boolean,
}

return Rodux.makeActionCreator(script.Name, function(params: ParamsType)
	assert(
		type(params) == "table",
		string.format("UpdateIsDiscoverabilityUnset action expects params to be a table, was %s", type(params))
	)
	return params
end)
