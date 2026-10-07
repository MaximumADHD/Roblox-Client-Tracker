--!nonstrict

local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeAll = JestGlobals.beforeAll
local afterAll = JestGlobals.afterAll
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local Promise = require(CorePackages.Packages.Promise)
local Cryo = require(CorePackages.Packages.Cryo)

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local HttpService = game:GetService("HttpService")
local log = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger
local VoiceChatPromptType = require(RobloxGui.Modules.VoiceChatPrompt.PromptType)
local MockAvatarChatService = require(RobloxGui.Modules.VoiceChat.Mocks.MockAvatarChatService)
local MockAppStorageService = require(RobloxGui.Modules.VoiceChat.Mocks.MockAppStorageService)
local act = require(CorePackages.Packages.Roact).act
local VoiceChatServiceStub = require(CorePackages.Workspace.Packages.MockEngineServices).MockVoiceChatService
local makeMockUser = VoiceChatServiceStub.makeMockUser

local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

local GetFFlagJoinWithoutMicPermissions =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagJoinWithoutMicPermissions
local GetFFlagEnableSeamlessVoiceDataConsentToast =
	require(RobloxGui.Modules.Flags.GetFFlagEnableSeamlessVoiceDataConsentToast)
local GetFFlagSeamlessVoiceConsentToastPolicy =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSeamlessVoiceConsentToastPolicy
local GetFFlagOnlyEnableJoinVoiceInVoiceEnabledUniverses =
	require(script.Parent.Flags.GetFFlagOnlyEnableJoinVoiceInVoiceEnabledUniverses)

local CoreVoiceManagerKlass = require(CorePackages.Workspace.Packages.VoiceChatCore).CoreVoiceManager
local GetFFlagFixGetPlayerByUserIdStringCast =
	require(CorePackages.Workspace.Packages.VoiceChatCore).Flags.GetFFlagFixGetPlayerByUserIdStringCast

local FFlagProactiveVoiceRestrictionsUFR = require(script.Parent.Flags.FFlagProactiveVoiceRestrictionsUFR)

local GetFFlagVoiceChatDisruptiveVoiceNudgeEnableVariant2 =
	require(script.Parent.Flags.GetFFlagVoiceChatDisruptiveVoiceNudgeEnableVariant2)
local GetFFlagVoiceChatDisruptiveVoiceNudgeForceUseNewDACopy =
	require(script.Parent.Flags.GetFFlagVoiceChatDisruptiveVoiceNudgeForceUseNewDACopy)

local noop = function() end
local legacyIt = if FFlagProactiveVoiceRestrictionsUFR then it.skip else it
local stub = function(val)
	return function()
		return val
	end
end

local stubPromise = function(val, promise)
	return function()
		return promise and promise(val) or Promise.resolve(val)
	end
end

local expectToResolve = function(promise)
	local done = false
	local res = promise:andThen(function()
		done = true
	end)
	res:await()
	expect(done).toBe(true)
end

local expectToReject = function(promise)
	local done = false
	local res = promise:catch(function()
		done = true
	end)
	res:await()
	expect(done).toBe(true)
end

local function createVoiceOptionsJSONStub(options)
	return stub(HttpService:JSONEncode(options))
end
local mockPolicyMapper = function(policy)
	return {
		getGameInfoShowChatFeatures = function()
			return true
		end,
		getDisplayCheckboxInVoiceConsent = function()
			return true
		end,
		getDisplayDataConsentToast = function()
			return if GetFFlagSeamlessVoiceConsentToastPolicy() then true else false
		end,
	}
end

log:addSink({
	maxLevel = log.Levels.Warning,
	log = function(self, message, context) end,
})

local showProactiveVoiceRestriction = jest.fn()
jest.mock(script.Parent.Helpers.showProactiveVoiceRestriction, function()
	return showProactiveVoiceRestriction
end)

local VoiceChatServiceManagerKlass = require(script.Parent.VoiceChatServiceManager)
local VoiceChatConstants = require(script.Parent.Constants)
local PermissionsProtocol = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol

local BlockMock = Instance.new("BindableEvent")
local VoiceChatServiceManager
local AvatarChatServiceStub =
	MockAvatarChatService.new(stub(true), stub(true), stub(Instance.new("BindableEvent")), stub(true))

local tutils = require(CorePackages.Packages.tutils)

local deepEqual = tutils.deepEqual

local HTTPServiceStub = {
	GetAsyncFullUrlCB = noop,
}

function HTTPServiceStub:GetAsyncFullUrl(url)
	return self.GetAsyncFullUrlCB(url)
end

local PermissionServiceStub = {
	requestPermissionsCB = stubPromise(nil),
	hasPermissionsCB = stubPromise(nil),
}

local getPermissionsFunction = function(resolution)
	return function(callback)
		return callback({ status = resolution })
	end
end

function PermissionServiceStub:requestPermissions(type)
	return self.requestPermissionsCB(type)
end

function PermissionServiceStub:hasPermissions(type)
	return self.hasPermissionsCB(type)
end

local isStudio = false
local runServiceStub = {}
function runServiceStub:IsStudio()
	return isStudio
end

-- TODO: Change this api to use a named table instead of positional arguments
local createCoreVoiceManager = function(
	voiceChatServiceStub,
	httpServiceStub,
	permissionsService,
	permissionFn,
	block,
	notificationMock,
	avatarChatServiceStub,
	voiceOverlayOverride,
	appStorageService
)
	local coreManager = CoreVoiceManagerKlass.new(
		block,
		permissionsService,
		httpServiceStub,
		voiceChatServiceStub,
		nil,
		notificationMock,
		avatarChatServiceStub or AvatarChatServiceStub,
		appStorageService
	)

	coreManager._getShowAgeVerificationOverlayResult = Cryo.Dictionary.join({
		showAgeVerificationOverlay = false,
		elegibleToSeeVoiceUpsell = false,
		showVoiceOptInOverlay = false,
		showVoiceInExperienceUpsell = false,
		showVoiceInExperienceUpsellVariant = nil,
		showAvatarVideoOptInOverlay = false,
		universePlaceVoiceEnabledSettings = {
			isUniverseEnabledForVoice = true,
			isUniverseEnabledForAvatarVideo = true,
		},
		voiceSettings = {
			isVoiceEnabled = true,
			isUserOptIn = true,
			isUserEligible = true,
			isBanned = false,
			banReason = 0,
			bannedUntil = nil,
			canVerifyAgeForVoice = true,
			isVerifiedForVoice = true,
			denialReason = 0,
			isOptInDisabled = false,
			hasEverOpted = true,
			isAvatarVideoEnabled = true,
			isAvatarVideoOptIn = true,
			isAvatarVideoOptInDisabled = false,
			isAvatarVideoEligible = true,
			hasEverOptedAvatarVideo = true,
			userHasAvatarCameraAlwaysAvailable = false,
			canVerifyPhoneForVoice = false,
			seamlessVoiceStatus = 1,
			allowVoiceDataUsage = false,
		},
		showDataConsentToast = false,
	}, voiceOverlayOverride or {})

	return coreManager
