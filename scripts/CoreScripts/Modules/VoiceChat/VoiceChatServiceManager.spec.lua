--!nonstrict

return function()
	local CorePackages = game:GetService("CorePackages")
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect
	local jest = JestGlobals.jest
	local Promise = require(CorePackages.Promise)
	local Cryo = require(CorePackages.Cryo)

	local CoreGui = game:GetService("CoreGui")
	local RobloxGui = CoreGui:WaitForChild("RobloxGui")
	local HttpService = game:GetService("HttpService")
	local log = require(RobloxGui.Modules.Logger)
	local VoiceChatPromptType = require(RobloxGui.Modules.VoiceChatPrompt.PromptType)
	local Modules = CoreGui.RobloxGui.Modules
	local act = require(Modules.act)
	local VCSS = require(script.Parent.VoiceChatServiceStub)
	local VoiceChatServiceStub = VCSS.VoiceChatServiceStub
	local makeMockUser = VCSS.makeMockUser

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
		jestExpect(done).toBe(true)
	end

	local expectToReject = function(promise)
		local done = false
		local res = promise:catch(function()
			done = true
		end)
		res:await()
		jestExpect(done).toBe(true)
	end

	local expectSubstring = function(message, substring)
		local found = string.find(message, substring)
		if not found then
			error("Expected [" .. substring .. "], got [" .. message .. "]")
		end
	end

	local function createVoiceOptionsJSONStub(options)
		return stub(HttpService:JSONEncode(options))
	end

	local lastLogMessage = ""

	log:addSink({
		maxLevel = log.Levels.Warning,
		log = function(self, message, context)
			lastLogMessage = message
		end,
	})

	local VoiceChatServiceManagerKlass = require(script.Parent.VoiceChatServiceManager)
	local PermissionsProtocol = require(CorePackages.UniversalApp.Permissions.PermissionsProtocol)
	local BlockMock = Instance.new("BindableEvent")
	local VoiceChatServiceManager

	local TableUtilities = require(game:GetService("CorePackages").AppTempCommon.LuaApp.TableUtilities)

	local deepEqual = TableUtilities.DeepEqual

	local HTTPServiceStub = {
		GetAsyncFullUrlCB = noop
	}

	function HTTPServiceStub:GetAsyncFullUrl(url)
		return self.GetAsyncFullUrlCB(url)
	end

	local PermissionServiceStub = {
		requestPermissionsCB = stubPromise(nil),
		hasPermissionsCB = stubPromise(nil),
	}

	function PermissionServiceStub:requestPermissions(type)
		return self.requestPermissionsCB(type)
	end

	function PermissionServiceStub:hasPermissions(type)
		return self.hasPermissionsCB(type)
	end

	beforeEach(function(context)
		BlockMock = Instance.new("BindableEvent")
		HTTPServiceStub.GetAsyncFullUrlCB = noop
		VoiceChatServiceStub:resetMocks()
		VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(VoiceChatServiceStub, nil, nil, BlockMock.Event)
		VoiceChatServiceManager:SetupParticipantListeners()
	end)

	afterEach(function()
		VoiceChatServiceManager:UnmountPrompt()
		VoiceChatServiceManager:Disconnect()
	end)

	describe("VoiceChatServiceManager Recent Users Interaction", function()
		beforeAll(function(context)
			context.fflagClearUserFromRecentVoiceDataOnLeave = game:SetFastFlagForTesting("ClearUserFromRecentVoiceDataOnLeave", false)
			context.fflagVoiceAbuseReportsEnabled = game:SetFastFlagForTesting("VoiceAbuseReportsEnabledV3", true)
			context.fintVoiceUsersInteractionExpiryTimeSeconds = game:SetFastIntForTesting("VoiceUsersInteractionExpiryTimeSeconds", 600)
		end)

		afterAll(function(context)
			game:SetFastFlagForTesting("ClearUserFromRecentVoiceDataOnLeave", context.fflagClearUserFromRecentVoiceDataOnLeave)
			game:SetFastFlagForTesting("VoiceAbuseReportsEnabledV3", context.fflagVoiceAbuseReportsEnabled)
			game:SetFastIntForTesting("VoiceUsersInteractionExpiryTimeSeconds", context.fintVoiceUsersInteractionExpiryTimeSeconds)
		end)

		it("Should record the timestamp when another user has unmuted", function()
			local mockUserA = makeMockUser("001")
			mockUserA.isMuted = true
			local mockUserB = makeMockUser("002")
			mockUserB.isMuted = true

			expect(VoiceChatServiceManager).to.be.ok()
			expect(Cryo.isEmpty(VoiceChatServiceManager:getRecentUsersInteractionData())).to.equal(true)
			VoiceChatServiceStub:addUsers({mockUserA, mockUserB})
			expect(Cryo.isEmpty(VoiceChatServiceManager:getRecentUsersInteractionData())).to.equal(true)
			mockUserA.isMuted = false
			VoiceChatServiceStub:setUserStates({mockUserA})
			expect(#Cryo.Dictionary.values(VoiceChatServiceManager:getRecentUsersInteractionData())).to.equal(1)
		end)

		it("Recent user data cache should expire according to FIntVoiceUsersInteractionExpiryTimeSeconds", function()
			local old = game:SetFastIntForTesting("VoiceUsersInteractionExpiryTimeSeconds", 0)

			local mockUserA = makeMockUser("001")
			mockUserA.isMuted = true
			local mockUserB = makeMockUser("002")
			mockUserB.isMuted = true

			expect(VoiceChatServiceManager).to.be.ok()
			expect(Cryo.isEmpty(VoiceChatServiceManager:getRecentUsersInteractionData())).to.equal(true)
			VoiceChatServiceStub:addUsers({mockUserA, mockUserB})
			expect(Cryo.isEmpty(VoiceChatServiceManager:getRecentUsersInteractionData())).to.equal(true)
			mockUserA.isMuted = false
			VoiceChatServiceStub:setUserStates({mockUserA})
			expect(Cryo.isEmpty(VoiceChatServiceManager:getRecentUsersInteractionData())).to.equal(false)
			mockUserA.isMuted = true
			VoiceChatServiceStub:setUserStates({mockUserA})
			expect(Cryo.isEmpty(VoiceChatServiceManager:getRecentUsersInteractionData())).to.equal(true)

			game:SetFastIntForTesting("VoiceUsersInteractionExpiryTimeSeconds", old)
		end)

		it("mutedAnyone gets set when user is local muted", function ()
			jestExpect(VoiceChatServiceManager).never.toBeNil()
			VoiceChatServiceStub:addUsers({makeMockUser("001"), makeMockUser("002")})
			jestExpect(VoiceChatServiceManager:GetMutedAnyone()).toBe(false)
			VoiceChatServiceStub.IsSubscribePausedCB = stub(false)
			VoiceChatServiceManager:ToggleMutePlayer("002")
			jestExpect(VoiceChatServiceManager:GetMutedAnyone()).toBe(true)
			VoiceChatServiceManager:ToggleMutePlayer("002")
			-- Should still be true after un-muting user
			jestExpect(VoiceChatServiceManager:GetMutedAnyone()).toBe(true)
		end)

		it("mutedAnyone gets set when muteAll is called", function ()
			jestExpect(VoiceChatServiceManager).never.toBeNil()
			VoiceChatServiceStub:addUsers({makeMockUser("001"), makeMockUser("002")})
			jestExpect(VoiceChatServiceManager:GetMutedAnyone()).toBe(false)
			VoiceChatServiceManager:MuteAll(true)
			jestExpect(VoiceChatServiceManager:GetMutedAnyone()).toBe(true)
			VoiceChatServiceManager:MuteAll(false)
			-- Should still be true after un-muting everyone
			jestExpect(VoiceChatServiceManager:GetMutedAnyone()).toBe(true)
		end)
	end)

	describe("Voice Chat Service Manager", function()
		it("Participants are tracked properly when added and removed", function()
			jestExpect(VoiceChatServiceManager).never.toBeNil()
			VoiceChatServiceStub:addUsers({makeMockUser("001"), makeMockUser("002")})
			jestExpect(deepEqual(
				VoiceChatServiceManager.participants,
				{
					["001"] = makeMockUser("001"),
					["002"] = makeMockUser("002")
				}
			)).toBe(true)
			VoiceChatServiceStub:addUsers({makeMockUser("003"), makeMockUser("004")})
			jestExpect(deepEqual(
				VoiceChatServiceManager.participants,
				{
					["001"] = makeMockUser("001"),
					["002"] = makeMockUser("002"),
					["003"] = makeMockUser("003"),
					["004"] = makeMockUser("004"),
				}
			)).toBe(true)
			VoiceChatServiceStub:kickUsers({"001", "002", "004"})
			jestExpect(deepEqual(
				VoiceChatServiceManager.participants,
				{
					["003"] = makeMockUser("003"),
				}
			)).toBe(true)
			VoiceChatServiceStub:addUsers({makeMockUser("005"), makeMockUser("006")})
			jestExpect(deepEqual(
				VoiceChatServiceManager.participants,
				{
					["003"] = makeMockUser("003"),
					["005"] = makeMockUser("005"),
					["006"] = makeMockUser("006"),
				}
			)).toBe(true)
		end)
		itFIXME("Participants are cleared when player leaves voicechat", function()
			-- TODO: Finish this when VoiceChatState is added to Enum Globally
			jestExpect(VoiceChatServiceManager).never.toBeNil()
			VoiceChatServiceStub:addUsers({makeMockUser("001"), makeMockUser("002")})
			jestExpect(deepEqual(
				VoiceChatServiceManager.participants,
				{
					["001"] = makeMockUser("001"),
					["002"] = makeMockUser("002"),
				}
			)).toBe(true)
			VoiceChatServiceStub:Disconnect()
			jestExpect(deepEqual(
				VoiceChatServiceManager.participants,
				{ }
			)).toBe(true)
		end)

		it("requestMicPermission throws when a malformed response is given", function ()
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
				VoiceChatServiceStub, HTTPServiceStub, PermissionServiceStub
			)
			expectToReject(VoiceChatServiceManager:requestMicPermission())
		end)

		it("requestMicPermission rejects when permissions protocol response is denied", function ()
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
				VoiceChatServiceStub, HTTPServiceStub, PermissionServiceStub
			)
			PermissionServiceStub.requestPermissionsCB = stubPromise({ status=PermissionsProtocol.Status.DENIED })
			expectToReject(VoiceChatServiceManager:requestMicPermission())
		end)

		it("requestMicPermission resolves when permissions protocol response is approved", function ()
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
				VoiceChatServiceStub, HTTPServiceStub, PermissionServiceStub
			)
			PermissionServiceStub.requestPermissionsCB = stubPromise({ status=PermissionsProtocol.Status.AUTHORIZED })
			expectToResolve(VoiceChatServiceManager:requestMicPermission())
		end)

		describe("permission prompt", function()
			local errorToasts
			beforeEach(function()
				errorToasts = game:SetFastFlagForTesting("VoiceChatStudioErrorToasts2", true)

			end)
			afterEach(function()
				game:SetFastFlagForTesting("VoiceChatStudioErrorToasts2", errorToasts)
			end)

			it("shows correct prompt when user is banned", function ()
				VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(VoiceChatServiceStub, HTTPServiceStub)
				HTTPServiceStub.GetAsyncFullUrlCB = createVoiceOptionsJSONStub({
					universePlaceVoiceEnabledSettings = {
						isUniverseEnabledForVoice = true,
						isPlaceEnabledForVoice = false,
					},
					voiceSettings = {
						isVoiceEnabled = false,
						isBanned = true
					},
				})
				act(function()
					VoiceChatServiceManager:userAndPlaceCanUseVoice('12345')
				end)
				jestExpect(CoreGui.RobloxVoiceChatPromptGui).never.toBeNil()
				jestExpect(CoreGui.InGameMenuInformationalDialog.DialogMainFrame.TitleTextContainer.TitleText.text).toBe("Voice Chat Suspended")
			end)
			it("Show place prompt if place is not enabled for voice", function ()
				VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(VoiceChatServiceStub, HTTPServiceStub)
				HTTPServiceStub.GetAsyncFullUrlCB = createVoiceOptionsJSONStub({
					universePlaceVoiceEnabledSettings = {
						isUniverseEnabledForVoice = true,
						isPlaceEnabledForVoice = false,
					},
					voiceSettings = {
						isVoiceEnabled = true
					},
				})
				VoiceChatServiceManager.promptSignal = Instance.new("BindableEvent")
				VoiceChatServiceManager.promptSignal.Event:Connect(function(signal)
					jestExpect(signal).toBe(VoiceChatPromptType.Place)
				end)
				jestExpect(VoiceChatServiceManager:userAndPlaceCanUseVoice('12345')).toBe(false)
			end)

			it("Doesn't show place prompt if universe is not enabled for voice", function ()
				local earlyOutFlag = game:SetFastFlagForTesting("VCPromptEarlyOut", true)
				VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(VoiceChatServiceStub, HTTPServiceStub)
				HTTPServiceStub.GetAsyncFullUrlCB = createVoiceOptionsJSONStub({
					universePlaceVoiceEnabledSettings = {
						isUniverseEnabledForVoice = false,
						isPlaceEnabledForVoice = false,
					},
					voiceSettings = {
						isVoiceEnabled = true
					},
				})
				VoiceChatServiceManager.promptSignal = Instance.new("BindableEvent")
				local mock, mockFn = jest.fn()
				VoiceChatServiceManager.promptSignal.Event:Connect(mockFn)
				-- This should never fire
				jestExpect(mock).never.toHaveBeenCalled()
				jestExpect(VoiceChatServiceManager:userAndPlaceCanUseVoice('12345')).toBe(false)
				game:SetFastFlagForTesting("VCPromptEarlyOut", earlyOutFlag)
			end)
		end)

		describe("Enable voice mic prompt toasts", function()
			local oldToasts, oldToastsFix
			beforeEach(function()
				oldToasts = game:SetFastFlagForTesting("EnableUniveralVoiceToasts", true)
				oldToastsFix = game:SetFastFlagForTesting("EnableVoiceMicPromptToastFix", true)
			end)
			afterEach(function()
				game:SetFastFlagForTesting("EnableUniveralVoiceToasts", oldToasts)
				game:SetFastFlagForTesting("EnableVoiceMicPromptToastFix", oldToastsFix)
			end)

			it("shows correct prompt when user does not give voice permission", function ()
				VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
					VoiceChatServiceStub, HTTPServiceStub, PermissionServiceStub
				)
				VoiceChatServiceManager.userEligible = true
				PermissionServiceStub.hasPermissionsCB = stubPromise({ status=PermissionsProtocol.Status.DENIED })
				act(function()
					VoiceChatServiceManager:CheckAndShowPermissionPrompt()
				end)
				jestExpect(CoreGui.RobloxVoiceChatPromptGui).never.toBeNil()
				jestExpect(CoreGui.RobloxVoiceChatPromptGui.Content.Toast.ToastContainer.Toast.ToastFrame.ToastTextFrame.ToastTitle.Text).toBe("Voice Chat Unavailable")
			end)
		end)

		it("VoiceChatAvailable Returns the correct values", function ()
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new()
			jestExpect(VoiceChatServiceManager:VoiceChatAvailable()).toBe(false)
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(VoiceChatServiceStub)
			VoiceChatServiceStub.GetVoiceChatApiVersionCB = stub(2)
			jestExpect(VoiceChatServiceManager:VoiceChatAvailable()).toBe(false)
			VoiceChatServiceStub.GetVoiceChatApiVersionCB = stub(6)
			jestExpect(VoiceChatServiceManager:VoiceChatAvailable()).toBe(false)
			VoiceChatServiceStub.GetVoiceChatAvailableCB = stub(0)
			jestExpect(VoiceChatServiceManager:VoiceChatAvailable()).toBe(false)
			-- We set available to nil because we cache it to keep init() itempotent
			VoiceChatServiceManager.available = nil
			VoiceChatServiceStub.GetVoiceChatAvailableCB = stub(2)
			jestExpect(VoiceChatServiceManager:VoiceChatAvailable()).toBe(true)
		end)

		describe("BlockingUtils", function()
			local sessionFlag, rejoinFlag, lazyLoadBlock
			beforeEach(function()
				sessionFlag = game:SetFastFlagForTesting("EnableSessionCancelationOnBlock", true)
				rejoinFlag = game:SetFastFlagForTesting("EnableVoiceChatRejoinOnBlock", true)
			end)
			afterEach(function()
				game:SetFastFlagForTesting("EnableSessionCancelationOnBlock", sessionFlag)
				game:SetFastFlagForTesting("EnableVoiceChatRejoinOnBlock", rejoinFlag)
			end)

			it("we call subscribe block when a user is blocked", function ()
				local BlockMock = Instance.new("BindableEvent")
				VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
					VoiceChatServiceStub, HTTPServiceStub, PermissionServiceStub, BlockMock.Event
				)
				VoiceChatServiceManager:SetupParticipantListeners()
				local player = makeMockUser("001")
				VoiceChatServiceStub:addUsers({player})

				local spy, func = jest.fn(noop)
				VoiceChatServiceStub.SubscribeBlockCB = func;

				BlockMock:Fire(player.UserId, true)
				jestExpect(spy).toHaveBeenCalledTimes(1)
			end)

			it("we call subscribe unblock when a user is unblocked", function ()
				local UnblockMock = Instance.new("BindableEvent")
				VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
					VoiceChatServiceStub, HTTPServiceStub, PermissionServiceStub, UnblockMock.Event
				)
				VoiceChatServiceManager:SetupParticipantListeners()
				local player = makeMockUser("001")
				VoiceChatServiceStub:addUsers({player})

				local spy, func = jest.fn(noop)
				VoiceChatServiceStub.SubscribeUnblockCB = func;

				UnblockMock:Fire(player.UserId, false)
				jestExpect(spy).toHaveBeenCalledTimes(1)
			end)
		end)

		it("MuteUser toggles isMutedLocally", function ()
			jestExpect(VoiceChatServiceManager).never.toBeNil()
			VoiceChatServiceStub:addUsers({makeMockUser("001"), makeMockUser("002")})
			jestExpect(deepEqual(
				VoiceChatServiceManager.participants,
				{
					["001"] = makeMockUser("001"),
					["002"] = makeMockUser("002"),
				}
			)).toBe(true)
			VoiceChatServiceStub.IsSubscribePausedCB = stub(false)
			VoiceChatServiceManager:ToggleMutePlayer("002")
			jestExpect(deepEqual(
				VoiceChatServiceManager.participants,
				{
					["001"] = makeMockUser("001"),
					["002"] = makeMockUser("002", true),
				}
			)).toBe(true)

			VoiceChatServiceStub.IsSubscribePausedCB = stub(true)

			local spy, func = jest.fn(noop)
			VoiceChatServiceManager.participantsUpdate.Event:Connect(func)
			VoiceChatServiceManager:ToggleMutePlayer("002")

			jestExpect(spy).toHaveBeenCalledTimes(1)
			jestExpect(deepEqual(
				VoiceChatServiceManager.participants,
				{
					["001"] = makeMockUser("001"),
					["002"] = makeMockUser("002"),
				}
			)).toBe(true)
		end)

		it("Rejoin clears participants", function ()
			local ClearStateOnRejoinOld = game:SetFastFlagForTesting("ClearVoiceStateOnRejoin", true)
			jestExpect(VoiceChatServiceManager).never.toBeNil()
			VoiceChatServiceStub:addUsers({makeMockUser("001"), makeMockUser("002")})

			jestExpect(deepEqual(
				VoiceChatServiceManager.participants,
				{
					["001"] = makeMockUser("001"),
					["002"] = makeMockUser("002"),
				}
			)).toBe(true)
			VoiceChatServiceManager:RejoinCurrentChannel()
			jestExpect(deepEqual(
				VoiceChatServiceManager.participants,
				{}
			)).toBe(true)
			game:SetFastFlagForTesting("ClearVoiceStateOnRejoin", ClearStateOnRejoinOld)
		end)
	end)
end
