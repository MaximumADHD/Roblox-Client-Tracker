local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local PermissionsProtocol = dependencies.PermissionsProtocol
local AppStorageService = dependencies.AppStorageService
local AutoSyncContacts = dependencies.AutoSyncContacts
local FetchContactImporterParams = dependencies.FetchContactImporterParams
local getFFlagAutoSyncForContactImporterDisabled = dependencies.getFFlagAutoSyncForContactImporterDisabled
local getFFlagContactImporterOnFriendsCarousel = dependencies.getFFlagContactImporterOnFriendsCarousel

local mapDispatchToProps = function(dispatch: any)
	return {
		getContactImporterParams = if getFFlagContactImporterOnFriendsCarousel()
			then nil
			else function(userid: string)
				dispatch(FetchContactImporterParams(userid, PermissionsProtocol, AppStorageService))
			end,
		sendContacts = if not getFFlagAutoSyncForContactImporterDisabled()
			then function(userid: string, contactsProtocol: any, appStorageService: any, shouldBypassSyncCheck: boolean?)
				dispatch(AutoSyncContacts(userid, contactsProtocol, appStorageService, shouldBypassSyncCheck))
			end
			else nil,
	}
end

export type Props = typeof(mapDispatchToProps(...))

return mapDispatchToProps
