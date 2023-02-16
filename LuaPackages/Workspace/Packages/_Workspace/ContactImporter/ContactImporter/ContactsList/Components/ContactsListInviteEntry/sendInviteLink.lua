local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local useDispatch = dependencies.useDispatch
local UrlBuilder = dependencies.UrlBuilder
local NetworkingShareLinks = dependencies.NetworkingShareLinks
local RoduxShareLinks = dependencies.RoduxShareLinks
local TextKeys = require(ContactImporter.Common.TextKeys)
local useLocalization = dependencies.useLocalization
local RoduxContacts = dependencies.RoduxContacts
local React = dependencies.React

local useAnalytics = require(ContactImporter.Analytics.useAnalytics)
local EventNames = require(ContactImporter.Analytics.Enums.EventNames)
local getFFlagContactImporterUseShortUrlFriendInvite =
	require(ContactImporter.Flags.getFFlagContactImporterUseShortUrlFriendInvite)

local getFFlagLuaNativeUtilEnableSMSHandling = dependencies.getFFlagLuaNativeUtilEnableSMSHandling

export type Setup = {
	address: string,
	deviceContactId: string,
	nativeUtilProtocol: any,
	smsProtocol: any,
}

local sendMessage = function(setup: Setup)
	return function(message)
		if getFFlagLuaNativeUtilEnableSMSHandling() then
			return setup.nativeUtilProtocol:supportsSMS():andThen(function(dosSupportSMS)
				if dosSupportSMS then
					return setup.nativeUtilProtocol:sendSMS({ address = setup.address, message = message })
				else
					return setup.nativeUtilProtocol.reject()
				end
			end)
		else
			return setup.smsProtocol:supportsSMS():andThen(function(dosSupportSMS)
				if dosSupportSMS then
					return setup.smsProtocol:sendSMS({ address = setup.address, message = message })
				else
					return setup.smsProtocol.reject()
				end
			end)
		end
	end
end

return function(setup: Setup)
	local dispatch = useDispatch()
	local isLoading, setIsLoading = React.useState(false)
	local completeLoading = function()
		setIsLoading(false)
	end
	local localizationKeys = useLocalization({ rootMessage = TextKeys.SMS_DEFAULT_MESSAGE })

	local analytics = useAnalytics()

	local buildMessage = function(textKeys: { rootMessage: string })
		return function(response: { responseBody: { linkId: string, shortUrl: string } })
			local linkId = response.responseBody.linkId
			local link = if getFFlagContactImporterUseShortUrlFriendInvite()
				then response.responseBody.shortUrl
				else UrlBuilder.sharelinks.appsflyer(
					linkId,
					RoduxShareLinks.Enums.LinkType.FriendInvite.rawValue()
				)

			analytics.fireAnalyticsEvent(EventNames.InviteContact, {
				offNetworkFriendRequestLinkId = linkId,
			})
			return link .. "\n\n" .. textKeys.rootMessage
		end
	end

	return {
		sendInvite = function()
			setIsLoading(true)
			return dispatch(NetworkingShareLinks.GenerateLink.API({
					linkType = RoduxShareLinks.Enums.LinkType.FriendInvite.rawValue(),
				}))
				:andThen(buildMessage(localizationKeys))
				:andThen(sendMessage(setup))
				:andThen(dispatch(RoduxContacts.Actions.RequestSent({
					id = setup.deviceContactId,
				})))
				:andThen(completeLoading)
				:catch(completeLoading)
		end,
		isLoading = isLoading,
	}
end