end

beforeEach(function()
	local robloxEventReceived = Instance.new("BindableEvent")
	local robloxConnectionChanged = Instance.new("BindableEvent")
	local NotificationMock = {
		RobloxEventReceived = robloxEventReceived.Event,
		RobloxConnectionChanged = robloxConnectionChanged.Event,
	}

	BlockMock = Instance.new("BindableEvent")
	HTTPServiceStub.GetAsyncFullUrlCB = noop
	isStudio = false
	VoiceChatServiceStub:resetMocks()

	VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
		createCoreVoiceManager(
			VoiceChatServiceStub,
			nil,
			nil,
			getPermissionsFunction,
			BlockMock.Event,
			NotificationMock
		),
		VoiceChatServiceStub,
		nil,
		nil,
		BlockMock.Event,
		nil,
		NotificationMock,
		getPermissionsFunction,
		AvatarChatServiceStub
	)
	VoiceChatServiceManager.policyMapper = mockPolicyMapper
	VoiceChatServiceManager:SetupParticipantListeners()
end)

afterEach(function()
	VoiceChatServiceManager:UnmountPrompt()
	VoiceChatServiceManager:Disconnect()
end)

describe("VoiceChatServiceManager Recent Users Interaction", function()
	local fflagClearUserFromRecentVoiceDataOnLeave
	local fintVoiceUsersInteractionExpiryTimeSeconds
	local fflagVoiceChatServiceManagerUseAvatarChat

	beforeAll(function()
		fflagClearUserFromRecentVoiceDataOnLeave =
			game:SetFastFlagForTesting("ClearUserFromRecentVoiceDataOnLeave", false)
		fintVoiceUsersInteractionExpiryTimeSeconds =
			game:SetFastIntForTesting("VoiceUsersInteractionExpiryTimeSeconds", 600)
		fflagVoiceChatServiceManagerUseAvatarChat =
			game:SetFastFlagForTesting("VoiceChatServiceManagerUseAvatarChat", false)
	end)

	afterAll(function()
		game:SetFastFlagForTesting("ClearUserFromRecentVoiceDataOnLeave", fflagClearUserFromRecentVoiceDataOnLeave)
		game:SetFastIntForTesting("VoiceUsersInteractionExpiryTimeSeconds", fintVoiceUsersInteractionExpiryTimeSeconds)
		game:SetFastFlagForTesting("VoiceChatServiceManagerUseAvatarChat", fflagVoiceChatServiceManagerUseAvatarChat)
	end)

	it("Should record the timestamp when another user has unmuted", function()
		local currentFlagFixGetPlayerByUserId = GetFFlagFixGetPlayerByUserIdStringCast()
		game:SetFastFlagForTesting("FixGetPlayerByUserIdStringCast", true)
		local mockUserA = makeMockUser("001")
		mockUserA.isMuted = true
		local mockUserB = makeMockUser("002")
		mockUserB.isMuted = true

		expect(VoiceChatServiceManager).never.toBeNil()
		expect(Cryo.isEmpty(VoiceChatServiceManager:getRecentUsersInteractionData())).toBe(true)
		VoiceChatServiceStub:addUsers({ mockUserA, mockUserB })
		expect(Cryo.isEmpty(VoiceChatServiceManager:getRecentUsersInteractionData())).toBe(true)
		mockUserA.isMuted = false
		VoiceChatServiceStub:setUserStates({ mockUserA })
		expect(#Cryo.Dictionary.values(VoiceChatServiceManager:getRecentUsersInteractionData())).toBe(1)
		game:SetFastFlagForTesting("FixGetPlayerByUserIdStringCast", currentFlagFixGetPlayerByUserId)
	end)

	it("Recent user data cache should expire according to FIntVoiceUsersInteractionExpiryTimeSeconds", function()
		local currentFlagFixGetPlayerByUserId = GetFFlagFixGetPlayerByUserIdStringCast()
		game:SetFastFlagForTesting("FixGetPlayerByUserIdStringCast", true)
		local old = game:SetFastIntForTesting("VoiceUsersInteractionExpiryTimeSeconds", 0)

		local mockUserA = makeMockUser("001")
		mockUserA.isMuted = true
		local mockUserB = makeMockUser("002")
		mockUserB.isMuted = true

		expect(VoiceChatServiceManager).never.toBeNil()
		expect(Cryo.isEmpty(VoiceChatServiceManager:getRecentUsersInteractionData())).toBe(true)
		VoiceChatServiceStub:addUsers({ mockUserA, mockUserB })
		expect(Cryo.isEmpty(VoiceChatServiceManager:getRecentUsersInteractionData())).toBe(true)
		mockUserA.isMuted = false
		VoiceChatServiceStub:setUserStates({ mockUserA })
		expect(Cryo.isEmpty(VoiceChatServiceManager:getRecentUsersInteractionData())).toBe(false)
		mockUserA.isMuted = true
		VoiceChatServiceStub:setUserStates({ mockUserA })
		expect(Cryo.isEmpty(VoiceChatServiceManager:getRecentUsersInteractionData())).toBe(true)

		game:SetFastIntForTesting("VoiceUsersInteractionExpiryTimeSeconds", old)
		game:SetFastFlagForTesting("FixGetPlayerByUserIdStringCast", currentFlagFixGetPlayerByUserId)
	end)

	it("mutedAnyone gets set when user is local muted", function()
		expect(VoiceChatServiceManager).never.toBeNil()
		VoiceChatServiceStub:addUsers({ makeMockUser("001"), makeMockUser("002") })
		expect(VoiceChatServiceManager:GetMutedAnyone()).toBe(false)
		VoiceChatServiceStub.IsSubscribePausedCB = stub(false)
		VoiceChatServiceManager:ToggleMutePlayer("002")
		expect(VoiceChatServiceManager:GetMutedAnyone()).toBe(true)
		VoiceChatServiceManager:ToggleMutePlayer("002")
		-- Should still be true after un-muting user
		expect(VoiceChatServiceManager:GetMutedAnyone()).toBe(true)
	end)

	it("mutedAnyone gets set when muteAll is called", function()
		expect(VoiceChatServiceManager).never.toBeNil()
		VoiceChatServiceStub:addUsers({ makeMockUser("001"), makeMockUser("002") })
		expect(VoiceChatServiceManager:GetMutedAnyone()).toBe(false)
		VoiceChatServiceManager:MuteAll(true)
		expect(VoiceChatServiceManager:GetMutedAnyone()).toBe(true)
		VoiceChatServiceManager:MuteAll(false)
		-- Should still be true after un-muting everyone
		expect(VoiceChatServiceManager:GetMutedAnyone()).toBe(true)
	end)

	it("mutedAnyone gets set when ToggleMuteSome is called", function()
		expect(VoiceChatServiceManager).never.toBeNil()
		VoiceChatServiceStub:addUsers({ makeMockUser("001"), makeMockUser("002"), makeMockUser("003") })
		expect(VoiceChatServiceManager:GetMutedAnyone()).toBe(false)
		VoiceChatServiceStub.IsSubscribePausedCB = stub(false)
		VoiceChatServiceManager:ToggleMuteSome({ "001", "002" }, true)
		expect(VoiceChatServiceManager:GetMutedAnyone()).toBe(true)
		VoiceChatServiceManager:ToggleMuteSome({ "001", "002" }, false)
		-- Should still be true after un-muting some
		expect(VoiceChatServiceManager:GetMutedAnyone()).toBe(true)
	end)
end)

describe("Voice Chat Service Manager", function()
	local fflagVoiceChatServiceManagerUseAvatarChat
	local debugSkipVoicePermissionCheck

	beforeAll(function()
		fflagVoiceChatServiceManagerUseAvatarChat =
			game:SetFastFlagForTesting("VoiceChatServiceManagerUseAvatarChat", false)
		debugSkipVoicePermissionCheck = game:SetFastFlagForTesting("DebugSkipVoicePermissionCheck", false)
	end)
	afterAll(function()
		game:SetFastFlagForTesting("VoiceChatServiceManagerUseAvatarChat", fflagVoiceChatServiceManagerUseAvatarChat)
		game:SetFastFlagForTesting("DebugSkipVoicePermissionCheck", debugSkipVoicePermissionCheck)
	end)

	if GetFFlagOnlyEnableJoinVoiceInVoiceEnabledUniverses() then
		it("The JoinVoice Button should only be shown in Unibar in voice enabled experiences", function()
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
				createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub),
				VoiceChatServiceStub,
				HTTPServiceStub
			)
			VoiceChatServiceManager.policyMapper = mockPolicyMapper
			VoiceChatServiceManager.runService = runServiceStub
			HTTPServiceStub.GetAsyncFullUrlCB = createVoiceOptionsJSONStub({
				universePlaceVoiceEnabledSettings = {
					isUniverseEnabledForVoice = true,
					isPlaceEnabledForVoice = true,
				},
			})
			if VoiceChatServiceManager:IsSeamlessVoice() then
				expect(VoiceChatServiceManager:ShouldShowJoinVoice()).toBe(true)
			else
				expect(VoiceChatServiceManager:ShouldShowJoinVoice()).toBe(false)
			end
		end)
	end

	it("Participants are tracked properly when added and removed", function()
		local currentFlagFixGetPlayerByUserId = GetFFlagFixGetPlayerByUserIdStringCast()
		game:SetFastFlagForTesting("FixGetPlayerByUserIdStringCast", true)
		expect(VoiceChatServiceManager).never.toBeNil()
		VoiceChatServiceStub:addUsers({ makeMockUser("001"), makeMockUser("002") })
		expect(deepEqual(VoiceChatServiceManager.participants, {
			["001"] = makeMockUser("001"),
			["002"] = makeMockUser("002"),
		})).toBe(true)
		VoiceChatServiceStub:addUsers({ makeMockUser("003"), makeMockUser("004") })
		expect(deepEqual(VoiceChatServiceManager.participants, {
			["001"] = makeMockUser("001"),
			["002"] = makeMockUser("002"),
			["003"] = makeMockUser("003"),
			["004"] = makeMockUser("004"),
		})).toBe(true)
		VoiceChatServiceStub:kickUsers({ "001", "002", "004" })
		expect(deepEqual(VoiceChatServiceManager.participants, {
			["003"] = makeMockUser("003"),
		})).toBe(true)
		VoiceChatServiceStub:addUsers({ makeMockUser("005"), makeMockUser("006") })
		expect(deepEqual(VoiceChatServiceManager.participants, {
			["003"] = makeMockUser("003"),
			["005"] = makeMockUser("005"),
			["006"] = makeMockUser("006"),
		})).toBe(true)
		game:SetFastFlagForTesting("FixGetPlayerByUserIdStringCast", currentFlagFixGetPlayerByUserId)
	end)
	it.skip("Participants are cleared when player leaves voicechat", function()
		-- TODO: Finish this when VoiceChatState is added to Enum Globally
		expect(VoiceChatServiceManager).never.toBeNil()
		VoiceChatServiceStub:addUsers({ makeMockUser("001"), makeMockUser("002") })
		expect(deepEqual(VoiceChatServiceManager.participants, {
			["001"] = makeMockUser("001"),
			["002"] = makeMockUser("002"),
		})).toBe(true)
		VoiceChatServiceStub:Disconnect()
		expect(deepEqual(VoiceChatServiceManager.participants, {})).toBe(true)
	end)
	it("requestMicPermission throws when a malformed response is given", function()
		local permFn = getPermissionsFunction()
		VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
			createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub, PermissionServiceStub, permFn),
			VoiceChatServiceStub,
			HTTPServiceStub,
			PermissionServiceStub,
			nil,
			nil,
			nil,
			permFn
		)
		expectToReject(VoiceChatServiceManager:requestMicPermission())
	end)

	it("requestMicPermission rejects when permissions protocol response is denied", function()
		local permFn = getPermissionsFunction(PermissionsProtocol.Status.DENIED)
		VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
			createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub, PermissionServiceStub, permFn),
			VoiceChatServiceStub,
			HTTPServiceStub,
			PermissionServiceStub,
			nil,
			nil,
			nil,
			permFn
		)
		PermissionServiceStub.requestPermissionsCB = stubPromise({ status = PermissionsProtocol.Status.DENIED })
		expectToReject(VoiceChatServiceManager:requestMicPermission())
	end)
	it("requestMicPermission resolves when permissions protocol response is approved", function()
		local permFn = getPermissionsFunction(PermissionsProtocol.Status.AUTHORIZED)
		VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
			createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub, PermissionServiceStub, permFn),
			VoiceChatServiceStub,
			HTTPServiceStub,
			PermissionServiceStub,
			nil,
			nil,
			nil,
			permFn
		)
		PermissionServiceStub.requestPermissionsCB = stubPromise({ status = PermissionsProtocol.Status.AUTHORIZED })
		expectToResolve(VoiceChatServiceManager:requestMicPermission())
	end)

	it("VoiceChatServiceManager asyncInit returns a promise", function()
		VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
			createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub),
			VoiceChatServiceStub,
			HTTPServiceStub
		)
		local asyncInitPromise = VoiceChatServiceManager:asyncInit()
		expect(asyncInitPromise).never.toBeNil()
	end)

	describe("permission prompt", function()
		local newContent
		beforeEach(function()
			newContent = game:SetFastFlagForTesting("UseVoiceExitBetaLanguageV2", true)
		end)
		afterEach(function()
			game:SetFastFlagForTesting("UseVoiceExitBetaLanguageV2", newContent)
		end)

		if not GetFFlagJoinWithoutMicPermissions() then
			it.skip("shows correct prompt when user does not give voice permission", function()
				local permFn = getPermissionsFunction(PermissionsProtocol.Status.DENIED)
				VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
					createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub, PermissionServiceStub, permFn),
					VoiceChatServiceStub,
					HTTPServiceStub,
					PermissionServiceStub,
					nil,
					nil,
					nil,
					permFn
				)
				VoiceChatServiceManager.policyMapper = mockPolicyMapper
				VoiceChatServiceManager.userEligible = true
				PermissionServiceStub.hasPermissionsCB = stubPromise({ status = PermissionsProtocol.Status.DENIED })
				act(function()
					VoiceChatServiceManager:CheckAndShowPermissionPrompt()
				end)
				waitForEvents.act()
				expect(CoreGui.RobloxVoiceChatPromptGui).never.toBeNil()

				local ToastContainer = CoreGui:FindFirstChild("ToastContainer", true)
				local expectedToastText = "Unable to access Microphone"

				expect(ToastContainer.Toast.ToastFrame.ToastMessageFrame.ToastTextFrame.ToastTitle.Text).toBe(
					expectedToastText
				)
			end)
		end

		legacyIt("shows or does not show toast when user is voice banned and has acknowledged ban", function()
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
				createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub),
				VoiceChatServiceStub,
				HTTPServiceStub
			)
			VoiceChatServiceManager.policyMapper = mockPolicyMapper
			VoiceChatServiceManager.runService = runServiceStub
			HTTPServiceStub.GetAsyncFullUrlCB = createVoiceOptionsJSONStub({
				universePlaceVoiceEnabledSettings = {
					isUniverseEnabledForVoice = true,
					isPlaceEnabledForVoice = false,
				},
				voiceSettings = {
					isVoiceEnabled = false,
					isBanned = true,
					bannedUntil = { Seconds = 1 },
				},
				isBanned = true,
				bannedUntil = { Seconds = 1 },
				informedOfBan = true,
			})

			local mock, mockFn = jest.fn()

			act(function()
				VoiceChatServiceManager:userAndPlaceCanUseVoice()
				VoiceChatServiceManager:createPromptInstance(noop)
				VoiceChatServiceManager.promptSignal.Event:Connect(mockFn)
			end)
			waitForEvents.act()

			expect(mock).toHaveBeenCalledWith(VoiceChatPromptType.VoiceChatSuspendedTemporaryToast)
		end)

		legacyIt("shows correct ban modal for ban reason 7 when calling userAndPlaceCanUseVoice", function()
			local core = createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub)
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(core, VoiceChatServiceStub, HTTPServiceStub)
			VoiceChatServiceManager.policyMapper = mockPolicyMapper
			VoiceChatServiceManager.runService = runServiceStub
			core.communicationPermissionsResult = {
				universePlaceVoiceEnabledSettings = {
					isUniverseEnabledForVoice = true,
					isPlaceEnabledForVoice = false,
				},
				voiceSettings = {
					isVoiceEnabled = false,
					isBanned = true,
					bannedUntil = { Seconds = 1 },
					banReason = 7,
				},
				isBanned = true,
				bannedUntil = { Seconds = 1 },
				banReason = 7,
				informedOfBan = false,
			}
			HTTPServiceStub.GetAsyncFullUrlCB = createVoiceOptionsJSONStub({
				universePlaceVoiceEnabledSettings = {
					isUniverseEnabledForVoice = true,
					isPlaceEnabledForVoice = false,
				},
				voiceSettings = {
					isVoiceEnabled = false,
					isBanned = true,
					bannedUntil = { Seconds = 1 },
					banReason = 7,
				},
				isBanned = true,
				bannedUntil = { Seconds = 1 },
				banReason = 7,
				informedOfBan = false,
			})

			local mock, mockFn = jest.fn()

			act(function()
				VoiceChatServiceManager:userAndPlaceCanUseVoice()
				VoiceChatServiceManager:createPromptInstance(noop)
				VoiceChatServiceManager.promptSignal.Event:Connect(mockFn)
			end)
			waitForEvents.act()

			if
				GetFFlagVoiceChatDisruptiveVoiceNudgeEnableVariant2()
				and GetFFlagVoiceChatDisruptiveVoiceNudgeForceUseNewDACopy()
			then
				expect(mock).toHaveBeenCalledWith(VoiceChatPromptType.VoiceChatSuspendedTemporaryBV2)
			else
				expect(mock).toHaveBeenCalledWith(VoiceChatPromptType.VoiceChatSuspendedTemporaryB)
			end
		end)

		legacyIt("shows correct ban modal for ban reason 7 when calling ShowPlayerModeratedMessage", function()
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
				createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub),
				VoiceChatServiceStub,
				HTTPServiceStub
			)
			VoiceChatServiceManager.policyMapper = mockPolicyMapper
			VoiceChatServiceManager.runService = runServiceStub
			HTTPServiceStub.GetAsyncFullUrlCB = createVoiceOptionsJSONStub({
				universePlaceVoiceEnabledSettings = {
					isUniverseEnabledForVoice = true,
					isPlaceEnabledForVoice = false,
				},
				voiceSettings = {
					isVoiceEnabled = false,
					isBanned = true,
					bannedUntil = { Seconds = 1 },
					banReason = 7,
				},
				isBanned = true,
				bannedUntil = { Seconds = 1 },
				banReason = 7,
				informedOfBan = false,
			})

			local mock, mockFn = jest.fn()

			act(function()
				VoiceChatServiceManager:ShowPlayerModeratedMessage()
				VoiceChatServiceManager:createPromptInstance(noop)
				VoiceChatServiceManager.promptSignal.Event:Connect(mockFn)
			end)
			waitForEvents.act()

			if
				GetFFlagVoiceChatDisruptiveVoiceNudgeEnableVariant2()
				and GetFFlagVoiceChatDisruptiveVoiceNudgeForceUseNewDACopy()
			then
				expect(mock).toHaveBeenCalledWith(VoiceChatPromptType.VoiceChatSuspendedTemporaryBV2)
			else
				expect(mock).toHaveBeenCalledWith(VoiceChatPromptType.VoiceChatSuspendedTemporaryB)
			end
		end)

		legacyIt("shows ban modal for ban reason other than 7 from ShowPlayerModeratedMessage", function()
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
				createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub),
				VoiceChatServiceStub,
				HTTPServiceStub
			)
			VoiceChatServiceManager.policyMapper = mockPolicyMapper
			VoiceChatServiceManager.runService = runServiceStub
			HTTPServiceStub.GetAsyncFullUrlCB = createVoiceOptionsJSONStub({
				universePlaceVoiceEnabledSettings = {
					isUniverseEnabledForVoice = true,
					isPlaceEnabledForVoice = false,
				},
				voiceSettings = {
					isVoiceEnabled = false,
					isBanned = true,
					bannedUntil = { Seconds = 1 },
					banReason = 6,
				},
				isBanned = true,
				bannedUntil = { Seconds = 1 },
				banReason = 6,
				informedOfBan = false,
			})

			local mock, mockFn = jest.fn()

			act(function()
				VoiceChatServiceManager:ShowPlayerModeratedMessage()
				VoiceChatServiceManager:createPromptInstance(noop)
				VoiceChatServiceManager.promptSignal.Event:Connect(mockFn)
			end)
			waitForEvents.act()

			expect(mock).toHaveBeenCalledWith(VoiceChatPromptType.VoiceChatSuspendedTemporary)
		end)

		it("shows the data consent toast when the necessary criteria are met", function()
			local core = createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub)
			local overlayData = VoiceChatServiceManager:FetchAgeVerificationOverlay()
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(core, VoiceChatServiceStub, HTTPServiceStub)
			VoiceChatServiceManager.policyMapper = mockPolicyMapper
			VoiceChatServiceManager.runService = runServiceStub
			core.communicationPermissionsResult = {
				showAgeVerificationOverlay = true,
				universePlaceVoiceEnabledSettings = {
					isUniverseEnabledForVoice = true,
					isPlaceEnabledForVoice = true,
				},
				voiceSettings = {
					isVoiceEnabled = true,
					seamlessVoiceStatus = 2,
				},
				showDataConsentToast = overlayData.showDataConsentToast,
			}
			HTTPServiceStub.GetAsyncFullUrlCB = createVoiceOptionsJSONStub({
				showAgeVerificationOverlay = true,
				universePlaceVoiceEnabledSettings = {
					isUniverseEnabledForVoice = true,
					isPlaceEnabledForVoice = true,
				},
				voiceSettings = {
					isVoiceEnabled = true,
					seamlessVoiceStatus = 2,
				},
				showDataConsentToast = overlayData.showDataConsentToast,
			})

			local mock, mockFn = jest.fn()

			act(function()
				VoiceChatServiceManager:showDataConsentToast()
				VoiceChatServiceManager:createPromptInstance(noop)
				VoiceChatServiceManager.promptSignal.Event:Connect(mockFn)
			end)
			waitForEvents.act()
			if
				GetFFlagEnableSeamlessVoiceDataConsentToast()
				and GetFFlagSeamlessVoiceConsentToastPolicy()
				and core.showDataConsentToast
			then
				expect(mock).toHaveBeenCalledWith(VoiceChatPromptType.VoiceDataConsentOptOutToast)
			end
		end)

		legacyIt("shows ban modal for ban reason other than 7 from userAndPlaceCanUseVoice", function()
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
				createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub),
				VoiceChatServiceStub,
				HTTPServiceStub
			)
			VoiceChatServiceManager.policyMapper = mockPolicyMapper
			VoiceChatServiceManager.runService = runServiceStub
			HTTPServiceStub.GetAsyncFullUrlCB = createVoiceOptionsJSONStub({
				universePlaceVoiceEnabledSettings = {
					isUniverseEnabledForVoice = true,
					isPlaceEnabledForVoice = false,
				},
				voiceSettings = {
					isVoiceEnabled = false,
					isBanned = true,
					bannedUntil = { Seconds = 1 },
					banReason = 6,
				},
				isBanned = true,
				bannedUntil = { Seconds = 1 },
				banReason = 6,
				informedOfBan = false,
			})

			local mock, mockFn = jest.fn()

			act(function()
				VoiceChatServiceManager:ShowPlayerModeratedMessage()
				VoiceChatServiceManager:createPromptInstance(noop)
				VoiceChatServiceManager.promptSignal.Event:Connect(mockFn)
			end)
			waitForEvents.act()

			expect(mock).toHaveBeenCalledWith(VoiceChatPromptType.VoiceChatSuspendedTemporary)
		end)
	end)

	describe("Reverse Nudge", function()
		local reverseNudgeUXDisplayTimeSeconds = 0.1
		local fintVoiceReverseNudgeUXDisplayTimeSeconds

		beforeAll(function()
			fintVoiceReverseNudgeUXDisplayTimeSeconds =
				game:SetFastIntForTesting("VoiceReverseNudgeUXDisplayTimeSeconds", reverseNudgeUXDisplayTimeSeconds)
		end)

		afterAll(function()
			game:SetFastIntForTesting(
				"VoiceReverseNudgeUXDisplayTimeSeconds",
				fintVoiceReverseNudgeUXDisplayTimeSeconds
			)
		end)

		it("Reverse nudge toxic user removal callback is cleared after a set delay", function()
			local testUserId = "12345"
			local addReverseNudgeToxicUserEventMock, addReverseNudgeToxicUserEventMockFn = jest.fn()
			local removeReverseNudgeToxicUserEventMock, removeReverseNudgeToxicUserEventMockFn = jest.fn()
			VoiceChatServiceManager:AddReverseNudgeToxicUser(
				testUserId,
				addReverseNudgeToxicUserEventMockFn,
				removeReverseNudgeToxicUserEventMockFn
			)
			waitForEvents()
			expect(removeReverseNudgeToxicUserEventMock).toHaveBeenCalledTimes(0)
			task.wait(reverseNudgeUXDisplayTimeSeconds + 0.1)
			expect(addReverseNudgeToxicUserEventMock).toHaveBeenCalledTimes(1)
			expect(removeReverseNudgeToxicUserEventMock).toHaveBeenCalledTimes(1)
		end)

		it(
			"Reverse nudge toxic user removal callback is cancelled upon multiple notifications for the same user",
			function()
				local testUserId = "12345"
				local addReverseNudgeToxicUserEventMock, addReverseNudgeToxicUserEventMockFn = jest.fn()
				local removeReverseNudgeToxicUserEventMock, removeReverseNudgeToxicUserEventMockFn = jest.fn()
				VoiceChatServiceManager:AddReverseNudgeToxicUser(
					testUserId,
					addReverseNudgeToxicUserEventMockFn,
					removeReverseNudgeToxicUserEventMockFn
				)
				VoiceChatServiceManager:AddReverseNudgeToxicUser(
					testUserId,
					addReverseNudgeToxicUserEventMockFn,
					removeReverseNudgeToxicUserEventMockFn
				)
				VoiceChatServiceManager:AddReverseNudgeToxicUser(
					testUserId,
					addReverseNudgeToxicUserEventMockFn,
					removeReverseNudgeToxicUserEventMockFn
				)
				task.wait(reverseNudgeUXDisplayTimeSeconds + 0.1)
				expect(addReverseNudgeToxicUserEventMock).toHaveBeenCalledTimes(3)
				expect(removeReverseNudgeToxicUserEventMock).toHaveBeenCalledTimes(1)
			end
		)
	end)

	describe("Enable voice mic prompt toasts", function()
		local oldToasts
		beforeEach(function()
			oldToasts = game:SetFastFlagForTesting("EnableUniveralVoiceToasts", true)
		end)
		afterEach(function()
			game:SetFastFlagForTesting("EnableUniveralVoiceToasts", oldToasts)
		end)
		if not GetFFlagJoinWithoutMicPermissions() then
			it.skip("shows correct prompt when user does not give voice permission", function()
				local permFn = getPermissionsFunction(PermissionsProtocol.Status.DENIED)
				VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
					createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub, PermissionServiceStub, permFn),
					VoiceChatServiceStub,
					HTTPServiceStub,
					PermissionServiceStub,
					nil,
					nil,
					nil,
					permFn
				)
				VoiceChatServiceManager.policyMapper = mockPolicyMapper
				VoiceChatServiceManager.userEligible = true
				PermissionServiceStub.hasPermissionsCB = stubPromise({ status = PermissionsProtocol.Status.DENIED })
				act(function()
					VoiceChatServiceManager:CheckAndShowPermissionPrompt()
				end)
				waitForEvents.act()
				expect(CoreGui.RobloxVoiceChatPromptGui).never.toBeNil()

				local ToastContainer = CoreGui:FindFirstChild("ToastContainer", true)
				local expectedToastText = "Unable to access Microphone"

				expect(ToastContainer.Toast.ToastFrame.ToastMessageFrame.ToastTextFrame.ToastTitle.Text).toBe(
					expectedToastText
				)
			end)
		end

		legacyIt("shows or does not show toast when user is voice banned and has acknowledged ban", function()
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
				createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub),
				VoiceChatServiceStub,
				HTTPServiceStub
			)
			VoiceChatServiceManager.policyMapper = mockPolicyMapper
			VoiceChatServiceManager.runService = runServiceStub
			HTTPServiceStub.GetAsyncFullUrlCB = createVoiceOptionsJSONStub({
				universePlaceVoiceEnabledSettings = {
					isUniverseEnabledForVoice = true,
					isPlaceEnabledForVoice = false,
				},
				voiceSettings = {
					isVoiceEnabled = false,
					isBanned = true,
					bannedUntil = { Seconds = 1 },
				},
				isBanned = true,
				bannedUntil = { Seconds = 1 },
				informedOfBan = true,
			})

			local mock, mockFn = jest.fn()

			act(function()
				VoiceChatServiceManager:userAndPlaceCanUseVoice()
				VoiceChatServiceManager:createPromptInstance(noop)
				VoiceChatServiceManager.promptSignal.Event:Connect(mockFn)
			end)
			waitForEvents.act()

			expect(mock).toHaveBeenCalledWith(VoiceChatPromptType.VoiceChatSuspendedTemporaryToast)
		end)

		legacyIt("shows correct ban modal for ban reason 7 when calling userAndPlaceCanUseVoice", function()
			local core = createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub)
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(core, VoiceChatServiceStub, HTTPServiceStub)
			VoiceChatServiceManager.policyMapper = mockPolicyMapper
			VoiceChatServiceManager.runService = runServiceStub
			core.communicationPermissionsResult = {
				universePlaceVoiceEnabledSettings = {
					isUniverseEnabledForVoice = true,
					isPlaceEnabledForVoice = false,
				},
				voiceSettings = {
					isVoiceEnabled = false,
					isBanned = true,
					bannedUntil = { Seconds = 1 },
					banReason = 7,
				},
				isBanned = true,
				bannedUntil = { Seconds = 1 },
				banReason = 7,
				informedOfBan = false,
			}
			HTTPServiceStub.GetAsyncFullUrlCB = createVoiceOptionsJSONStub({
				universePlaceVoiceEnabledSettings = {
					isUniverseEnabledForVoice = true,
					isPlaceEnabledForVoice = false,
				},
				voiceSettings = {
					isVoiceEnabled = false,
					isBanned = true,
					bannedUntil = { Seconds = 1 },
					banReason = 7,
				},
				isBanned = true,
				bannedUntil = { Seconds = 1 },
				banReason = 7,
				informedOfBan = false,
			})

			local mock, mockFn = jest.fn()

			act(function()
				VoiceChatServiceManager:userAndPlaceCanUseVoice()
				VoiceChatServiceManager:createPromptInstance(noop)
				VoiceChatServiceManager.promptSignal.Event:Connect(mockFn)
			end)
			waitForEvents.act()

			if
				GetFFlagVoiceChatDisruptiveVoiceNudgeEnableVariant2()
				and GetFFlagVoiceChatDisruptiveVoiceNudgeForceUseNewDACopy()
			then
				expect(mock).toHaveBeenCalledWith(VoiceChatPromptType.VoiceChatSuspendedTemporaryBV2)
			else
				expect(mock).toHaveBeenCalledWith(VoiceChatPromptType.VoiceChatSuspendedTemporaryB)
			end
		end)
	end)

	it("VoiceChatAvailable Returns the correct values", function()
		VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(createCoreVoiceManager())
		expect(VoiceChatServiceManager:VoiceChatAvailable()).toBe(false)
		VoiceChatServiceManager =
			VoiceChatServiceManagerKlass.new(createCoreVoiceManager(VoiceChatServiceStub), VoiceChatServiceStub)
		VoiceChatServiceStub.GetVoiceChatApiVersionCB = stub(2)
		expect(VoiceChatServiceManager:VoiceChatAvailable()).toBe(false)
		VoiceChatServiceStub.GetVoiceChatApiVersionCB = stub(6)
		expect(VoiceChatServiceManager:VoiceChatAvailable()).toBe(false)
		VoiceChatServiceStub.GetVoiceChatAvailableCB = stub(0)
		expect(VoiceChatServiceManager:VoiceChatAvailable()).toBe(false)
		-- We set available to nil because we cache it to keep init() itempotent
		VoiceChatServiceManager.available = nil
		VoiceChatServiceStub.GetVoiceChatAvailableCB = stub(2)
		expect(VoiceChatServiceManager:VoiceChatAvailable()).toBe(true)
	end)

	describe("BlockingUtils", function()
		it("we call subscribe block when a user is blocked", function()
			local currentFlagFixGetPlayerByUserId = GetFFlagFixGetPlayerByUserIdStringCast()
			game:SetFastFlagForTesting("FixGetPlayerByUserIdStringCast", true)
			local BlockMock = Instance.new("BindableEvent")
			local permFn = getPermissionsFunction()
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
				createCoreVoiceManager(
					VoiceChatServiceStub,
					HTTPServiceStub,
					PermissionServiceStub,
					permFn,
					BlockMock.Event
				),
				VoiceChatServiceStub,
				HTTPServiceStub,
				PermissionServiceStub,
				BlockMock.Event,
				nil,
				nil,
				permFn
			)
			VoiceChatServiceManager:SetupParticipantListeners()
			local player = makeMockUser("001")
			VoiceChatServiceStub:addUsers({ player })

			local spy, func = jest.fn(noop)
			VoiceChatServiceStub.SubscribeBlockCB = func

			BlockMock:Fire(player.UserId, true)
			waitForEvents()
			expect(spy).toHaveBeenCalledTimes(1)
			game:SetFastFlagForTesting("FixGetPlayerByUserIdStringCast", currentFlagFixGetPlayerByUserId)
		end)

		it("we call subscribe unblock when a user is unblocked", function()
			local UnblockMock = Instance.new("BindableEvent")
			local permFn = getPermissionsFunction()
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
				createCoreVoiceManager(
					VoiceChatServiceStub,
					HTTPServiceStub,
					PermissionServiceStub,
					permFn,
					UnblockMock.Event
				),
				VoiceChatServiceStub,
				HTTPServiceStub,
				PermissionServiceStub,
				UnblockMock.Event,
				nil,
				nil,
				permFn
			)
			VoiceChatServiceManager:SetupParticipantListeners()
			local player = makeMockUser("001")
			VoiceChatServiceStub:addUsers({ player })

			local spy, func = jest.fn(noop)
			VoiceChatServiceStub.SubscribeUnblockCB = func

			UnblockMock:Fire(player.UserId, false)
			waitForEvents()
			expect(spy).toHaveBeenCalledTimes(1)
		end)
	end)

	it("MuteUser toggles isMutedLocally", function()
		local currentFlagFixGetPlayerByUserId = GetFFlagFixGetPlayerByUserIdStringCast()
		game:SetFastFlagForTesting("FixGetPlayerByUserIdStringCast", true)
		expect(VoiceChatServiceManager).never.toBeNil()
		VoiceChatServiceStub:addUsers({ makeMockUser("001"), makeMockUser("002") })
		expect(deepEqual(VoiceChatServiceManager.participants, {
			["001"] = makeMockUser("001"),
			["002"] = makeMockUser("002"),
		})).toBe(true)
		VoiceChatServiceStub.IsSubscribePausedCB = stub(false)
		VoiceChatServiceManager:ToggleMutePlayer("002")
		expect(deepEqual(VoiceChatServiceManager.participants, {
			["001"] = makeMockUser("001"),
			["002"] = makeMockUser("002", true),
		})).toBe(true)

		VoiceChatServiceStub.IsSubscribePausedCB = stub(true)

		local spy, func = jest.fn(noop)
		VoiceChatServiceManager.participantsUpdate.Event:Connect(func)
		VoiceChatServiceManager:ToggleMutePlayer("002")
		waitForEvents()

		expect(spy).toHaveBeenCalledTimes(1)
		expect(deepEqual(VoiceChatServiceManager.participants, {
			["001"] = makeMockUser("001"),
			["002"] = makeMockUser("002"),
		})).toBe(true)
		game:SetFastFlagForTesting("FixGetPlayerByUserIdStringCast", currentFlagFixGetPlayerByUserId)
	end)

	it("ToggleMuteSome toggles isMutedLocally", function()
		local currentFlagFixGetPlayerByUserId = GetFFlagFixGetPlayerByUserIdStringCast()
		game:SetFastFlagForTesting("FixGetPlayerByUserIdStringCast", true)
		expect(VoiceChatServiceManager).never.toBeNil()
		VoiceChatServiceStub:addUsers({ makeMockUser("001"), makeMockUser("002"), makeMockUser("003") })
		expect(deepEqual(VoiceChatServiceManager.participants, {
			["001"] = makeMockUser("001"),
			["002"] = makeMockUser("002"),
			["003"] = makeMockUser("003"),
		})).toBe(true)
		VoiceChatServiceStub.IsSubscribePausedCB = stub(false)
		VoiceChatServiceManager:ToggleMuteSome({ "001", "002" }, true)
		expect(deepEqual(VoiceChatServiceManager.participants, {
			["001"] = makeMockUser("001", true),
			["002"] = makeMockUser("002", true),
			["003"] = makeMockUser("003"),
		})).toBe(true)
		VoiceChatServiceStub.IsSubscribePausedCB = stub(false)
		VoiceChatServiceManager:ToggleMuteSome({ "003" }, true)
		expect(deepEqual(VoiceChatServiceManager.participants, {
			["001"] = makeMockUser("001", true),
			["002"] = makeMockUser("002", true),
			["003"] = makeMockUser("003", true),
		})).toBe(true)

		VoiceChatServiceStub.IsSubscribePausedCB = stub(true)
		VoiceChatServiceManager:ToggleMuteSome({ "001", "002", "003" }, false)
		expect(deepEqual(VoiceChatServiceManager.participants, {
			["001"] = makeMockUser("001"),
			["002"] = makeMockUser("002"),
			["003"] = makeMockUser("003"),
		})).toBe(true)
		game:SetFastFlagForTesting("FixGetPlayerByUserIdStringCast", currentFlagFixGetPlayerByUserId)
	end)
