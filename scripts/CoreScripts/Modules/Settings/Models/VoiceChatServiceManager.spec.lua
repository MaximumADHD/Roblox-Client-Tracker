--!nocheck
-- TODO: Add typechecking to this when "'toHaveBeenCalled' not found in table 'Expectation'" fix is found
return function()
	local noop = function() end
	local stub = function(val)
		return function()
			return val
		end
	end

	local CorePackages = game:GetService("CorePackages")
	local LuaSocialLibrariesDeps = require(CorePackages.LuaSocialLibrariesDeps)
	local Mock = LuaSocialLibrariesDeps.Mock
	local Spy = Mock.Spy

	local VoiceChatServiceManager = require(script.Parent.VoiceChatServiceManager)
	local ParticipantsStateChangedMock = Instance.new("BindableEvent")
	local StateChangedMock = Instance.new("BindableEvent")
	local VoiceChatServiceStub = {
		ParticipantsStateChanged = ParticipantsStateChangedMock.Event,
		StateChanged = StateChangedMock.Event,
		GetVoiceChatApiVersionCB = noop,
		GetVoiceChatAvailableCB = noop,
		IsSubscribePausedCB = noop,
		SubscribePauseCB = noop,
		available = true
	}

	local TableUtilities = require(game:GetService("CorePackages").AppTempCommon.LuaApp.TableUtilities)

	local deepEqual = TableUtilities.DeepEqual

	local function makeMockUser(userId, isMutedLocally)
		return {userId=tostring(userId), isMuted=false, isMutedLocally=not not isMutedLocally}
	end

	function VoiceChatServiceStub:Disconnect()
		-- Note: This currently doesn't work due to Enum.VoiceChatState not being available in the test runner
		-- StateChangedMock:Fire(Enum.VoiceChatState.Ended)
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

	function VoiceChatServiceStub:kickUsers(users)
		ParticipantsStateChangedMock:Fire(users, {}, {})
	end

	function VoiceChatServiceStub:addUsers(userStates)
		ParticipantsStateChangedMock:Fire({}, {}, userStates)
	end

	beforeAll(function(context)
		expect.extend(Mock.Matchers)
	end)

	beforeEach(function(context)
		ParticipantsStateChangedMock = Instance.new("BindableEvent")
		StateChangedMock = Instance.new("BindableEvent")
		VoiceChatServiceStub.ParticipantsStateChanged = ParticipantsStateChangedMock.Event
		VoiceChatServiceStub.StateChanged = StateChangedMock.Event
		VoiceChatServiceManager:setService(VoiceChatServiceStub)
		VoiceChatServiceManager:SetupParticipantListeners()
	end)

	afterEach(function(context)
		VoiceChatServiceManager:clear()
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
		it("VoiceChatAvailable Returns the correct values", function ()
			VoiceChatServiceManager:setService(nil)
			expect(VoiceChatServiceManager:VoiceChatAvailable()).to.equal(false)
			VoiceChatServiceManager:setService(VoiceChatServiceStub)
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
	end)
end
