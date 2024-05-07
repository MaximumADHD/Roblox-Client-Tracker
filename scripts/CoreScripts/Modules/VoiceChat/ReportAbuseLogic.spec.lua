--!nonstrict

return function()
	local CorePackages = game:GetService("CorePackages")
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect

	local stub = function(val)
		return function()
			return val
		end
	end

	local FFlagEnableCoreVoiceChatModule = require(script.Parent.Flags.GetFFlagEnableCoreVoiceChatModule)()

	local CoreVoiceManagerKlass
	if FFlagEnableCoreVoiceChatModule then
		CoreVoiceManagerKlass = require(CorePackages.Workspace.Packages.VoiceChatCore).CoreVoiceManager
	end

	local ReportAbuseLogic = require(script.Parent.ReportAbuseLogic)
	local MethodsOfAbuse = ReportAbuseLogic.MethodsOfAbuse
	local GetDefaultMethodOfAbuse = ReportAbuseLogic.GetDefaultMethodOfAbuse
	local VoiceChatServiceManagerKlass = require(script.Parent.VoiceChatServiceManager)
	local VCSS = require(script.Parent.VoiceChatServiceStub)
	local VoiceChatServiceStub = VCSS.VoiceChatServiceStub
	local makeMockUser = VCSS.makeMockUser

	local CoreVoiceManager
	local VoiceChatServiceManager
	beforeEach(function(context)
		VoiceChatServiceStub:resetMocks()
		local BlockMock = Instance.new("BindableEvent")
		if CoreVoiceManagerKlass then
			CoreVoiceManager = CoreVoiceManagerKlass.new(
				BlockMock.Event,
				nil,
				nil,
				VoiceChatServiceStub
			)
		end
		VoiceChatServiceManager = VoiceChatServiceManagerKlass.new(
			CoreVoiceManager,
			VoiceChatServiceStub,
			nil,
			nil,
			BlockMock.Event
		)
		VoiceChatServiceManager:SetupParticipantListeners()
	end)

	describe("VoiceChatServiceManager Recent Users Interaction", function()
		beforeAll(function(context)
			context.fflagClearUserFromRecentVoiceDataOnLeave =
				game:SetFastFlagForTesting("ClearUserFromRecentVoiceDataOnLeave", false)
		end)

		afterAll(function(context)
			game:SetFastFlagForTesting(
				"ClearUserFromRecentVoiceDataOnLeave",
				context.fflagClearUserFromRecentVoiceDataOnLeave
			)
		end)

		it("GetDefaultMethodOfAbuse returns voice if player local muted anyone", function()
			jestExpect(VoiceChatServiceManager).never.toBeNil()
			VoiceChatServiceStub:addUsers({ makeMockUser("001"), makeMockUser("002") })
			jestExpect(GetDefaultMethodOfAbuse(nil, VoiceChatServiceManager)).toBe(MethodsOfAbuse.text)

			VoiceChatServiceStub.IsSubscribePausedCB = stub(false)
			VoiceChatServiceManager:ToggleMutePlayer("002")
			jestExpect(VoiceChatServiceManager:GetMutedAnyone()).toBe(true)
			jestExpect(GetDefaultMethodOfAbuse(nil, VoiceChatServiceManager)).toBe(MethodsOfAbuse.voice)
		end)

		it("GetDefaultMethodOfAbuse returns voice if player local mutedall", function()
			jestExpect(VoiceChatServiceManager).never.toBeNil()
			VoiceChatServiceStub:addUsers({ makeMockUser("001"), makeMockUser("002") })
			jestExpect(GetDefaultMethodOfAbuse(nil, VoiceChatServiceManager)).toBe(MethodsOfAbuse.text)

			VoiceChatServiceStub.IsSubscribePausedCB = stub(false)
			VoiceChatServiceManager:MuteAll(true)
			jestExpect(VoiceChatServiceManager:GetMutedAnyone()).toBe(true)
			jestExpect(GetDefaultMethodOfAbuse(nil, VoiceChatServiceManager)).toBe(MethodsOfAbuse.voice)
		end)

		it("GetDefaultMethodOfAbuse returns text if otherPlayer is not voice enabled", function()
			jestExpect(VoiceChatServiceManager).never.toBeNil()
			local otherPlayer = makeMockUser("001")

			jestExpect(GetDefaultMethodOfAbuse(otherPlayer, VoiceChatServiceManager)).toBe(MethodsOfAbuse.text)
		end)

		it("GetDefaultMethodOfAbuse returns voice if otherPlayer has talked and text if they haven't", function()
			jestExpect(VoiceChatServiceManager).never.toBeNil()
			local otherPlayer = makeMockUser("001")
			otherPlayer.isMuted = true
			VoiceChatServiceStub:addUsers({ otherPlayer })

			jestExpect(GetDefaultMethodOfAbuse(nil, VoiceChatServiceManager)).toBe(MethodsOfAbuse.text)
			jestExpect(GetDefaultMethodOfAbuse(otherPlayer, VoiceChatServiceManager)).toBe(MethodsOfAbuse.text)

			otherPlayer.isMuted = false
			VoiceChatServiceStub:setUserStates({ otherPlayer })
			jestExpect(GetDefaultMethodOfAbuse(otherPlayer, VoiceChatServiceManager)).toBe(MethodsOfAbuse.voice)
		end)
	end)
end
