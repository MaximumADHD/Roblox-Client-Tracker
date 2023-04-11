local ContactImporter = script.Parent.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local devDependencies = require(ContactImporter.devDependencies)

local sendInviteLink = require(script.Parent.sendInviteLink)
local NetworkingShareLinks = dependencies.NetworkingShareLinks
local Promise = dependencies.Promise

local renderHookWithProviders = require(ContactImporter.TestHelpers.renderHookWithProviders)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest
local beforeAll = JestGlobals.beforeAll
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local EventNames = require(ContactImporter.Analytics.Enums.EventNames)

local mockNativeUtilProtocol = require(ContactImporter.TestHelpers.mockNativeUtilProtocol)
local mockSMSProtocol = require(ContactImporter.TestHelpers.mockSMSProtocol)
local getFFlagContactImporterUseShortUrlFriendInvite =
	require(ContactImporter.Flags.getFFlagContactImporterUseShortUrlFriendInvite)

-- When removing this flag clean up mockSMSProtocol as well.
local getFFlagLuaNativeUtilEnableSMSHandling = dependencies.getFFlagLuaNativeUtilEnableSMSHandling

local ADDRESS = "12345"
local CONTACT_ID = "876"
local LINK_ID = "123412"
local LONG_INVITE_MESSAGE =
	"https://ro.blox.com/Ebh5?pid=share&is_retargeting=true&af_dp=roblox%3A%2F%2Fnavigation%2Fshare_links%3Fcode%3D123412%26type%3DFriendInvite&af_web_dp=https%3A%2F%2Fwww.roblox.com%2Fshare-links%3Fcode%3D123412%26type%3DFriendInvite\n\nFeature.Contacts.Message.InviteToRoblox"