end)

if FFlagProactiveVoiceRestrictionsUFR then
	describe("VoiceChatServiceManager proactive UFR routing", function()
		local settings
		local informed
		local requests
		local showPrompt

		beforeEach(function()
			settings = { isBanned = true, banReason = 7, bannedUntil = { Seconds = 2000000000 } }
			informed = false
			requests = {}
			showPrompt = jest.fn()
			rawset(VoiceChatServiceManager, "showPrompt", showPrompt)
			-- __newindex stores ban fields on the shared class table, so they would otherwise leak between tests.
			VoiceChatServiceManager.bannedUntil = nil
			VoiceChatServiceManager.banReason = nil
			VoiceChatServiceManager.coreVoiceManager.HttpRbxApiService = HTTPServiceStub
			HTTPServiceStub.GetAsyncFullUrlCB = function(url)
				table.insert(requests, url)
				if string.find(url, "/v1/settings/", 1, true) then
					return HttpService:JSONEncode(settings)
				end
				if string.find(url, "/v1/moderation/informed-of-ban", 1, true) then
					return HttpService:JSONEncode({ informedOfBan = informed })
				end
				error("Unexpected voice restriction request: " .. url)
			end
			showProactiveVoiceRestriction:mockClear()
		end)

		it("routes a join-time ban without a reason through direct UFR and existing informed status", function()
			settings.banReason = 0
			local refreshSpy = jest.spyOn(VoiceChatServiceManager.voiceRestrictionController, "refresh")
			VoiceChatServiceManager.coreVoiceManager:emit("OnUserAndPlaceCanUseVoiceResolved", settings, {})
			refreshSpy.mock.results[1].value:await()
			expect(VoiceChatServiceManager:GetVoiceRestrictionState(false)).toBe("restricted")
			expect(showProactiveVoiceRestriction).toHaveBeenCalledTimes(1)
			expect(showProactiveVoiceRestriction.mock.calls[1][1].settings).toBe(settings)
			expect(showProactiveVoiceRestriction.mock.calls[1][1].origin).toBe("gameJoin")
			expect(requests).toHaveLength(1)
			expect(requests[1]).toContain("/v1/moderation/informed-of-ban")
			expect(showPrompt).never.toHaveBeenCalled()
		end)

		it("keeps an informed join passive and resurfaces it on mic activation", function()
			informed = true
			local refreshSpy = jest.spyOn(VoiceChatServiceManager.voiceRestrictionController, "refresh")
			VoiceChatServiceManager.coreVoiceManager:emit("OnUserAndPlaceCanUseVoiceResolved", settings, {})
			refreshSpy.mock.results[1].value:await()
			expect(VoiceChatServiceManager:GetVoiceRestrictionState(false)).toBe("restricted")
			expect(showProactiveVoiceRestriction).never.toHaveBeenCalled()
			VoiceChatServiceManager:ShowVoiceRestriction()
			refreshSpy.mock.results[2].value:await()
			expect(requests).toHaveLength(2)
			expect(requests[2]).toContain("/v1/settings/")
			expect(showProactiveVoiceRestriction).toHaveBeenCalledTimes(1)
			expect(showProactiveVoiceRestriction.mock.calls[1][1].origin).toBe("mic")
			expect(showPrompt).never.toHaveBeenCalled()
		end)

		it("uses settings for realtime moderation without fetching informed status", function()
			local refreshSpy = jest.spyOn(VoiceChatServiceManager.voiceRestrictionController, "refresh")
			VoiceChatServiceManager:ShowPlayerModeratedMessage()
			refreshSpy.mock.results[1].value:await()
			expect(VoiceChatServiceManager:GetVoiceRestrictionState(false)).toBe("restricted")
			expect(requests).toHaveLength(1)
			expect(requests[1]).toContain("/v1/settings/")
			expect(showProactiveVoiceRestriction).toHaveBeenCalledTimes(1)
			expect(showProactiveVoiceRestriction.mock.calls[1][1].settings).toEqual(settings)
			expect(showProactiveVoiceRestriction.mock.calls[1][1].origin).toBe("realtime")
			expect(showPrompt).never.toHaveBeenCalled()
		end)

		it("suppresses the leave voice toast only while voice is restricted", function()
			local function shownPrompts()
				local prompts = {}
				for _, call in showPrompt.mock.calls do
					table.insert(prompts, call[2])
				end
				return prompts
			end

			VoiceChatServiceManager.runService = runServiceStub
			local VoiceChatState = (Enum :: any).VoiceChatState
			VoiceChatServiceManager.coreVoiceManager:emit("OnStateChanged", VoiceChatState.Joined, VoiceChatState.Ended)
			expect(shownPrompts()).toContain(VoiceChatPromptType.LeaveVoice)

			showPrompt:mockClear()
			settings.bannedUntil = nil
			local refreshSpy = jest.spyOn(VoiceChatServiceManager.voiceRestrictionController, "refresh")
			VoiceChatServiceManager:ShowPlayerModeratedMessage()
			refreshSpy.mock.results[1].value:await()
			expect(VoiceChatServiceManager:GetVoiceRestrictionState(false)).toBe("restricted")
			VoiceChatServiceManager.coreVoiceManager:emit("OnStateChanged", VoiceChatState.Joined, VoiceChatState.Ended)
			expect(shownPrompts()).never.toContain(VoiceChatPromptType.LeaveVoice)
		end)

		it("migrates modal nudges while keeping toxicity toasts and live voice presentation", function()
			VoiceChatServiceManager.coreVoiceManager:emit("OnVoiceToxicityModal")
			expect(showProactiveVoiceRestriction.mock.calls[1][1].settings).toBeNil()
			expect(showProactiveVoiceRestriction.mock.calls[1][1].origin).toBe("realtime")
			expect(VoiceChatServiceManager:GetVoiceRestrictionState(false)).toBe("normal")
			expect(requests).toHaveLength(0)
			VoiceChatServiceManager.coreVoiceManager:emit("OnVoiceToxicityToast")
			expect(showPrompt).toHaveBeenCalledTimes(1)
			local prompt = showPrompt.mock.calls[1][2]
			expect(
				prompt == VoiceChatPromptType.VoiceToxicityToast or prompt == VoiceChatPromptType.VoiceToxicityToastV2
			).toBe(true)
		end)
	end)
