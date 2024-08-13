--!nonstrict

return function()
	local CorePackages = game:GetService("CorePackages")
	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest
	local Promise = require(CorePackages.Promise)
	local Cryo = require(CorePackages.Cryo)

	local VoiceChat = require(CorePackages.Workspace.Packages.VoiceChat)
	local Constants = VoiceChat.Constants

	local CoreGui = game:GetService("CoreGui")
	local RobloxGui = CoreGui:WaitForChild("RobloxGui")
	local HttpService = game:GetService("HttpService")
	local log = require(RobloxGui.Modules.Logger)
	local VoiceChatPromptType = require(RobloxGui.Modules.VoiceChatPrompt.PromptType)
	local MockAvatarChatService = require(RobloxGui.Modules.VoiceChat.Mocks.MockAvatarChatService)
	local act = require(CorePackages.Roact).act
	local VCSS = require(script.Parent.VoiceChatServiceStub)
	local VoiceChatServiceStub = VCSS.VoiceChatServiceStub
	local makeMockUser = VCSS.makeMockUser

	local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

	local GetFFlagAlwaysMountVoicePrompt = require(RobloxGui.Modules.Flags.GetFFlagAlwaysMountVoicePrompt)
	local GetFFlagVoiceBanShowToastOnSubsequentJoins = require(RobloxGui.Modules.Flags.GetFFlagVoiceBanShowToastOnSubsequentJoins)
	local GetFFlagJoinWithoutMicPermissions = require(RobloxGui.Modules.Flags.GetFFlagJoinWithoutMicPermissions)
	local GetFFlagUpdateNudgeV3VoiceBanUI = require(RobloxGui.Modules.Flags.GetFFlagUpdateNudgeV3VoiceBanUI)
	local GetFFlagRawMicrophonePermissions = require(RobloxGui.Modules.Flags.GetFFlagGetRawMicrophonePermissions)

	local CoreVoiceManagerKlass = require(CorePackages.Workspace.Packages.VoiceChatCore).CoreVoiceManager

	local noop = function() end
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
		}
	end

	log:addSink({
		maxLevel = log.Levels.Warning,
		log = function(self, message, context) end,
	})

	local VoiceChatServiceManagerKlass = require(script.Parent.VoiceChatServiceManager)
	local PermissionsProtocol = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol
	local BlockMock = Instance.new("BindableEvent")
	local VoiceChatServiceManager
	local AvatarChatServiceStub = MockAvatarChatService.new(stub(true), stub(true), stub(Instance.new("BindableEvent")), stub(true))

	local tutils = require(CorePackages.tutils)

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
			return callback(if GetFFlagRawMicrophonePermissions()
				then { status = resolution }
				else { hasMicPermissions = resolution == PermissionsProtocol.Status.AUTHORIZED }
			)
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

	local createCoreVoiceManager = function(voiceChatServiceStub, httpServiceStub, permissionsService, permissionFn, block, notificationMock, avatarChatServiceStub)
		return CoreVoiceManagerKlass.new(
			block,
			permissionsService,
			httpServiceStub,
			voiceChatServiceStub,
			nil,
			notificationMock,
			avatarChatServiceStub or AvatarChatServiceStub
		)
	end

	beforeEach(function(context)
		context.RobloxEventReceived = Instance.new("BindableEvent")
		context.RobloxConnectionChanged = Instance.new("BindableEvent")
		local NotificationMock = {
			RobloxEventReceived = context.RobloxEventReceived.Event,
			RobloxConnectionChanged = context.RobloxConnectionChanged.Event,
		}

		BlockMock = Instance.new("BindableEvent")
		HTTPServiceStub.GetAsyncFullUrlCB = noop
		isStudio = false
		VoiceChatServiceStub:resetMocks()

		VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
			createCoreVoiceManager(VoiceChatServiceStub, nil, nil, getPermissionsFunction, BlockMock.Event, NotificationMock),
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
		beforeAll(function(context)
			context.fflagClearUserFromRecentVoiceDataOnLeave =
				game:SetFastFlagForTesting("ClearUserFromRecentVoiceDataOnLeave", false)
			context.fintVoiceUsersInteractionExpiryTimeSeconds =
				game:SetFastIntForTesting("VoiceUsersInteractionExpiryTimeSeconds", 600)
			context.fflagVoiceChatServiceManagerUseAvatarChat =
				game:SetFastFlagForTesting("VoiceChatServiceManagerUseAvatarChat", false)
		end)

		afterAll(function(context)
			game:SetFastFlagForTesting(
				"ClearUserFromRecentVoiceDataOnLeave",
				context.fflagClearUserFromRecentVoiceDataOnLeave
			)
			game:SetFastIntForTesting(
				"VoiceUsersInteractionExpiryTimeSeconds",
				context.fintVoiceUsersInteractionExpiryTimeSeconds
			)
			game:SetFastFlagForTesting(
				"VoiceChatServiceManagerUseAvatarChat",
				context.fflagVoiceChatServiceManagerUseAvatarChat
			)
		end)

		it("Should record the timestamp when another user has unmuted", function()
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
		end)

		it("Recent user data cache should expire according to FIntVoiceUsersInteractionExpiryTimeSeconds", function()
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

	describe("Voice Chat Service Manager", function(context)
		beforeAll(function(context)
			context.fflagVoiceChatServiceManagerUseAvatarChat =
				game:SetFastFlagForTesting("VoiceChatServiceManagerUseAvatarChat", false)
			context.DebugSkipVoicePermissionCheck =
				game:SetFastFlagForTesting("DebugSkipVoicePermissionCheck", false)
		end)
		afterAll(function(context)
			game:SetFastFlagForTesting(
				"VoiceChatServiceManagerUseAvatarChat",
				context.fflagVoiceChatServiceManagerUseAvatarChat
			)
			game:SetFastFlagForTesting(
				"DebugSkipVoicePermissionCheck",
				context.DebugSkipVoicePermissionCheck
			)
		end)

		it("Participants are tracked properly when added and removed", function()
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
		end)
		itFIXME("Participants are cleared when player leaves voicechat", function()
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

		if GetFFlagJoinWithoutMicPermissions() then
			it("requestMicPermission still resolves when a malformed response is given", function()
				PermissionServiceStub.hasPermissionsCB = stubPromise({ status = PermissionsProtocol.Status.DENIED }, Promise.reject)
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
				expectToResolve(VoiceChatServiceManager:requestMicPermission())
			end)

			it("requestMicPermission rejects when permissions protocol response is denied", function()
				PermissionServiceStub.hasPermissionsCB = stubPromise({ status = PermissionsProtocol.Status.DENIED })
				PermissionServiceStub.requestPermissionsCB = stubPromise({ status = PermissionsProtocol.Status.DENIED })
				local permFn = if GetFFlagRawMicrophonePermissions()
					then getPermissionsFunction(PermissionsProtocol.Status.DENIED)
					else stub({ status = PermissionsProtocol.Status.DENIED })
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
				expectToResolve(VoiceChatServiceManager:requestMicPermission())
			end)
		else
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
		end

		if GetFFlagJoinWithoutMicPermissions() then
			it("requestMicPermission resolves when permissions protocol response is approved for join without voice permission", function()
				PermissionServiceStub.hasPermissionsCB = stubPromise({ status = PermissionsProtocol.Status.AUTHORIZED })
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
				expectToResolve(VoiceChatServiceManager:requestMicPermission())
				expect(VoiceChatServiceManager.permissionState).toBe(Constants.PERMISSION_STATE.LISTEN_AND_TALK)
			end)
		else
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
		end

		describe("permission prompt", function()
			local newContent
			beforeEach(function()
				newContent = game:SetFastFlagForTesting("UseVoiceExitBetaLanguageV2", true)
			end)
			afterEach(function()
				game:SetFastFlagForTesting("UseVoiceExitBetaLanguageV2", newContent)
			end)

			it("shows correct prompt when user is banned", function()
				VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
					createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub),
					VoiceChatServiceStub,
					HTTPServiceStub
				)
				VoiceChatServiceManager.policyMapper = mockPolicyMapper
				HTTPServiceStub.GetAsyncFullUrlCB = createVoiceOptionsJSONStub({
					universePlaceVoiceEnabledSettings = {
						isUniverseEnabledForVoice = true,
						isPlaceEnabledForVoice = false,
					},
					voiceSettings = {
						isVoiceEnabled = false,
						isBanned = true,
					},
				})
				act(function()
					VoiceChatServiceManager:userAndPlaceCanUseVoice("12345")
				end)
				waitForEvents.act()
				expect(CoreGui.RobloxVoiceChatPromptGui).never.toBeNil()
				-- expect(CoreGui.InGameMenuInformationalDialog.DialogMainFrame.TitleTextContainer.TitleText.text).toBe("Microphone use Suspended")
			end)

			if not GetFFlagAlwaysMountVoicePrompt() then
				it("Show place prompt if place is not enabled for voice", function()
					VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
						createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub),
						VoiceChatServiceStub,
						HTTPServiceStub
					)
					VoiceChatServiceManager.policyMapper = mockPolicyMapper
					isStudio = true
					VoiceChatServiceManager.runService = runServiceStub
					HTTPServiceStub.GetAsyncFullUrlCB = createVoiceOptionsJSONStub({
						universePlaceVoiceEnabledSettings = {
							isUniverseEnabledForVoice = true,
							isPlaceEnabledForVoice = false,
						},
						voiceSettings = {
							isVoiceEnabled = true,
						},
					})
					-- We need to create the prop instance before connecting events so that we can use VoiceChatServiceManager.promptSignal
					VoiceChatServiceManager:createPromptInstance(noop)
					local mock, mockFn = jest.fn()
					VoiceChatServiceManager.promptSignal.Event:Connect(mockFn)
					expect(VoiceChatServiceManager:userAndPlaceCanUseVoice("12345")).toBe(false)
					waitForEvents.act()
					expect(mock).toHaveBeenCalledWith(VoiceChatPromptType.Place)
				end)
			end

			it("Doesn't show place prompt if universe is not enabled for voice", function()
				local function isEnabled(this, _enum, permission)
					if permission == Enum.AvatarChatServiceFeature.UniverseAudio or permission == Enum.AvatarChatServiceFeature.PlaceAudio then
						return false
					end
					return true
				end
				local avatar = MockAvatarChatService.new(isEnabled, stub(0xFF), stub(Instance.new("BindableEvent")), stub(true))
				VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
					createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub, nil, nil, nil, nil, avatar),
					VoiceChatServiceStub,
					HTTPServiceStub,
					nil,
					nil,
					nil,
					nil,
					nil,
					avatar
				)
				HTTPServiceStub.GetAsyncFullUrlCB = createVoiceOptionsJSONStub({
					universePlaceVoiceEnabledSettings = {
						isUniverseEnabledForVoice = false,
						isPlaceEnabledForVoice = false,
					},
					voiceSettings = {
						isVoiceEnabled = true,
					},
				})
				-- We need to create the prop instance before connecting events so that we can use VoiceChatServiceManager.promptSignal
				VoiceChatServiceManager:createPromptInstance(noop)
				local mock, mockFn = jest.fn()
				VoiceChatServiceManager.promptSignal.Event:Connect(mockFn)
				-- This should never fire
				expect(VoiceChatServiceManager:userAndPlaceCanUseVoice("12345")).toBe(false)
				waitForEvents.act()
				expect(mock).never.toHaveBeenCalled()
			end)
		end)

		describe("Reverse Nudge", function()
			local reverseNudgeUXDisplayTimeSeconds = 0.1

			beforeAll(function(context)
				context.fintVoiceReverseNudgeUXDisplayTimeSeconds =
					game:SetFastIntForTesting("VoiceReverseNudgeUXDisplayTimeSeconds", reverseNudgeUXDisplayTimeSeconds)
			end)

			afterAll(function(context)
				game:SetFastIntForTesting(
					"VoiceReverseNudgeUXDisplayTimeSeconds",
					context.fintVoiceReverseNudgeUXDisplayTimeSeconds
				)
			end)

			it("Reverse nudge toxic user removal callback is cleared after a set delay", function()
				local testUserId = "12345"
				local addReverseNudgeToxicUserEventMock, addReverseNudgeToxicUserEventMockFn = jest.fn()
				local removeReverseNudgeToxicUserEventMock, removeReverseNudgeToxicUserEventMockFn = jest.fn()
				VoiceChatServiceManager:AddReverseNudgeToxicUser(testUserId, addReverseNudgeToxicUserEventMockFn, removeReverseNudgeToxicUserEventMockFn)
				waitForEvents()
				expect(removeReverseNudgeToxicUserEventMock).toHaveBeenCalledTimes(0)
				task.wait(reverseNudgeUXDisplayTimeSeconds + 0.1)
				expect(addReverseNudgeToxicUserEventMock).toHaveBeenCalledTimes(1)
				expect(removeReverseNudgeToxicUserEventMock).toHaveBeenCalledTimes(1)
			end)

			it("Reverse nudge toxic user removal callback is cancelled upon multiple notifications for the same user", function()
				local testUserId = "12345"
				local addReverseNudgeToxicUserEventMock, addReverseNudgeToxicUserEventMockFn = jest.fn()
				local removeReverseNudgeToxicUserEventMock, removeReverseNudgeToxicUserEventMockFn = jest.fn()
				VoiceChatServiceManager:AddReverseNudgeToxicUser(testUserId, addReverseNudgeToxicUserEventMockFn, removeReverseNudgeToxicUserEventMockFn)
				VoiceChatServiceManager:AddReverseNudgeToxicUser(testUserId, addReverseNudgeToxicUserEventMockFn, removeReverseNudgeToxicUserEventMockFn)
				VoiceChatServiceManager:AddReverseNudgeToxicUser(testUserId, addReverseNudgeToxicUserEventMockFn, removeReverseNudgeToxicUserEventMockFn)
				task.wait(reverseNudgeUXDisplayTimeSeconds + 0.1)
				expect(addReverseNudgeToxicUserEventMock).toHaveBeenCalledTimes(3)
				expect(removeReverseNudgeToxicUserEventMock).toHaveBeenCalledTimes(1)
			end)
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
				it("shows correct prompt when user does not give voice permission", function()
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

			it("shows or does not show toast when user is voice banned and has acknowledged ban", function()
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
						bannedUntil = { Seconds = 1 }
					},
					isBanned = true,
					bannedUntil = { Seconds = 1 },
					informedOfBan = true
				})

				local mock, mockFn = jest.fn()

				act(function()
					VoiceChatServiceManager:userAndPlaceCanUseVoice()
					VoiceChatServiceManager:createPromptInstance(noop)
					VoiceChatServiceManager.promptSignal.Event:Connect(mockFn)
				end)
				waitForEvents.act()

				if GetFFlagVoiceBanShowToastOnSubsequentJoins() then
					expect(mock).toHaveBeenCalledWith(VoiceChatPromptType.VoiceChatSuspendedTemporaryToast)
				else
					expect(mock).never.toHaveBeenCalled()
				end
			end)

			it("shows correct ban modal for ban reason 7 when calling userAndPlaceCanUseVoice", function()
				local core = createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub)
				VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
					core,
					VoiceChatServiceStub,
					HTTPServiceStub
				)
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

				if GetFFlagUpdateNudgeV3VoiceBanUI() then
					expect(mock).toHaveBeenCalledWith(VoiceChatPromptType.VoiceChatSuspendedTemporaryB)
				else
					expect(mock).toHaveBeenCalledWith(VoiceChatPromptType.VoiceChatSuspendedTemporary)
				end
			end)

			it("shows correct ban modal for ban reason 7 when calling ShowPlayerModeratedMessage", function()
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

				if GetFFlagUpdateNudgeV3VoiceBanUI() then
					expect(mock).toHaveBeenCalledWith(VoiceChatPromptType.VoiceChatSuspendedTemporaryB)
				else
					expect(mock).toHaveBeenCalledWith(VoiceChatPromptType.VoiceChatSuspendedTemporary)
				end
			end)

			it("shows correct ban modal for ban reason not equal to 7 when calling ShowPlayerModeratedMessage", function()
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

			it("shows correct ban modal for ban reason not equal to 7 when calling userAndPlaceCanUseVoice", function()
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

		it("VoiceChatAvailable Returns the correct values", function()
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
				createCoreVoiceManager()
			)
			expect(VoiceChatServiceManager:VoiceChatAvailable()).toBe(false)
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
				createCoreVoiceManager(VoiceChatServiceStub),
				VoiceChatServiceStub
			)
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
				local BlockMock = Instance.new("BindableEvent")
				local permFn = getPermissionsFunction()
				VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
					createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub, PermissionServiceStub, permFn, BlockMock.Event),
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
			end)

			it("we call subscribe unblock when a user is unblocked", function()
				local UnblockMock = Instance.new("BindableEvent")
				local permFn = getPermissionsFunction()
				VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
					createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub, PermissionServiceStub, permFn, UnblockMock.Event),
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
		end)

		it("ToggleMuteSome toggles isMutedLocally", function()
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
		end)

		it("Rejoin clears participants", function()
			local ClearStateOnRejoinOld = game:SetFastFlagForTesting("ClearVoiceStateOnRejoin", true)
			expect(VoiceChatServiceManager).never.toBeNil()
			VoiceChatServiceStub:addUsers({ makeMockUser("001"), makeMockUser("002") })

			expect(deepEqual(VoiceChatServiceManager.participants, {
				["001"] = makeMockUser("001"),
				["002"] = makeMockUser("002"),
			})).toBe(true)
			VoiceChatServiceManager:RejoinCurrentChannel()
			expect(deepEqual(VoiceChatServiceManager.participants, {})).toBe(true)
			game:SetFastFlagForTesting("ClearVoiceStateOnRejoin", ClearStateOnRejoinOld)
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
			local AvatarChatServiceStub = MockAvatarChatService.new(mockIsEnabled, mockEnableVoice, mockGetPropertyChangedSignal, mockGetClientFeaturesAsync)
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
				createCoreVoiceManager(VoiceChatServiceStub, HTTPServiceStub, PermissionServiceStub, nil, nil, nil, AvatarChatServiceStub),
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
			beforeAll(function(c)
				c.fflagVoiceChatServiceManagerUseAvatarChat =
					game:SetFastFlagForTesting("VoiceChatServiceManagerUseAvatarChat", false)
			end)

			afterAll(function(c)
				game:SetFastFlagForTesting(
					"VoiceChatServiceManagerUseAvatarChat",
					c.fflagVoiceChatServiceManagerUseAvatarChat
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

		describe("watchSignalR", function()
			beforeAll(function(context)
				context.fflagVoiceChatServiceManagerUseAvatarChat =
					game:SetFastFlagForTesting("VoiceChatServiceManagerUseAvatarChat", false)
			end)
			afterAll(function(context)
				game:SetFastFlagForTesting(
					"VoiceChatServiceManagerUseAvatarChat",
					context.fflagVoiceChatServiceManagerUseAvatarChat
				)
			end)

			local function makeEventMessage(namespace, seqNum)
				return {
					namespace = namespace,
					detail = HttpService:JSONEncode({ SequenceNumber = seqNum }),
					detailType = "",
				}
			end

			it("should ignore missed sequence numbers in other namespaces", function(context)
				local flag = game:SetFastFlagForTesting("VoiceChatWatchForMissedSignalROnEventReceived", true)
				VoiceChatServiceManager:watchSignalR()

				context.RobloxEventReceived:Fire(makeEventMessage("NotVoiceNotifications", 1))
				context.RobloxEventReceived:Fire(makeEventMessage("NotVoiceNotifications", 2))
				context.RobloxEventReceived:Fire(makeEventMessage("NotVoiceNotifications", 4))
				waitForEvents()

				expect(VoiceChatServiceStub.joinCalled).toBe(false)
				game:SetFastFlagForTesting("VoiceChatWatchForMissedSignalROnEventReceived", flag)
			end)

			it("should call join if VoiceNotifications missed a sequence number", function(context)
				local flag = game:SetFastFlagForTesting("VoiceChatWatchForMissedSignalROnEventReceived", true)
				VoiceChatServiceManager:watchSignalR()

				context.RobloxEventReceived:Fire(makeEventMessage("VoiceNotifications", 1))
				context.RobloxEventReceived:Fire(makeEventMessage("VoiceNotifications", 2))
				context.RobloxEventReceived:Fire(makeEventMessage("VoiceNotifications", 4))
				waitForEvents()

				expect(VoiceChatServiceStub.joinCalled).toBe(true)
				game:SetFastFlagForTesting("VoiceChatWatchForMissedSignalROnEventReceived", flag)
			end)

			it("should not call join if VoiceNotifications did not miss a sequence number", function(context)
				local flag = game:SetFastFlagForTesting("VoiceChatWatchForMissedSignalROnEventReceived", true)
				VoiceChatServiceManager:watchSignalR()

				context.RobloxEventReceived:Fire(makeEventMessage("VoiceNotifications", 1))
				context.RobloxEventReceived:Fire(makeEventMessage("VoiceNotifications", 2))
				context.RobloxEventReceived:Fire(makeEventMessage("VoiceNotifications", 3))
				waitForEvents()

				expect(VoiceChatServiceStub.joinCalled).toBe(false)
				game:SetFastFlagForTesting("VoiceChatWatchForMissedSignalROnEventReceived", flag)
			end)

			it("should not call join on first connect", function(context)
				-- Note that join is called on first connect, but that's handled elsewhere
				VoiceChatServiceManager:watchSignalR()

				context.RobloxConnectionChanged:Fire(
					"signalR",
					Enum.ConnectionState.Connected,
					101,
					'{"VoiceNotifications":101}'
				)
				waitForEvents()

				expect(VoiceChatServiceStub.joinCalled).toBe(false)
			end)

			it("should not call join if no sequence numbers were missed", function(context)
				local evtFlag = game:SetFastFlagForTesting("VoiceChatWatchForMissedSignalROnEventReceived", true)
				VoiceChatServiceManager:watchSignalR()

				context.RobloxEventReceived:Fire(makeEventMessage("VoiceNotifications", 1))
				context.RobloxConnectionChanged:Fire("signalR", Enum.ConnectionState.Disconnected, 101, "")
				context.RobloxConnectionChanged:Fire(
					"signalR",
					Enum.ConnectionState.Connected,
					101,
					'{"VoiceNotifications":2}'
				)
				waitForEvents()

				expect(VoiceChatServiceStub.joinCalled).toBe(false)
				game:SetFastFlagForTesting("VoiceChatWatchForMissedSignalROnEventReceived", evtFlag)
			end)

			it("should call join if a sequence number was missed on reconnect", function(context)
				local evtFlag = game:SetFastFlagForTesting("VoiceChatWatchForMissedSignalROnEventReceived", true)
				VoiceChatServiceManager:watchSignalR()

				context.RobloxEventReceived:Fire(makeEventMessage("VoiceNotifications", 1))
				context.RobloxConnectionChanged:Fire("signalR", Enum.ConnectionState.Disconnected, 101, "")
				context.RobloxConnectionChanged:Fire(
					"signalR",
					Enum.ConnectionState.Connected,
					101,
					'{"VoiceNotifications":3}'
				)
				waitForEvents()

				expect(VoiceChatServiceStub.joinCalled).toBe(true)
				game:SetFastFlagForTesting("VoiceChatWatchForMissedSignalROnEventReceived", evtFlag)
			end)

			it("should ignore sequence numbers from other namespaces", function(context)
				local evtFlag = game:SetFastFlagForTesting("VoiceChatWatchForMissedSignalROnEventReceived", true)
				VoiceChatServiceManager:watchSignalR()

				context.RobloxEventReceived:Fire(makeEventMessage("VoiceNotifications", 1))
				context.RobloxEventReceived:Fire(makeEventMessage("OtherNotifications", 1))
				context.RobloxConnectionChanged:Fire("signalR", Enum.ConnectionState.Disconnected, 101, "")
				context.RobloxConnectionChanged:Fire(
					"signalR",
					Enum.ConnectionState.Connected,
					101,
					'{"VoiceNotifications":2, "OtherNotifications":3}'
				)
				waitForEvents()

				expect(VoiceChatServiceStub.joinCalled).toBe(false)
				game:SetFastFlagForTesting("VoiceChatWatchForMissedSignalROnEventReceived", evtFlag)
			end)

			it("should ignore bad JSON responses", function(context)
				local evtFlag = game:SetFastFlagForTesting("VoiceChatWatchForMissedSignalROnEventReceived", true)
				VoiceChatServiceManager:watchSignalR()

				context.RobloxEventReceived:Fire(makeEventMessage("VoiceNotifications", 1))
				context.RobloxConnectionChanged:Fire("signalR", Enum.ConnectionState.Disconnected, 101, "")
				context.RobloxConnectionChanged:Fire("signalR", Enum.ConnectionState.Connected, 101, "INVALID JSON")
				context.RobloxConnectionChanged:Fire(
					"signalR",
					Enum.ConnectionState.Connected,
					101,
					'{"VoiceNotifications":2}'
				)
				waitForEvents()

				expect(VoiceChatServiceStub.joinCalled).toBe(false)
				game:SetFastFlagForTesting("VoiceChatWatchForMissedSignalROnEventReceived", evtFlag)
			end)
		end)
	end)
end
