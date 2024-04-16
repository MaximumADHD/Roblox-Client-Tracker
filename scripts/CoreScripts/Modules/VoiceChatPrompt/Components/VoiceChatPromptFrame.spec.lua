return function()
	local CorePackages = game:GetService("CorePackages")
	local CoreGui = game:GetService("CoreGui")
	local RobloxGui = CoreGui:WaitForChild("RobloxGui")

	local JestGlobals = require(CorePackages.JestGlobals)
	local VoiceChatPromptFrame = require(script.Parent.VoiceChatPromptFrame)
	local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents
	local jestExpect = JestGlobals.expect
	local jest = JestGlobals.jest
	local Rhodium = require(CorePackages.Rhodium)
	local RhodiumHelpers = require(CorePackages.Workspace.Packages.RhodiumHelpers)

	local Roact = require(CorePackages.Roact)
	local PromptType = require(script.Parent.Parent.PromptType)

	local Localization = require(CorePackages.Workspace.Packages.RobloxAppLocales).Localization

	local GetFFlagUpdateNudgeV3VoiceBanUI = require(RobloxGui.Modules.Flags.GetFFlagUpdateNudgeV3VoiceBanUI)

	local AnalyticsMockStub = {
		reportBanMessageEvent = function(str) end,
	}

	local AnalyticsMock = {}
	function AnalyticsMock:reportBanMessageEvent(str)
		AnalyticsMockStub.reportBanMessageEvent(str)
	end

	local VCSMStub = {
		reportBanMessage = function(str) end,
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
				VoiceChatServiceManager = VCSMock,
			})
			local instance = Roact.mount(element)

			signal:Fire(PromptType.VoiceChatSuspendedTemporary)

			waitForEvents()

			jestExpect(analyticsMock).toHaveBeenCalledWith("Shown")
			jestExpect(vcsMock).toHaveBeenCalledWith("Shown")

			Roact.unmount(instance)
		end)

		it("should display updated ban modal when signal is passed in", function()
			local oldValue = game:SetFastFlagForTesting("UpdateNudgeV3VoiceBanUI2", true)

			local signal = Instance.new("BindableEvent")

			local analyticsMock, analyticsMockFn = jest.fn()
			AnalyticsMockStub.reportBanMessageEvent = analyticsMockFn

			local vcsMock, vcsMockFn = jest.fn()
			VCSMStub.reportBanMessage = vcsMockFn

			local element = Roact.createElement(VoiceChatPromptFrame, {
				promptSignal = signal.Event,
				Analytics = AnalyticsMock,
				VoiceChatServiceManager = VCSMock,
				bannedUntil = "20",
			})
			local instance = Roact.mount(element)

			signal:Fire(PromptType.VoiceChatSuspendedTemporaryB)

			waitForEvents()

			-- Verify that "Shown" event fires when this ban modal appears
			jestExpect(analyticsMock).toHaveBeenCalledWith("Shown")
			jestExpect(vcsMock).toHaveBeenCalledWith("Shown")

			-- Verify that expected copy is appearing for this ban modal
			local localization = Localization.new("en-us")

			local understandLabel = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.Understand"),
			})
			jestExpect(understandLabel).toBeDefined()

			local incorrectNudgeLabel = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.IncorrectNudge"),
			})
			jestExpect(incorrectNudgeLabel).toBeDefined()

			local voiceChatSuspendedLabel = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.VoiceChatSuspended"),
			})
			jestExpect(voiceChatSuspendedLabel).toBeDefined()

			local updatedVoiceBanLabel1 = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.Subtitle.TemporaryVoiceBan1"),
			})
			jestExpect(updatedVoiceBanLabel1).toBeDefined()

			local updatedVoiceBanLabel2 = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.Subtitle.TemporaryVoiceBan2"),
			})
			jestExpect(updatedVoiceBanLabel2).toBeDefined()

			local xMinuteSuspensionLabel = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.XMinuteSuspension", {
					banDurationInMinutes = "20",
				}),
			})
			jestExpect(xMinuteSuspensionLabel).toBeDefined()

			Roact.unmount(instance)
			game:SetFastFlagForTesting("UpdateNudgeV3VoiceBanUI2", oldValue)
		end)

		it("should call onPrimaryActivated and onSecondaryActivated correctly", function()
			local oldValue = game:SetFastFlagForTesting("UpdateNudgeV3VoiceBanUI2", true)

			local signal = Instance.new("BindableEvent")

			local analyticsMock, analyticsMockFn = jest.fn()
			AnalyticsMockStub.reportBanMessageEvent = analyticsMockFn

			local vcsMock, vcsMockFn = jest.fn()
			VCSMStub.reportBanMessage = vcsMockFn

			local element = Roact.createElement(VoiceChatPromptFrame, {
				promptSignal = signal.Event,
				Analytics = AnalyticsMock,
				VoiceChatServiceManager = VCSMock,
				bannedUntil = "20",
				onPrimaryActivated = function()
					VCSMStub.reportBanMessage("Understood")
					AnalyticsMockStub.reportBanMessageEvent("Understood")
				end,
				onSecondaryActivated = function()
					VCSMStub.reportBanMessage("Denied")
					AnalyticsMockStub.reportBanMessageEvent("Denied")
				end,
			})
			local instance = Roact.mount(element)

			signal:Fire(PromptType.VoiceChatSuspendedTemporaryB)

			waitForEvents()

			-- Verify that "Shown" event fires when this ban modal appears
			jestExpect(analyticsMock).toHaveBeenCalledWith("Shown")
			jestExpect(vcsMock).toHaveBeenCalledWith("Shown")

			local confirmButton = Rhodium.Element.new(
				"game.CoreGui.InGameMenuInformationalDialog.DialogMainFrame.ButtonContainer.ConfirmButton"
			)
			local confirmButtonInstance = confirmButton:waitForRbxInstance()
			jestExpect(confirmButtonInstance).toBeDefined()
			confirmButtonInstance:click()
			waitForEvents()

			-- Verify that "Understood" event fires when confirm button is clicked here
			jestExpect(analyticsMock).toHaveBeenCalledWith("Understood")
			jestExpect(vcsMock).toHaveBeenCalledWith("Understood")

			local secondaryButton = Rhodium.Element.new(
				"game.CoreGui.InGameMenuInformationalDialog.DialogMainFrame.ButtonContainer.SecondaryButton"
			)
			local secondaryButtonInstance = secondaryButton:waitForRbxInstance()
			jestExpect(secondaryButtonInstance).toBeDefined()
			secondaryButtonInstance:click()
			waitForEvents()

			-- Verify that "Denied" event fires when secondary button is clicked here
			jestExpect(analyticsMock).toHaveBeenCalledWith("Denied")
			jestExpect(vcsMock).toHaveBeenCalledWith("Denied")

			Roact.unmount(instance)
			game:SetFastFlagForTesting("UpdateNudgeV3VoiceBanUI2", oldValue)
		end)

		it("should display feedback toast correctly", function()
			local signal = Instance.new("BindableEvent")

			local analyticsMock, analyticsMockFn = jest.fn()
			AnalyticsMockStub.reportBanMessageEvent = analyticsMockFn

			local vcsMock, vcsMockFn = jest.fn()
			VCSMStub.reportBanMessage = vcsMockFn

			local element = Roact.createElement(VoiceChatPromptFrame, {
				promptSignal = signal.Event,
				Analytics = AnalyticsMock,
				VoiceChatServiceManager = VCSMock,
			})
			local instance = Roact.mount(element)

			signal:Fire(PromptType.VoiceToxicityFeedbackToast)

			waitForEvents()

			local localization = Localization.new("en-us")
			local feedbackToastSubtitleKey = if GetFFlagUpdateNudgeV3VoiceBanUI()
				then "Feature.SettingsHub.Prompt.Subtitle.ThanksForLettingUsKnow"
				else "Feature.SettingsHub.Prompt.Subtitle.ThankYouForFeedback"

			local feedbackToastTitle = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.ThankYouForFeedback"),
			})
			local feedbackToastSubtitle = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format(feedbackToastSubtitleKey),
			})

			jestExpect(feedbackToastTitle).toBeDefined()
			jestExpect(feedbackToastSubtitle).toBeDefined()

			Roact.unmount(instance)
		end)

		it("should display voice consent declined toast correctly", function()
			local signal = Instance.new("BindableEvent")

			local analyticsMock, analyticsMockFn = jest.fn()
			AnalyticsMockStub.reportBanMessageEvent = analyticsMockFn

			local vcsMock, vcsMockFn = jest.fn()
			VCSMStub.reportBanMessage = vcsMockFn

			local element = Roact.createElement(VoiceChatPromptFrame, {
				promptSignal = signal.Event,
				Analytics = AnalyticsMock,
				VoiceChatServiceManager = VCSMock,
			})
			local instance = Roact.mount(element)

			signal:Fire(PromptType.VoiceConsentDeclinedToast)

			waitForEvents()

			local localization = Localization.new("en-us")
			local feedbackToastTitle = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.ChangeYourMind"),
			})
			local feedbackToastSubtitle = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.Subtitle.JoinVoiceLater"),
			})

			jestExpect(feedbackToastTitle).toBeDefined()
			jestExpect(feedbackToastSubtitle).toBeDefined()

			Roact.unmount(instance)
		end)

		it("should display voice consent accepted toast correctly", function()
			local signal = Instance.new("BindableEvent")

			local analyticsMock, analyticsMockFn = jest.fn()
			AnalyticsMockStub.reportBanMessageEvent = analyticsMockFn

			local vcsMock, vcsMockFn = jest.fn()
			VCSMStub.reportBanMessage = vcsMockFn

			local element = Roact.createElement(VoiceChatPromptFrame, {
				promptSignal = signal.Event,
				Analytics = AnalyticsMock,
				VoiceChatServiceManager = VCSMock,
			})
			local instance = Roact.mount(element)

			signal:Fire(PromptType.VoiceConsentAcceptedToast)

			waitForEvents()

			local localization = Localization.new("en-us")
			local feedbackToastTitle = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.JoinedVoiceChat"),
			})
			local feedbackToastSubtitle = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.Subtitle.MuteAnyoneAnytime"),
			})

			jestExpect(feedbackToastTitle).toBeDefined()
			jestExpect(feedbackToastSubtitle).toBeDefined()

			Roact.unmount(instance)
		end)

		it("should display voice consent modal variant 1 correctly", function()
			local signal = Instance.new("BindableEvent")

			local analyticsMock, analyticsMockFn = jest.fn()
			AnalyticsMockStub.reportBanMessageEvent = analyticsMockFn

			local vcsMock, vcsMockFn = jest.fn()
			VCSMStub.reportBanMessage = vcsMockFn

			local element = Roact.createElement(VoiceChatPromptFrame, {
				promptSignal = signal.Event,
				Analytics = AnalyticsMock,
				VoiceChatServiceManager = VCSMock,
			})
			local instance = Roact.mount(element)

			signal:Fire(PromptType.VoiceConsentModalV1)

			waitForEvents()

			local localization = Localization.new("en-us")
			local modalTitle = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.GetVoiceChat"),
			})
			local modalSubtitle = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.Subtitle.InExpVoiceUpsell1"),
			})
			local turnOnLabel = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Action.TurnOn"),
			})
			local notNowLabel = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Action.NotNow"),
			})
			local turnOnDisclaimer = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.Subtitle.SelectingTurnOn"),
			})

			jestExpect(modalTitle).toBeDefined()
			jestExpect(modalSubtitle).toBeDefined()
			jestExpect(turnOnLabel).toBeDefined()
			jestExpect(notNowLabel).toBeDefined()
			jestExpect(turnOnDisclaimer).toBeDefined()

			Roact.unmount(instance)
		end)

		it("should display voice consent modal variant 2 correctly", function()
			local signal = Instance.new("BindableEvent")

			local analyticsMock, analyticsMockFn = jest.fn()
			AnalyticsMockStub.reportBanMessageEvent = analyticsMockFn

			local vcsMock, vcsMockFn = jest.fn()
			VCSMStub.reportBanMessage = vcsMockFn

			local element = Roact.createElement(VoiceChatPromptFrame, {
				promptSignal = signal.Event,
				Analytics = AnalyticsMock,
				VoiceChatServiceManager = VCSMock,
			})
			local instance = Roact.mount(element)

			signal:Fire(PromptType.VoiceConsentModalV2)

			waitForEvents()

			local localization = Localization.new("en-us")
			local modalTitle = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.VoiceChatWithOthers"),
			})
			local modalSubtitle = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.Subtitle.InExpVoiceUpsell2"),
			})
			local turnOnLabel = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Action.TurnOn"),
			})
			local notNowLabel = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Action.NotNow"),
			})
			local turnOnDisclaimer = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.Subtitle.SelectingTurnOn"),
			})

			jestExpect(modalTitle).toBeDefined()
			jestExpect(modalSubtitle).toBeDefined()
			jestExpect(turnOnLabel).toBeDefined()
			jestExpect(notNowLabel).toBeDefined()
			jestExpect(turnOnDisclaimer).toBeDefined()

			Roact.unmount(instance)
		end)

		it("should display voice consent modal variant 3 correctly", function()
			local signal = Instance.new("BindableEvent")

			local analyticsMock, analyticsMockFn = jest.fn()
			AnalyticsMockStub.reportBanMessageEvent = analyticsMockFn

			local vcsMock, vcsMockFn = jest.fn()
			VCSMStub.reportBanMessage = vcsMockFn

			local element = Roact.createElement(VoiceChatPromptFrame, {
				promptSignal = signal.Event,
				Analytics = AnalyticsMock,
				VoiceChatServiceManager = VCSMock,
			})
			local instance = Roact.mount(element)

			signal:Fire(PromptType.VoiceConsentModalV3)

			waitForEvents()

			local localization = Localization.new("en-us")
			local modalTitle = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.GetVoiceChat"),
			})
			local modalSubtitle = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.Subtitle.InExpVoiceUpsell2"),
			})
			local turnOnLabel = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Action.TurnOn"),
			})
			local notNowLabel = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Action.NotNow"),
			})
			local turnOnDisclaimer = RhodiumHelpers.findFirstInstance(instance, {
				text = localization:Format("Feature.SettingsHub.Prompt.Subtitle.SelectingTurnOn"),
			})

			jestExpect(modalTitle).toBeDefined()
			jestExpect(modalSubtitle).toBeDefined()
			jestExpect(turnOnLabel).toBeDefined()
			jestExpect(notNowLabel).toBeDefined()
			jestExpect(turnOnDisclaimer).toBeDefined()

			Roact.unmount(instance)
		end)
	end)
end
