local contactImporterModalInfo = require(script.Parent.contactImporterModalInfo)

type ContactImporterInfoType = {
	appStorageService: any,
	userid: string,
}

-- Logic that checks whether we should render the Contact Importer Upsell modal
-- from Homepage and Add Friends page
-- If user is opted in inside of local storage, this means the user has opted
-- into Contact Importer already and does not need to see the upsell modal -> return false
-- Otherwise check if user should see the modal again

return function(params: ContactImporterInfoType)
	local appStorageService = params.appStorageService
	local userid = params.userid
	local isUserOptedInLocalStorage = contactImporterModalInfo:isUserOptedInLocalStorage(appStorageService, userid)
	if isUserOptedInLocalStorage then
		return false
	end
	return contactImporterModalInfo:shouldUserSeeModalPotentiallyAgain(appStorageService, userid)
end