end

describe("Voice ConnectCookie", function()
	it("VoiceConnectCookie Get/Set Work Correctly", function()
		local success = VoiceChatServiceManager:SetVoiceConnectCookieValue(false)
		local cookie = VoiceChatServiceManager:GetVoiceConnectCookieValue()
		if success then
			expect(cookie).toBe(false)
		else
			expect(cookie).toBe(true)
		end
	end)
end)

describe("Voice In-Experience Upsell Features", function()
	it("EnableVoice should work as expected", function()
		local mockEnableVoice = function()
			return true
		end
		local mockIsEnabled = function()
			return true
		end
		local mockPropertyChangedEvent = Instance.new("BindableEvent")
		local mockGetPropertyChangedSignal = function()
			return mockPropertyChangedEvent.Event
		end
		local mockGetClientFeaturesAsync = function()
			return 0xFF
		end
		local AvatarChatServiceStub = MockAvatarChatService.new(
			mockIsEnabled,
			mockEnableVoice,
			mockGetPropertyChangedSignal,
			mockGetClientFeaturesAsync
		)
		VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
			createCoreVoiceManager(
				VoiceChatServiceStub,
				HTTPServiceStub,
				PermissionServiceStub,
				nil,
				nil,
				nil,
				AvatarChatServiceStub
			),
			VoiceChatServiceStub,
			HTTPServiceStub,
			PermissionServiceStub,
			nil,
			nil,
			nil,
			nil,
			AvatarChatServiceStub
		)
		local voiceRejoinEvent = Instance.new("BindableEvent")
		local mockRejoinCalled, mockJoin = jest.fn()
		voiceRejoinEvent.Event:Connect(mockJoin)
		VoiceChatServiceManager.attemptVoiceRejoin = voiceRejoinEvent
		act(function()
			VoiceChatServiceManager:EnableVoice()
			mockPropertyChangedEvent:Fire()
		end)
		waitForEvents()
		waitForEvents.act()
		expect(mockRejoinCalled).toHaveBeenCalled()
	end)