local INVITE_MESSAGE = "www.bbc.co.uk\n\nFeature.Contacts.Message.InviteToRoblox"
describe("sendInviteLink", function()
	local defaultProps, nativeUtilProtocol, smsProtocol, calledGenerateLink
	beforeAll(function()
		NetworkingShareLinks.GenerateLink.Mock.clear()
	end)

	beforeEach(function()
		nativeUtilProtocol = mockNativeUtilProtocol().default
		smsProtocol = mockSMSProtocol().default
		defaultProps = {
			address = ADDRESS,
			deviceContactId = CONTACT_ID,
			nativeUtilProtocol = nativeUtilProtocol,
			smsProtocol = smsProtocol,
		}
		calledGenerateLink = jest.fn()
		NetworkingShareLinks.GenerateLink.Mock.reply(function()
			calledGenerateLink()
			return {
				responseBody = { linkId = "123412", shortUrl = "www.bbc.co.uk" },
			}
		end)
	end)

	afterEach(function()
		NetworkingShareLinks.GenerateLink.Mock.clear()
	end)

	it("SHOULD return table with helper function", function()
		local helper = renderHookWithProviders(function()
			return sendInviteLink(defaultProps)
		end)

		jestExpect(helper.result).toEqual({
			sendInvite = jestExpect.any("function"),
			isLoading = false,
		})
	end)

	it("SHOULD return a formatted message", function()
		local fireAnalyticsEvent = jest.fn()
		local helper = renderHookWithProviders(function()
			return sendInviteLink(defaultProps)
		end, {
			mockAnalytics = {
				fireAnalyticsEvent = fireAnalyticsEvent,
			},
		})

		helper.result.sendInvite()

		helper.rerender({})

		jestExpect(calledGenerateLink).toHaveBeenCalledTimes(1)
		jestExpect(fireAnalyticsEvent).toHaveBeenCalledTimes(1)
		jestExpect(fireAnalyticsEvent).toHaveBeenCalledWith(EventNames.InviteContact, {
			offNetworkFriendRequestLinkId = LINK_ID,
		})
		jestExpect(helper.result).toEqual({
			sendInvite = jestExpect.any("function"),
			isLoading = false,
		})

		if getFFlagLuaNativeUtilEnableSMSHandling() then
			jestExpect(nativeUtilProtocol.supportsSMS).toHaveBeenCalledTimes(1)
			jestExpect(nativeUtilProtocol.sendSMS).toHaveBeenCalledTimes(1)
			jestExpect(nativeUtilProtocol.sendSMS).toHaveBeenCalledWith(nativeUtilProtocol, {
				address = ADDRESS,
				message = if getFFlagContactImporterUseShortUrlFriendInvite()
					then INVITE_MESSAGE
					else LONG_INVITE_MESSAGE,
			})
		else
			jestExpect(smsProtocol.supportsSMS).toHaveBeenCalledTimes(1)
			jestExpect(smsProtocol.sendSMS).toHaveBeenCalledTimes(1)
			jestExpect(smsProtocol.sendSMS).toHaveBeenCalledWith(smsProtocol, {
				address = ADDRESS,
				message = if getFFlagContactImporterUseShortUrlFriendInvite()
					then INVITE_MESSAGE
					else LONG_INVITE_MESSAGE,
			})
		end
	end)

	it("SHOULD catch errors with request", function()
		NetworkingShareLinks.GenerateLink.Mock.clear()
		NetworkingShareLinks.GenerateLink.Mock.replyWithError(function()
			calledGenerateLink()
		end)
		local fireAnalyticsEvent = jest.fn()
		local helper = renderHookWithProviders(function()
			return sendInviteLink(defaultProps)
		end, {
			mockAnalytics = {
				fireAnalyticsEvent = fireAnalyticsEvent,
			},
		})

		helper.result.sendInvite()

		helper.rerender({})

		jestExpect(calledGenerateLink).toHaveBeenCalledTimes(1)
		jestExpect(fireAnalyticsEvent).never.toHaveBeenCalled()
		jestExpect(helper.result).toEqual({
			sendInvite = jestExpect.any("function"),
			isLoading = false,
		})
	end)

	it("SHOULD not send text with request if sms is not supported", function()
		if getFFlagLuaNativeUtilEnableSMSHandling() then
			nativeUtilProtocol.supportsSMS = jest.fn().mockReturnValue(Promise.resolve(false))
		else
			smsProtocol.supportsSMS = jest.fn().mockReturnValue(Promise.resolve(false))
		end
		local fireAnalyticsEvent = jest.fn()
		local helper = renderHookWithProviders(function()
			return sendInviteLink(defaultProps)
		end, {
			mockAnalytics = {
				fireAnalyticsEvent = fireAnalyticsEvent,
			},
		})

		helper.result.sendInvite()

		helper.rerender({})

		jestExpect(calledGenerateLink).toHaveBeenCalledTimes(1)
		jestExpect(fireAnalyticsEvent).never.toHaveBeenCalled()

		jestExpect(helper.result).toEqual({
			sendInvite = jestExpect.any("function"),
			isLoading = false,
		})
		if getFFlagLuaNativeUtilEnableSMSHandling() then
			jestExpect(nativeUtilProtocol.supportsSMS).toHaveBeenCalledTimes(1)
			jestExpect(nativeUtilProtocol.sendSMS).never.toHaveBeenCalled()
		else
			jestExpect(smsProtocol.supportsSMS).toHaveBeenCalledTimes(1)
			jestExpect(smsProtocol.sendSMS).never.toHaveBeenCalled()
		end
	end)

	it("SHOULD not send text with request if smsSupported fails", function()
		if getFFlagLuaNativeUtilEnableSMSHandling() then
			nativeUtilProtocol.supportsSMS = jest.fn().mockReturnValue(Promise.reject())
		else
			smsProtocol.supportsSMS = jest.fn().mockReturnValue(Promise.reject())
		end
		local fireAnalyticsEvent = jest.fn()
		local helper = renderHookWithProviders(function()
			return sendInviteLink(defaultProps)
		end, {
			mockAnalytics = {
				fireAnalyticsEvent = fireAnalyticsEvent,
			},
		})

		helper.result.sendInvite()

		helper.rerender({})

		jestExpect(calledGenerateLink).toHaveBeenCalledTimes(1)
		jestExpect(fireAnalyticsEvent).never.toHaveBeenCalled()

		jestExpect(helper.result).toEqual({
			sendInvite = jestExpect.any("function"),
			isLoading = false,
		})
		if getFFlagLuaNativeUtilEnableSMSHandling() then
			jestExpect(nativeUtilProtocol.supportsSMS).toHaveBeenCalledTimes(1)
			jestExpect(nativeUtilProtocol.sendSMS).never.toHaveBeenCalled()
		else
			jestExpect(smsProtocol.supportsSMS).toHaveBeenCalledTimes(1)
			jestExpect(smsProtocol.sendSMS).never.toHaveBeenCalled()
		end
	end)

	it("SHOULD not mark text as sent if sms sending fails", function()
		if getFFlagLuaNativeUtilEnableSMSHandling() then
			nativeUtilProtocol.sendSMS = jest.fn().mockReturnValue(Promise.reject())
		else
			smsProtocol.sendSMS = jest.fn().mockReturnValue(Promise.reject())
		end

		local fireAnalyticsEvent = jest.fn()
		local helper = renderHookWithProviders(function()
			return sendInviteLink(defaultProps)
		end, {
			mockAnalytics = {
				fireAnalyticsEvent = fireAnalyticsEvent,
			},
		})

		helper.result.sendInvite()

		helper.rerender({})

		jestExpect(calledGenerateLink).toHaveBeenCalledTimes(1)
		jestExpect(fireAnalyticsEvent).never.toHaveBeenCalled()

		jestExpect(helper.result).toEqual({
			sendInvite = jestExpect.any("function"),
			isLoading = false,
		})

		if getFFlagLuaNativeUtilEnableSMSHandling() then
			jestExpect(nativeUtilProtocol.supportsSMS).toHaveBeenCalledTimes(1)
			jestExpect(nativeUtilProtocol.sendSMS).toHaveBeenCalledTimes(1)
		else
			jestExpect(smsProtocol.supportsSMS).toHaveBeenCalledTimes(1)
			jestExpect(smsProtocol.sendSMS).toHaveBeenCalledTimes(1)
		end
	end)
end)
