local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local Rodux = dependencies.Rodux

export type ParamsType = {
	isPhoneVerified: boolean,
}

return Rodux.makeActionCreator(script.Name, function(params: ParamsType)
	assert(
		type(params) == "table",
		string.format("SetIsPhoneVerified action expects params to be a table, was %s", type(params))
	)
	return params
end)
