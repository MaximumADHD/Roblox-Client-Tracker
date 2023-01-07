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

local mockSMSProtocol = require(ContactImporter.TestHelpers.mockSMSProtocol)

local ADDRESS = "12345"
local CONTACT_ID = "876"
local INVITE_MESSAGE =
	"https://ro.blox.com/Ebh5?pid=share&is_retargeting=true&af_dp=roblox%3A%2F%2Fnavigation%2Fshare_links%3Fcode%3D123412%26type%3DFriendInvite&af_web_dp=https%3A%2F%2Fwww.roblox.com%2Fshare-links%3Fcode%3D123412%26type%3DFriendInvite\n\nFeature.Contacts.Message.InviteToRoblox"
describe("sendInviteLink", function()
	local defaultProps, smsProtocol, calledGenerateLink
	beforeAll(function()
		NetworkingShareLinks.GenerateLink.Mock.clear()
	end)

	beforeEach(function()
		smsProtocol = mockSMSProtocol().default
		defaultProps = {
			address = ADDRESS,
			deviceContactId = CONTACT_ID,
			smsProtocol = smsProtocol,
		}
		calledGenerateLink = jest.fn()
		NetworkingShareLinks.GenerateLink.Mock.reply(function()
			calledGenerateLink()
			return {
				responseBody = { linkId = "123412" },
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
		local helper = renderHookWithProviders(function()
			return sendInviteLink(defaultProps)
		end)

		helper.result.sendInvite()

		helper.rerender({})

		jestExpect(calledGenerateLink).toHaveBeenCalledTimes(1)
		jestExpect(helper.result).toEqual({
			sendInvite = jestExpect.any("function"),
			isLoading = false,
		})
		jestExpect(smsProtocol.supportsSMS).toHaveBeenCalledTimes(1)
		jestExpect(smsProtocol.sendSMS).toHaveBeenCalledTimes(1)
		jestExpect(smsProtocol.sendSMS).toHaveBeenCalledWith(smsProtocol, {
			address = ADDRESS,
			message = INVITE_MESSAGE,
		})
	end)

	it("SHOULD catch errors with request", function()
		NetworkingShareLinks.GenerateLink.Mock.clear()
		NetworkingShareLinks.GenerateLink.Mock.replyWithError(function()
			calledGenerateLink()
		end)
		local helper = renderHookWithProviders(function()
			return sendInviteLink(defaultProps)
		end)

		helper.result.sendInvite()

		helper.rerender({})

		jestExpect(calledGenerateLink).toHaveBeenCalledTimes(1)
		jestExpect(helper.result).toEqual({
			sendInvite = jestExpect.any("function"),
			isLoading = false,
		})
	end)

	it("SHOULD not send text with request if sms is not supported", function()
		smsProtocol.supportsSMS = jest.fn().mockReturnValue(Promise.resolve(false))
		local helper = renderHookWithProviders(function()
			return sendInviteLink(defaultProps)
		end)

		helper.result.sendInvite()

		helper.rerender({})

		jestExpect(calledGenerateLink).toHaveBeenCalledTimes(1)
		jestExpect(helper.result).toEqual({
			sendInvite = jestExpect.any("function"),
			isLoading = false,
		})
		jestExpect(smsProtocol.supportsSMS).toHaveBeenCalledTimes(1)
		jestExpect(smsProtocol.sendSMS).never.toHaveBeenCalled()
	end)

	it("SHOULD not send text with request if smsSupported fails", function()
		smsProtocol.supportsSMS = jest.fn().mockReturnValue(Promise.reject())
		local helper = renderHookWithProviders(function()
			return sendInviteLink(defaultProps)
		end)

		helper.result.sendInvite()

		helper.rerender({})

		jestExpect(calledGenerateLink).toHaveBeenCalledTimes(1)
		jestExpect(helper.result).toEqual({
			sendInvite = jestExpect.any("function"),
			isLoading = false,
		})
		jestExpect(smsProtocol.supportsSMS).toHaveBeenCalledTimes(1)
		jestExpect(smsProtocol.sendSMS).never.toHaveBeenCalled()
	end)

	it("SHOULD not mark text as sent if sms sending fails", function()
		smsProtocol.sendSMS = jest.fn().mockReturnValue(Promise.reject())

		local helper = renderHookWithProviders(function()
			return sendInviteLink(defaultProps)
		end)

		helper.result.sendInvite()

		helper.rerender({})

		jestExpect(calledGenerateLink).toHaveBeenCalledTimes(1)
		jestExpect(helper.result).toEqual({
			sendInvite = jestExpect.any("function"),
			isLoading = false,
		})
		jestExpect(smsProtocol.supportsSMS).toHaveBeenCalledTimes(1)
		jestExpect(smsProtocol.sendSMS).toHaveBeenCalledTimes(1)
	end)
end)
