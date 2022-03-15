--!nocheck
-- TODO: Add typechecking to this when "'toHaveBeenCalled' not found in table
-- 'Expectation'" fix is found
return function()
	local CorePackages = game:GetService("CorePackages")
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect
	local jest = JestGlobals.jest
	local Promise = require(CorePackages.Promise)

	local CoreGui = game:GetService("CoreGui")
	local RobloxGui = CoreGui:WaitForChild("RobloxGui")
	local HttpService = game:GetService("HttpService")
	local log = require(RobloxGui.Modules.Logger)
	local VoiceChatPromptType = require(RobloxGui.Modules.VoiceChatPrompt.PromptType)
	local Modules = CoreGui.RobloxGui.Modules
	local act = require(Modules.act)

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
		expect(done).to.equal(true)
	end

	local expectToReject = function(promise)
		local done = false
		local res = promise:catch(function()
			done = true
		end)
		res:await()
		expect(done).to.equal(true)
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

	local LuaSocialLibrariesDeps = require(CorePackages.LuaSocialLibrariesDeps)
	local Mock = LuaSocialLibrariesDeps.Mock
	local Spy = Mock.Spy

	local VoiceChatServiceManagerKlass = require(script.Parent.VoiceChatServiceManager)
	local PermissionsProtocol = require(CorePackages.UniversalApp.Permissions.PermissionsProtocol)
	local ParticipantsStateChangedMock = Instance.new("BindableEvent")
	local StateChangedMock = Instance.new("BindableEvent")
	local BlockMock = Instance.new("BindableEvent")
	local VoiceChatServiceStub = {
		ParticipantsStateChanged = ParticipantsStateChangedMock.Event,
		StateChanged = StateChangedMock.Event,
		GetVoiceChatApiVersionCB = stub(0),
		GetVoiceChatAvailableCB = noop,
		IsSubscribePausedCB = noop,
		SubscribePauseCB = noop,
		SubscribeBlockCB = noop,
		SubscribeUnblockCB = noop,
		groupId = 10000,
		publishPaused = false,
		available = true
	}
	local VoiceChatServiceManager

	local TableUtilities = require(game:GetService("CorePackages").AppTempCommon.LuaApp.TableUtilities)

	local deepEqual = TableUtilities.DeepEqual

	local function makeMockUser(userId, isMutedLocally)
		return {userId=tostring(userId), UserId=tostring(userId), isMuted=false, isMutedLocally=not not isMutedLocally}
	end

	function VoiceChatServiceStub:Disconnect()
		-- Note: This currently doesn't work due to Enum.VoiceChatState not being available in the test runner
		-- StateChangedMock:Fire(Enum.VoiceChatState.Ended)
	end

	function VoiceChatServiceStub:Leave()
		-- Note: This currently doesn't work due to Enum.VoiceChatState not being available in the test runner
		-- StateChangedMock:Fire(Enum.VoiceChatState.Ended)
	end
	function VoiceChatServiceStub:GetGroupId()
		return self.groupId
	end
	function VoiceChatServiceStub:IsPublishPaused()
		return self.publishPaused
	end
	function VoiceChatServiceStub:JoinByGroupIdToken()
		return true
	end

	function VoiceChatServiceStub:IsSubscribePaused()
		return self.IsSubscribePausedCB()
	end
	function VoiceChatServiceStub:SubscribePause(userId)
		return self.SubscribePauseCB(userId)
	end

	function VoiceChatServiceStub:GetVoiceChatApiVersion()
		return self.GetVoiceChatApiVersionCB()
	end
	function VoiceChatServiceStub:GetVoiceChatAvailable()
		return self.GetVoiceChatAvailableCB()
	end
	function VoiceChatServiceStub:SubscribeBlock()
		return self.SubscribeBlockCB()
	end
	function VoiceChatServiceStub:SubscribeUnblock()
		return self.SubscribeUnblockCB()
	end

	function VoiceChatServiceStub:kickUsers(users)
		ParticipantsStateChangedMock:Fire(users, {}, {})
	end

	function VoiceChatServiceStub:addUsers(userStates)
		ParticipantsStateChangedMock:Fire({}, {}, userStates)
	end

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

	beforeAll(function(context)
		expect.extend(Mock.Matchers)
	end)

	beforeEach(function(context)
		ParticipantsStateChangedMock = Instance.new("BindableEvent")
		StateChangedMock = Instance.new("BindableEvent")
		BlockMock = Instance.new("BindableEvent")
		HTTPServiceStub.GetAsyncFullUrlCB = noop
		VoiceChatServiceStub.ParticipantsStateChanged = ParticipantsStateChangedMock.Event
		VoiceChatServiceStub.StateChanged = StateChangedMock.Event
		VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(VoiceChatServiceStub, nil, nil, BlockMock.Event)
		VoiceChatServiceManager:SetupParticipantListeners()
	end)

	afterEach(function()
		VoiceChatServiceManager:UnmountPrompt()
	end)

	describe("Voice Chat Service Manager", function()
		it("Participants are tracked properly when added and removed", function()
			expect(VoiceChatServiceManager).to.be.ok()
			VoiceChatServiceStub:addUsers({makeMockUser("001"), makeMockUser("002")})
			expect(deepEqual(
				VoiceChatServiceManager.participants,
				{
					["001"] = makeMockUser("001"),
					["002"] = makeMockUser("002")
				}
			)).to.equal(true)
			VoiceChatServiceStub:addUsers({makeMockUser("003"), makeMockUser("004")})
			expect(deepEqual(
				VoiceChatServiceManager.participants,
				{
					["001"] = makeMockUser("001"),
					["002"] = makeMockUser("002"),
					["003"] = makeMockUser("003"),
					["004"] = makeMockUser("004"),
				}
			)).to.equal(true)
			VoiceChatServiceStub:kickUsers({"001", "002", "004"})
			expect(deepEqual(
				VoiceChatServiceManager.participants,
				{
					["003"] = makeMockUser("003"),
				}
			)).to.equal(true)
			VoiceChatServiceStub:addUsers({makeMockUser("005"), makeMockUser("006")})
			expect(deepEqual(
				VoiceChatServiceManager.participants,
				{
					["003"] = makeMockUser("003"),
					["005"] = makeMockUser("005"),
					["006"] = makeMockUser("006"),
				}
			)).to.equal(true)
		end)
		itFIXME("Participants are cleared when player leaves voicechat", function()
			-- TODO: Finish this when VoiceChatState is added to Enum Globally
			expect(VoiceChatServiceManager).to.be.ok()
			VoiceChatServiceStub:addUsers({makeMockUser("001"), makeMockUser("002")})
			expect(deepEqual(
				VoiceChatServiceManager.participants,
				{
					["001"] = makeMockUser("001"),
					["002"] = makeMockUser("002"),
				}
			)).to.equal(true)
			VoiceChatServiceStub:Disconnect()
			expect(deepEqual(
				VoiceChatServiceManager.participants,
				{ }
			)).to.equal(true)
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
			local moderationOld, errorToasts
			beforeEach(function()
				moderationOld = game:SetFastFlagForTesting("ModerationByProxyUserBanNotificationV4", true)
				errorToasts = game:SetFastFlagForTesting("VoiceChatStudioErrorToasts2", true)

			end)
			afterEach(function()
				game:SetFastFlagForTesting("ModerationByProxyUserBanNotificationV4", moderationOld)
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
				expect(CoreGui.RobloxVoiceChatPromptGui).to.be.ok()
				expect(CoreGui.InGameMenuInformationalDialog.DialogMainFrame.TitleTextContainer.TitleText.text).to.equal("Voice Chat Suspended")
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
					expect(signal).to.equal(VoiceChatPromptType.Place)
				end)
				expect(VoiceChatServiceManager:userAndPlaceCanUseVoice('12345')).to.equal(false)
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
				expect(VoiceChatServiceManager:userAndPlaceCanUseVoice('12345')).to.equal(false)
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
				expect(CoreGui.RobloxVoiceChatPromptGui).to.be.ok()
				expect(CoreGui.RobloxVoiceChatPromptGui.Content.Toast.ToastContainer.Toast.ToastFrame.ToastTextFrame.ToastTitle.Text).to.equal("Voice Chat Unavailable")
			end)
		end)

		it("VoiceChatAvailable Returns the correct values", function ()
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new()
			expect(VoiceChatServiceManager:VoiceChatAvailable()).to.equal(false)
			VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(VoiceChatServiceStub)
			VoiceChatServiceStub.GetVoiceChatApiVersionCB = stub(2)
			expect(VoiceChatServiceManager:VoiceChatAvailable()).to.equal(false)
			VoiceChatServiceStub.GetVoiceChatApiVersionCB = stub(6)
			expect(VoiceChatServiceManager:VoiceChatAvailable()).to.equal(false)
			VoiceChatServiceStub.GetVoiceChatAvailableCB = stub(0)
			expect(VoiceChatServiceManager:VoiceChatAvailable()).to.equal(false)
			-- We set available to nil because we cache it to keep init() itempotent
			VoiceChatServiceManager.available = nil
			VoiceChatServiceStub.GetVoiceChatAvailableCB = stub(2)
			expect(VoiceChatServiceManager:VoiceChatAvailable()).to.equal(true)
		end)

		describe("BlockingUtils", function()
			local sessionFlag, rejoinFlag, lazyLoadBlock
			beforeEach(function()
				sessionFlag = game:SetFastFlagForTesting("EnableSessionCancelationOnBlock", true)
				rejoinFlag = game:SetFastFlagForTesting("EnableVoiceChatRejoinOnBlock", true)
				lazyLoadBlock = game:SetFastFlagForTesting("LazyLoadPlayerBlockedEvent", true)
			end)
			afterEach(function()
				game:SetFastFlagForTesting("EnableSessionCancelationOnBlock", sessionFlag)
				game:SetFastFlagForTesting("EnableVoiceChatRejoinOnBlock", rejoinFlag)
				game:SetFastFlagForTesting("LazyLoadPlayerBlockedEvent", lazyLoadBlock)
			end)

			it("we call subscribe block when a user is blocked", function ()
				local BlockMock = Instance.new("BindableEvent")
				VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
					VoiceChatServiceStub, HTTPServiceStub, PermissionServiceStub, BlockMock.Event
				)
				VoiceChatServiceManager:SetupParticipantListeners()
				local player = makeMockUser("001")
				VoiceChatServiceStub:addUsers({player})
	
				local spy, func = Spy.new(noop)
				VoiceChatServiceStub.SubscribeBlockCB = func;

				BlockMock:Fire(player.UserId, true)
				expect(spy).toHaveBeenCalled(1)
			end)
	
			it("we call subscribe unblock when a user is unblocked", function ()
				local UnblockMock = Instance.new("BindableEvent")
				VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
					VoiceChatServiceStub, HTTPServiceStub, PermissionServiceStub, UnblockMock.Event
				)
				VoiceChatServiceManager:SetupParticipantListeners()
				local player = makeMockUser("001")
				VoiceChatServiceStub:addUsers({player})
	
				local spy, func = Spy.new(noop)
				VoiceChatServiceStub.SubscribeUnblockCB = func;
				
				UnblockMock:Fire(player.UserId, false)
				expect(spy).toHaveBeenCalled(1)
			end)
		end)

		it("MuteUser toggles isMutedLocally", function ()
			expect(VoiceChatServiceManager).to.be.ok()
			VoiceChatServiceStub:addUsers({makeMockUser("001"), makeMockUser("002")})
			expect(deepEqual(
				VoiceChatServiceManager.participants,
				{
					["001"] = makeMockUser("001"),
					["002"] = makeMockUser("002"),
				}
			)).to.equal(true)
			VoiceChatServiceStub.IsSubscribePausedCB = stub(false)
			VoiceChatServiceManager:ToggleMutePlayer("002")
			expect(deepEqual(
				VoiceChatServiceManager.participants,
				{
					["001"] = makeMockUser("001"),
					["002"] = makeMockUser("002", true),
				}
			)).to.equal(true)

			VoiceChatServiceStub.IsSubscribePausedCB = stub(true)

			local spy, func = Spy.new(noop)
			VoiceChatServiceManager.participantsUpdate.Event:Connect(func)
			VoiceChatServiceManager:ToggleMutePlayer("002")

			expect(spy).toHaveBeenCalled(1)
			expect(deepEqual(
				VoiceChatServiceManager.participants,
				{
					["001"] = makeMockUser("001"),
					["002"] = makeMockUser("002"),
				}
			)).to.equal(true)
		end)

		it("Rejoin clears participants", function ()
			local ClearStateOnRejoinOld = game:SetFastFlagForTesting("ClearVoiceStateOnRejoin", true)
			expect(VoiceChatServiceManager).to.be.ok()
			VoiceChatServiceStub:addUsers({makeMockUser("001"), makeMockUser("002")})
			
			expect(deepEqual(
				VoiceChatServiceManager.participants,
				{
					["001"] = makeMockUser("001"),
					["002"] = makeMockUser("002"),
				}
			)).to.equal(true)
			VoiceChatServiceManager:RejoinCurrentChannel()
			expect(deepEqual(
				VoiceChatServiceManager.participants,
				{}
			)).to.equal(true)
			game:SetFastFlagForTesting("ClearVoiceStateOnRejoin", ClearStateOnRejoinOld)
		end)
	end)
end
