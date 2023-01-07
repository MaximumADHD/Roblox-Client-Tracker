local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local Rodux = dependencies.Rodux

export type ParamsType = {
	canUploadContacts: boolean?,
	isPhoneVerified: boolean,
	hasOSPermissions: boolean,
	shouldShowContactImporterUpsellAgain: boolean,
	isUserOptedInLocalStorage: boolean,
	phoneNumberDiscoverability: string,
	isEmailVerified: boolean?,
}

return Rodux.makeActionCreator(script.Name, function(params: ParamsType)
	assert(
		type(params) == "table",
		string.format("SetContactImporterDisplayLogic action expects params to be a table, was %s", type(params))
	)
	return params
end)
