return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local VoiceChatPromptFrame = require(script.Parent.VoiceChatPromptFrame)
	local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents
	local jestExpect = JestGlobals.expect
	local jest = JestGlobals.jest

	local Roact = require(CorePackages.Roact)
	local PromptType = require(script.Parent.Parent.PromptType)

	local AnalyticsMockStub = {
		reportBanMessageEvent = function(str) end
	}

	local AnalyticsMock = {}
	function AnalyticsMock:reportBanMessageEvent(str)
		AnalyticsMockStub.reportBanMessageEvent(str)
	end

	local VCSMStub = {
		reportBanMessage = function(str) end
	}

	local VCSMock = {}
	function VCSMock:reportBanMessage(str)
		VCSMStub.reportBanMessage(str)
	end

	describe("VoiceChatPromptFrame", function()
		it("should create and destroy without errors", function()
			local element = Roact.createElement(VoiceChatPromptFrame)

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should display when signal is passed in", function()
			local signal = Instance.new("BindableEvent")

			local analyticsMock, analyticsMockFn = jest.fn()
			AnalyticsMockStub.reportBanMessageEvent = analyticsMockFn

			local vcsMock, vcsMockFn = jest.fn()
			VCSMStub.reportBanMessage = vcsMockFn

			local element = Roact.createElement(VoiceChatPromptFrame, {
				promptSignal = signal.Event,
				Analytics = AnalyticsMock,
				VoiceChatServiceManager = VCSMock
			})
			local instance = Roact.mount(element)

			signal:Fire(PromptType.VoiceChatSuspendedTemporary)

			waitForEvents()


			jestExpect(analyticsMock).toHaveBeenCalledWith("Shown")
			jestExpect(vcsMock).toHaveBeenCalledWith("Shown")

			Roact.unmount(instance)
		end)
	end)
end
