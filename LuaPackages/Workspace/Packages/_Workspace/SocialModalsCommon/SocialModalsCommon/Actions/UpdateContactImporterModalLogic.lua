local SocialModalsCommon = script:FindFirstAncestor("SocialModalsCommon")
local Packages = SocialModalsCommon.Parent
local Rodux = require(Packages.Rodux)

export type ParamsType = {
	hasOSPermissions: boolean,
	shouldShowContactImporterUpsellModal: boolean,
}

return Rodux.makeActionCreator(script.Name, function(params: ParamsType)
	assert(
		type(params) == "table",
		string.format("UpdateContactImporterModalLogic action expects params to be a table, was %s", type(params))
	)
	return params
end)
