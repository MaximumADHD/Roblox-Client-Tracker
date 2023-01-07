local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)

local Rodux = dependencies.Rodux
local RoduxNetworking = dependencies.RoduxNetworking

local Contacts = require(script.Parent.Contacts)
local ShowContactImporterParams = require(script.Parent.ShowContactImporterParams)
local RoduxUserPermissions = dependencies.RoduxUserPermissions

return function()
	return Rodux.combineReducers({
		Contacts = Contacts,
		UserPermissions = RoduxUserPermissions.installReducer(),
		NetworkStatus = RoduxNetworking.installReducer(),
		ShowContactImporterParams = ShowContactImporterParams,
	})
end