end)

describe("VoiceChatServiceManager SignalR watcher", function()
	describe("checkAndUpdateSequence VoiceChatReportOutOfOrderSequence on", function()
		local fflagVoiceChatServiceManagerUseAvatarChat

		beforeAll(function()
			fflagVoiceChatServiceManagerUseAvatarChat =
				game:SetFastFlagForTesting("VoiceChatServiceManagerUseAvatarChat", false)
		end)

		afterAll(function()
			game:SetFastFlagForTesting(
				"VoiceChatServiceManagerUseAvatarChat",
				fflagVoiceChatServiceManagerUseAvatarChat
			)
		end)

		it("should return 0 if a sequence increments normally", function()
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test", 101)).toBe(0)
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test", 102)).toBe(0)
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test", 103)).toBe(0)
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test", 104)).toBe(0)
		end)

		it("should return negative if a sequence number repeats", function()
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test", 101)).toBe(0)
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test", 102)).toBe(0)
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test", 102)).toBe(-1)
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test", 101)).toBe(-2)
		end)

		it("should return positive if it skips a number", function()
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test", 101)).toBe(0)
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test", 103)).toBe(1)
		end)

		it("should return 0 if two sequences increment on their own", function()
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test1", 101)).toBe(0)
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test2", 201)).toBe(0)
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test2", 202)).toBe(0)
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test1", 102)).toBe(0)
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test1", 103)).toBe(0)
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test2", 203)).toBe(0)
		end)

		it("should return positive if either sequence skips", function()
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test1", 101)).toBe(0)
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test2", 201)).toBe(0)
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test1", 103)).toBe(1)
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test2", 202)).toBe(0)
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test1", 104)).toBe(0)
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test2", 204)).toBe(1)
		end)

		it("should ignore nil values", function()
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test", 101)).toBe(0)
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test", nil)).toBe(0)
			expect(VoiceChatServiceManager:checkAndUpdateSequence("test", 102)).toBe(0)
		end)
	end)
end)
