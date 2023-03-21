local ContactImporter = script.Parent.Parent
local Packages = ContactImporter.Parent
local dependencies = require(ContactImporter.dependencies)

local ContactsProtocol = require(Packages.ContactsProtocol).ContactsProtocol
local AppStorageService = game:GetService("AppStorageService")

local useSelector = dependencies.useSelector
local useDispatch = dependencies.useDispatch
local useEffectOnce = dependencies.useEffectOnce
local AutoSyncContacts = require(ContactImporter.Networking.AutoSyncContacts)

type contactImporterSettings = {
	shouldFetchContactImporterData: boolean,
	shouldShowContactImporter: boolean,
	shouldShowContactImporterModal: boolean,
}

-- mockDispatchAutoSyncContacts is used for testing only
return function(contactImporterSettings: contactImporterSettings, mockDispatchAutoSyncContacts: any?)
	local dispatch = useDispatch()
	local userId = useSelector(function(state)
		return state.LocalUserId
	end)

	local dispatchAutoSyncContacts = if mockDispatchAutoSyncContacts
		then mockDispatchAutoSyncContacts
		else function()
			dispatch(AutoSyncContacts(userId, ContactsProtocol.default, AppStorageService, true))
		end

	useEffectOnce(dispatchAutoSyncContacts, contactImporterSettings.shouldShowContactImporter)
end
