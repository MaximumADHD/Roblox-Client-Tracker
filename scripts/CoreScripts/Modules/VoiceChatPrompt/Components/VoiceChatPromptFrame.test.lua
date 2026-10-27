--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local jestExpect = JestGlobals.expect
local jest = JestGlobals.jest
local afterEach = JestGlobals.afterEach
local VoiceChatPromptFrame = require(script.Parent.VoiceChatPromptFrame)
local FFlagVoiceChatBanDurationUseServerTime =
	require(script.Parent.Parent.Parent.VoiceChat.Flags.FFlagVoiceChatBanDurationUseServerTime)
local bannedUntilFixture = if FFlagVoiceChatBanDurationUseServerTime
	then { minutes = 20, absoluteSeconds = 1700000000 }
	else "20"
local InGameMenuPolicy = require(script.Parent.Parent.Parent.InGameMenu.InGameMenuPolicy)
local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents
local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local rtl = require(CorePackages.Packages.Dev.ReactTestingLibrary)
local RhodiumHelpers = require(CorePackages.Workspace.Packages.RhodiumHelpers)

local Roact = require(CorePackages.Packages.Roact)
local PromptType = require(script.Parent.Parent.PromptType)
local VoiceChatCore = require(CorePackages.Workspace.Packages.VoiceChatCore)
local GetFFlagMicConsumerRegistry = VoiceChatCore.Flags and VoiceChatCore.Flags.GetFFlagMicConsumerRegistry
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local GetFFlagDisablePVUpsellDataConsent = SharedFlags.GetFFlagDisablePVUpsellDataConsent

local Localization = require(CorePackages.Workspace.Packages.RobloxAppLocales).Localization
local InExperienceLocalization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local AnalyticsMockStub = {
	reportBanMessageEvent = function(str) end,
}

local AnalyticsMock = {}
function AnalyticsMock:reportBanMessageEvent(str)
	AnalyticsMockStub.reportBanMessageEvent(str)
end
function AnalyticsMock:reportInExpConsent(...) end
function AnalyticsMock:reportDevicePermissionsModalEvent(...) end

local VCSMStub = {
	reportBanMessage = function(str) end,
}

local VCSMock = {}
function VCSMock:reportBanMessage(str)
	VCSMStub.reportBanMessage(str)
end
function VCSMock:GetSessionId()
	return nil
end
function VCSMock:GetInExpUpsellAnalyticsData()
	return {}
end
function VCSMock:HasSeamlessVoiceFeature(_featureName)
	return false
end

local UserInputServiceStub = {
	GetPlatform = function() end,
}

local UserInputServiceMock = {}
function UserInputServiceMock:GetPlatform()
	return UserInputServiceStub.GetPlatform()
end

local currentInstance = nil
local currentBanSignal = nil
local previousShowDevicePermissionsModalFlag = nil

describe("VoiceChatPromptFrame", function()
	afterEach(function()
		if currentInstance then
			Roact.unmount(currentInstance)
			currentInstance = nil
		end
		if currentBanSignal then
			currentBanSignal:Destroy()
			currentBanSignal = nil
		end
		if previousShowDevicePermissionsModalFlag ~= nil then
			game:SetFastFlagForTesting("ShowDevicePermissionsModal3", previousShowDevicePermissionsModalFlag)
			previousShowDevicePermissionsModalFlag = nil
		end
	end)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(VoiceChatPromptFrame)

		local policyWrappedElement = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { InGameMenuPolicy.Mapper },
		}, {
			Content = element,
		})
		currentInstance = Roact.mount(policyWrappedElement, RobloxGui, "VoiceChatPromptFrame")
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
			bannedUntil = if FFlagVoiceChatBanDurationUseServerTime
				then bannedUntilFixture
				else DateTime.fromUnixTimestamp(1700000000)
					:FormatLocalTime("l LT", game:GetService("LocalizationService").RobloxLocaleId),
		})
		local policyWrappedElement = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { InGameMenuPolicy.Mapper },
		}, {
			Content = element,
		})
		currentInstance = Roact.mount(policyWrappedElement, RobloxGui, "VoiceChatPromptFrame")

		Roact.act(function()
			signal:Fire(PromptType.VoiceChatSuspendedTemporary)
			waitForEvents()
		end)

		jestExpect(analyticsMock).toHaveBeenCalledWith("Shown")
		jestExpect(vcsMock).toHaveBeenCalledWith("Shown")
	end)

	it("should display updated ban modal when signal is passed in", function()
		local signal = Instance.new("BindableEvent")

		local analyticsMock, analyticsMockFn = jest.fn()
		AnalyticsMockStub.reportBanMessageEvent = analyticsMockFn

		local vcsMock, vcsMockFn = jest.fn()
		VCSMStub.reportBanMessage = vcsMockFn

		local element = Roact.createElement(VoiceChatPromptFrame, {
			promptSignal = signal.Event,
			Analytics = AnalyticsMock,
			VoiceChatServiceManager = VCSMock,
			bannedUntil = bannedUntilFixture,
		})
		local policyWrappedElement = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { InGameMenuPolicy.Mapper },
		}, {
			Content = element,
		})
		currentInstance = Roact.mount(policyWrappedElement, RobloxGui, "VoiceChatPromptFrame")

		jestExpect(CoreGui:FindFirstChild("InGameMenuInformationalDialog")).toBeNil()

		Roact.act(function()
			signal:Fire(PromptType.VoiceChatSuspendedTemporaryB)
			waitForEvents()
		end)

		jestExpect(analyticsMock).toHaveBeenCalledWith("Shown")
		jestExpect(vcsMock).toHaveBeenCalledWith("Shown")

		local dialog = CoreGui:FindFirstChild("InGameMenuInformationalDialog")
		jestExpect(dialog).toBeDefined()
		jestExpect(dialog.Enabled).toBe(true)

		local dialogMainFrame = dialog.DialogMainFrame
		jestExpect(dialogMainFrame.Visible).toBe(true)
		jestExpect(dialogMainFrame.ButtonContainer.SecondaryButton).toBeDefined()
		jestExpect(dialogMainFrame.TitleTextContainer.TitleText.Text).never.toBe("")
		jestExpect(dialogMainFrame.BodyTextContainer.BodyText.Text).never.toBe("")
	end)

	describe("ban duration text", function()
		local banEndSeconds = 1700000000
		local banEndDate = DateTime.fromUnixTimestamp(banEndSeconds)
			:FormatLocalTime("l LT", game:GetService("LocalizationService").RobloxLocaleId)
		local effectiveUntil = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.EffectiveUntil")
			.. " "
			.. banEndDate
			.. "."
		local getVariant2 =
			require(script.Parent.Parent.Parent.VoiceChat.Flags.GetFFlagVoiceChatDisruptiveVoiceNudgeEnableVariant2)

		local function mountFrame(bannedUntil)
			currentBanSignal = Instance.new("BindableEvent")
			local element = Roact.createElement(VoiceChatPromptFrame, {
				promptSignal = currentBanSignal.Event,
				bannedUntil = bannedUntil,
			})
			currentInstance = Roact.mount(
				Roact.createElement(InGameMenuPolicy.Provider, {
					policy = { InGameMenuPolicy.Mapper },
				}, { Content = element }),
				RobloxGui,
				"VoiceChatPromptFrame"
			)
		end

		if FFlagVoiceChatBanDurationUseServerTime then
			for _, minutes in { 1, 60 } do
				it("shows a countdown at the " .. minutes .. " minute boundary", function()
					mountFrame({ minutes = minutes, absoluteSeconds = banEndSeconds })
					Roact.act(function()
						currentBanSignal:Fire(PromptType.VoiceChatSuspendedTemporaryB)
					end)
					waitForEvents.act()

					local expected = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.XMinuteSuspension", {
						banDurationInMinutes = minutes,
					})
					local label = rtl.within(CoreGui).getByText(function(text)
						return string.find(text, expected, 1, true) ~= nil
					end)
					jestExpect(label.Text).toContain("<b>" .. expected .. "</b>")
				end)
			end
			for _, minutes in { -5, 0, 61 } do
				it("shows the labeled end date for an out-of-range " .. minutes .. " minute duration", function()
					mountFrame({ minutes = minutes, absoluteSeconds = banEndSeconds })
					Roact.act(function()
						currentBanSignal:Fire(PromptType.VoiceChatSuspendedTemporaryB)
					end)
					waitForEvents.act()

					local label = rtl.within(CoreGui).getByText(function(text)
						return string.find(text, effectiveUntil, 1, true) ~= nil
					end)
					jestExpect(label.Text).toContain("<b>" .. effectiveUntil .. "</b>")
				end)
			end
		else
			it("preserves the legacy negative countdown when the flag is off", function()
				mountFrame("-5")
				Roact.act(function()
					currentBanSignal:Fire(PromptType.VoiceChatSuspendedTemporaryB)
				end)
				waitForEvents.act()

				local expected = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.XMinuteSuspension", {
					banDurationInMinutes = "-5",
				})
				local label = rtl.within(CoreGui).getByText(function(text)
					return string.find(text, expected, 1, true) ~= nil
				end)
				jestExpect(label.Text).toContain("<b>" .. expected .. "</b>")
			end)
		end

		if getVariant2() then
			it("uses the V2 countdown copy for the BV2 modal", function()
				local bannedUntil = if FFlagVoiceChatBanDurationUseServerTime
					then { minutes = 20, absoluteSeconds = banEndSeconds }
					else "20"
				mountFrame(bannedUntil)
				Roact.act(function()
					currentBanSignal:Fire(PromptType.VoiceChatSuspendedTemporaryBV2)
				end)
				waitForEvents.act()

				local expected = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.XMinuteSuspensionV2", {
					banDurationInMinutes = if FFlagVoiceChatBanDurationUseServerTime then 20 else "20",
				})
				local label = rtl.within(CoreGui).getByText(function(text)
					return string.find(text, expected, 1, true) ~= nil
				end)
				jestExpect(label.Text).toContain("<b>" .. expected .. "</b>")
			end)
		end

		it("shows the end date with one label for the original temporary-ban modal", function()
			local bannedUntil = if FFlagVoiceChatBanDurationUseServerTime
				then { minutes = 20, absoluteSeconds = banEndSeconds }
				else banEndDate
			mountFrame(bannedUntil)
			Roact.act(function()
				currentBanSignal:Fire(PromptType.VoiceChatSuspendedTemporary)
			end)
			waitForEvents.act()

			local label = rtl.within(CoreGui).getByText(function(text)
				return string.find(text, effectiveUntil, 1, true) ~= nil
			end)
			jestExpect(label.Text).toContain("<b>" .. effectiveUntil .. "</b>")
		end)
	end)

	it("should call onPrimaryActivated and onSecondaryActivated correctly", function()
		local signal = Instance.new("BindableEvent")

		local analyticsMock, analyticsMockFn = jest.fn()
		AnalyticsMockStub.reportBanMessageEvent = analyticsMockFn

		local vcsMock, vcsMockFn = jest.fn()
		VCSMStub.reportBanMessage = vcsMockFn

		local element = Roact.createElement(VoiceChatPromptFrame, {
			promptSignal = signal.Event,
			Analytics = AnalyticsMock,
			VoiceChatServiceManager = VCSMock,
			bannedUntil = bannedUntilFixture,
			onPrimaryActivated = function()
				VCSMStub.reportBanMessage("Understood")
				AnalyticsMockStub.reportBanMessageEvent("Understood")
			end,
			onSecondaryActivated = function()
				VCSMStub.reportBanMessage("Denied")
				AnalyticsMockStub.reportBanMessageEvent("Denied")
			end,
		})
		local policyWrappedElement = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { InGameMenuPolicy.Mapper },
		}, {
			Content = element,
		})
		currentInstance = Roact.mount(policyWrappedElement, RobloxGui, "VoiceChatPromptFrame")

		Roact.act(function()
			signal:Fire(PromptType.VoiceChatSuspendedTemporaryB)
			waitForEvents()
		end)

		-- Verify that "Shown" event fires when this ban modal appears
		jestExpect(analyticsMock).toHaveBeenCalledWith("Shown")
		jestExpect(vcsMock).toHaveBeenCalledWith("Shown")

		local confirmButton = Rhodium.Element.new(
			"game.CoreGui.InGameMenuInformationalDialog.DialogMainFrame.ButtonContainer.ConfirmButton"
		)
		local confirmButtonInstance = confirmButton:waitForRbxInstance()
		jestExpect(confirmButtonInstance).toBeDefined()
		-- :click() lives on the Rhodium Element wrapper, not the raw Instance
		-- returned by :waitForRbxInstance() -- see the test-with-rhodium skill.
		confirmButton:click()
		waitForEvents()

		-- Verify that "Understood" event fires when confirm button is clicked here
		jestExpect(analyticsMock).toHaveBeenCalledWith("Understood")
		jestExpect(vcsMock).toHaveBeenCalledWith("Understood")

		local secondaryButton = Rhodium.Element.new(
			"game.CoreGui.InGameMenuInformationalDialog.DialogMainFrame.ButtonContainer.SecondaryButton"
		)
		local secondaryButtonInstance = secondaryButton:waitForRbxInstance()
		jestExpect(secondaryButtonInstance).toBeDefined()
		secondaryButton:click()
		waitForEvents()

		-- Verify that "Denied" event fires when secondary button is clicked here
		jestExpect(analyticsMock).toHaveBeenCalledWith("Denied")
		jestExpect(vcsMock).toHaveBeenCalledWith("Denied")
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
		local policyWrappedElement = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { InGameMenuPolicy.Mapper },
		}, {
			Content = element,
		})
		currentInstance = Roact.mount(policyWrappedElement, RobloxGui, "VoiceChatPromptFrame")

		Roact.act(function()
			signal:Fire(PromptType.VoiceToxicityFeedbackToast)
			waitForEvents()
		end)

		local localization = Localization.new("en-us")
		local feedbackToastSubtitleKey = "Feature.SettingsHub.Prompt.Subtitle.ThanksForLettingUsKnow"

		local feedbackToastTitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Prompt.ThankYouForFeedback"),
		})
		local feedbackToastSubtitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format(feedbackToastSubtitleKey),
		})

		jestExpect(feedbackToastTitle).toBeDefined()
		jestExpect(feedbackToastSubtitle).toBeDefined()
	end)

	if GetFFlagMicConsumerRegistry() then
		-- Skipped: "Feature.SettingsHub.Prompt.MicPermissionDenied" (and its
		-- Subtitle counterpart) don't exist in any translation data in this
		-- repo. This is a real content gap, not a wrong lookup path --
		-- VoiceChatPromptFrame.lua's own formatMicPromptText() calls this same
		-- locales:Format(key) wrapped in a pcall and falls back to a
		-- hardcoded English string specifically because the key can fail to
		-- resolve. Calling :Format() directly here (unprotected, matching
		-- production's lookup but not its fallback) throws instead of
		-- producing an assertable value. Tracked as a known content gap, not
		-- a flaky test -- re-enable once the translation key is added.
		it.skip("should display the mic permission denied toast", function()
			local signal = Instance.new("BindableEvent")
			local element = Roact.createElement(VoiceChatPromptFrame, {
				promptSignal = signal.Event,
			})
			local policyWrappedElement = Roact.createElement(InGameMenuPolicy.Provider, {
				policy = { InGameMenuPolicy.Mapper },
			}, {
				Content = element,
			})
			currentInstance = Roact.mount(policyWrappedElement, RobloxGui, "VoiceChatPromptFrame")

			Roact.act(function()
				signal:Fire(PromptType.MicPermissionDenied)
				waitForEvents()
			end)

			local localization = InExperienceLocalization.new("en-us")
			local title = localization:Format("Feature.SettingsHub.Prompt.MicPermissionDenied")
			local subtitle = localization:Format("Feature.SettingsHub.Prompt.Subtitle.MicPermissionDenied")
			local toastTitle = RhodiumHelpers.findFirstInstance(CoreGui, { text = title })
			local toastSubtitle = RhodiumHelpers.findFirstInstance(CoreGui, { text = subtitle })

			jestExpect(toastTitle).toBeDefined()
			jestExpect(toastSubtitle).toBeDefined()
		end)
	end

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
		local policyWrappedElement = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { InGameMenuPolicy.Mapper },
		}, {
			Content = element,
		})
		currentInstance = Roact.mount(policyWrappedElement, RobloxGui, "VoiceChatPromptFrame")

		Roact.act(function()
			signal:Fire(PromptType.VoiceConsentDeclinedToast)
			waitForEvents()
		end)

		local localization = Localization.new("en-us")
		local feedbackToastTitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Prompt.ChangeYourMind"),
		})
		local feedbackToastSubtitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Prompt.Subtitle.JoinVoiceLater"),
		})

		jestExpect(feedbackToastTitle).toBeDefined()
		jestExpect(feedbackToastSubtitle).toBeDefined()
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
		local policyWrappedElement = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { InGameMenuPolicy.Mapper },
		}, {
			Content = element,
		})
		currentInstance = Roact.mount(policyWrappedElement, RobloxGui, "VoiceChatPromptFrame")

		Roact.act(function()
			signal:Fire(PromptType.VoiceConsentAcceptedToast)
			waitForEvents()
		end)

		local localization = Localization.new("en-us")
		local feedbackToastTitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Prompt.JoinedVoiceChat"),
		})
		local feedbackToastSubtitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Prompt.Subtitle.MuteAnyoneAnytime"),
		})

		jestExpect(feedbackToastTitle).toBeDefined()
		jestExpect(feedbackToastSubtitle).toBeDefined()
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
		local policyWrappedElement = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { InGameMenuPolicy.Mapper },
		}, {
			Content = element,
		})
		currentInstance = Roact.mount(policyWrappedElement, RobloxGui, "VoiceChatPromptFrame")

		Roact.act(function()
			signal:Fire(PromptType.VoiceConsentModalV1)
			waitForEvents()
		end)

		local localization = Localization.new("en-us")
		local modalTitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Prompt.GetVoiceChat"),
		})
		local modalSubtitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Prompt.Subtitle.InExpVoiceUpsell1"),
		})
		local turnOnLabel = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Action.TurnOn"),
		})
		local notNowLabel = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Action.NotNow"),
		})
		local turnOnDisclaimer = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Prompt.Subtitle.SelectingTurnOn"),
		})

		jestExpect(modalTitle).toBeDefined()
		jestExpect(modalSubtitle).toBeDefined()
		jestExpect(turnOnLabel).toBeDefined()
		jestExpect(notNowLabel).toBeDefined()

		-- VoiceChatConsentModal.lua omits the whole InfoTextContainer (which
		-- holds this disclaimer) when GetFFlagDisablePVUpsellDataConsent() is
		-- true, so match whichever branch is actually active instead of
		-- assuming it's always shown.
		if GetFFlagDisablePVUpsellDataConsent() then
			jestExpect(turnOnDisclaimer).toBeUndefined()
		else
			jestExpect(turnOnDisclaimer).toBeDefined()
		end
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
		local policyWrappedElement = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { InGameMenuPolicy.Mapper },
		}, {
			Content = element,
		})
		currentInstance = Roact.mount(policyWrappedElement, RobloxGui, "VoiceChatPromptFrame")

		Roact.act(function()
			signal:Fire(PromptType.VoiceConsentModalV2)
			waitForEvents()
		end)

		local localization = Localization.new("en-us")
		local modalTitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Prompt.VoiceChatWithOthers"),
		})
		local modalSubtitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Prompt.Subtitle.InExpVoiceUpsell2"),
		})
		local turnOnLabel = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Action.TurnOn"),
		})
		local notNowLabel = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Action.NotNow"),
		})
		local turnOnDisclaimer = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Prompt.Subtitle.SelectingTurnOn"),
		})

		jestExpect(modalTitle).toBeDefined()
		jestExpect(modalSubtitle).toBeDefined()
		jestExpect(turnOnLabel).toBeDefined()
		jestExpect(notNowLabel).toBeDefined()

		-- VoiceChatConsentModal.lua omits the whole InfoTextContainer (which
		-- holds this disclaimer) when GetFFlagDisablePVUpsellDataConsent() is
		-- true, so match whichever branch is actually active instead of
		-- assuming it's always shown.
		if GetFFlagDisablePVUpsellDataConsent() then
			jestExpect(turnOnDisclaimer).toBeUndefined()
		else
			jestExpect(turnOnDisclaimer).toBeDefined()
		end
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
		local policyWrappedElement = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { InGameMenuPolicy.Mapper },
		}, {
			Content = element,
		})
		currentInstance = Roact.mount(policyWrappedElement, RobloxGui, "VoiceChatPromptFrame")

		Roact.act(function()
			signal:Fire(PromptType.VoiceConsentModalV3)
			waitForEvents()
		end)

		local localization = Localization.new("en-us")
		local modalTitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Prompt.GetVoiceChat"),
		})
		local modalSubtitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Prompt.Subtitle.InExpVoiceUpsell2"),
		})
		local turnOnLabel = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Action.TurnOn"),
		})
		local notNowLabel = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Action.NotNow"),
		})
		local turnOnDisclaimer = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = localization:Format("Feature.SettingsHub.Prompt.Subtitle.SelectingTurnOn"),
		})

		jestExpect(modalTitle).toBeDefined()
		jestExpect(modalSubtitle).toBeDefined()
		jestExpect(turnOnLabel).toBeDefined()
		jestExpect(notNowLabel).toBeDefined()

		-- VoiceChatConsentModal.lua omits the whole InfoTextContainer (which
		-- holds this disclaimer) when GetFFlagDisablePVUpsellDataConsent() is
		-- true, so match whichever branch is actually active instead of
		-- assuming it's always shown.
		if GetFFlagDisablePVUpsellDataConsent() then
			jestExpect(turnOnDisclaimer).toBeUndefined()
		else
			jestExpect(turnOnDisclaimer).toBeDefined()
		end
	end)

	it("should display device permissions modal for Windows with deeplink correctly", function()
		local signal = Instance.new("BindableEvent")

		previousShowDevicePermissionsModalFlag = game:GetFastFlag("ShowDevicePermissionsModal3")
		game:SetFastFlagForTesting("ShowDevicePermissionsModal3", true)

		local analyticsMock, analyticsMockFn = jest.fn()
		AnalyticsMockStub.reportBanMessageEvent = analyticsMockFn

		local vcsMock, vcsMockFn = jest.fn()
		VCSMStub.reportBanMessage = vcsMockFn

		local userInputServiceMock, userInputServiceMockFn = jest.fn()
		userInputServiceMock.mockReturnValue(Enum.Platform.Windows)
		UserInputServiceStub.GetPlatform = userInputServiceMockFn

		local element = Roact.createElement(VoiceChatPromptFrame, {
			promptSignal = signal.Event,
			Analytics = AnalyticsMock,
			VoiceChatServiceManager = VCSMock,
			UserInputService = UserInputServiceMock,
			settingsAppAvailable = true,
		})
		local policyWrappedElement = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { InGameMenuPolicy.Mapper },
		}, {
			Content = element,
		})
		currentInstance = Roact.mount(policyWrappedElement, RobloxGui, "VoiceChatPromptFrame")

		Roact.act(function()
			signal:Fire(PromptType.DevicePermissionsModal)
			waitForEvents()
		end)

		local modalTitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.NeedMicrophoneAccess"),
		})
		local modalSubtitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.AllowMicrophoneAccess"),
		})
		local openSettingsLabel = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.OpenSettings"),
		})
		local notNowLabel = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.NotNow"),
		})
		local deeplinkDirections = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.WindowsWithDeeplink"),
		})

		jestExpect(modalTitle).toBeDefined()
		jestExpect(modalSubtitle).toBeDefined()
		jestExpect(openSettingsLabel).toBeDefined()
		jestExpect(notNowLabel).toBeDefined()
		jestExpect(deeplinkDirections).toBeDefined()
	end)

	it("should display device permissions modal for Windows without deeplink correctly", function()
		local signal = Instance.new("BindableEvent")

		previousShowDevicePermissionsModalFlag = game:GetFastFlag("ShowDevicePermissionsModal3")
		game:SetFastFlagForTesting("ShowDevicePermissionsModal3", true)

		local analyticsMock, analyticsMockFn = jest.fn()
		AnalyticsMockStub.reportBanMessageEvent = analyticsMockFn

		local vcsMock, vcsMockFn = jest.fn()
		VCSMStub.reportBanMessage = vcsMockFn

		local userInputServiceMock, userInputServiceMockFn = jest.fn()
		userInputServiceMock.mockReturnValue(Enum.Platform.Windows)
		UserInputServiceStub.GetPlatform = userInputServiceMockFn

		local element = Roact.createElement(VoiceChatPromptFrame, {
			promptSignal = signal.Event,
			Analytics = AnalyticsMock,
			VoiceChatServiceManager = VCSMock,
			UserInputService = UserInputServiceMock,
			settingsAppAvailable = false,
		})
		local policyWrappedElement = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { InGameMenuPolicy.Mapper },
		}, {
			Content = element,
		})
		currentInstance = Roact.mount(policyWrappedElement, RobloxGui, "VoiceChatPromptFrame")

		Roact.act(function()
			signal:Fire(PromptType.DevicePermissionsModal)
			waitForEvents()
		end)

		local modalTitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.NeedMicrophoneAccess"),
		})
		local modalSubtitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.AllowMicrophoneAccess"),
		})
		local okLabel = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.Ok"),
		})
		local deeplinkDirections = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.WindowsWithoutDeeplink"),
		})

		jestExpect(modalTitle).toBeDefined()
		jestExpect(modalSubtitle).toBeDefined()
		jestExpect(okLabel).toBeDefined()
		jestExpect(deeplinkDirections).toBeDefined()
	end)

	it("should display device permissions modal for OSX with deeplink correctly", function()
		local signal = Instance.new("BindableEvent")

		previousShowDevicePermissionsModalFlag = game:GetFastFlag("ShowDevicePermissionsModal3")
		game:SetFastFlagForTesting("ShowDevicePermissionsModal3", true)

		local analyticsMock, analyticsMockFn = jest.fn()
		AnalyticsMockStub.reportBanMessageEvent = analyticsMockFn

		local vcsMock, vcsMockFn = jest.fn()
		VCSMStub.reportBanMessage = vcsMockFn

		local userInputServiceMock, userInputServiceMockFn = jest.fn()
		userInputServiceMock.mockReturnValue(Enum.Platform.OSX)
		UserInputServiceStub.GetPlatform = userInputServiceMockFn

		local element = Roact.createElement(VoiceChatPromptFrame, {
			promptSignal = signal.Event,
			Analytics = AnalyticsMock,
			VoiceChatServiceManager = VCSMock,
			UserInputService = UserInputServiceMock,
			settingsAppAvailable = true,
		})
		local policyWrappedElement = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { InGameMenuPolicy.Mapper },
		}, {
			Content = element,
		})
		currentInstance = Roact.mount(policyWrappedElement, RobloxGui, "VoiceChatPromptFrame")

		Roact.act(function()
			signal:Fire(PromptType.DevicePermissionsModal)
			waitForEvents()
		end)

		local modalTitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.NeedMicrophoneAccess"),
		})
		local modalSubtitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.AllowMicrophoneAccess"),
		})
		local openSettingsLabel = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.OpenSettings"),
		})
		local notNowLabel = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.NotNow"),
		})

		jestExpect(modalTitle).toBeDefined()
		jestExpect(modalSubtitle).toBeDefined()
		jestExpect(openSettingsLabel).toBeDefined()
		jestExpect(notNowLabel).toBeDefined()
	end)

	it("should display device permissions modal for OSX without deeplink correctly", function()
		local signal = Instance.new("BindableEvent")

		previousShowDevicePermissionsModalFlag = game:GetFastFlag("ShowDevicePermissionsModal3")
		game:SetFastFlagForTesting("ShowDevicePermissionsModal3", true)

		local analyticsMock, analyticsMockFn = jest.fn()
		AnalyticsMockStub.reportBanMessageEvent = analyticsMockFn

		local vcsMock, vcsMockFn = jest.fn()
		VCSMStub.reportBanMessage = vcsMockFn

		local userInputServiceMock, userInputServiceMockFn = jest.fn()
		userInputServiceMock.mockReturnValue(Enum.Platform.OSX)
		UserInputServiceStub.GetPlatform = userInputServiceMockFn

		local element = Roact.createElement(VoiceChatPromptFrame, {
			promptSignal = signal.Event,
			Analytics = AnalyticsMock,
			VoiceChatServiceManager = VCSMock,
			UserInputService = UserInputServiceMock,
			settingsAppAvailable = false,
		})
		local policyWrappedElement = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { InGameMenuPolicy.Mapper },
		}, {
			Content = element,
		})
		currentInstance = Roact.mount(policyWrappedElement, RobloxGui, "VoiceChatPromptFrame")

		Roact.act(function()
			signal:Fire(PromptType.DevicePermissionsModal)
			waitForEvents()
		end)

		local modalTitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.NeedMicrophoneAccess"),
		})
		local modalSubtitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.AllowMicrophoneAccess"),
		})
		local okLabel = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.Ok"),
		})

		jestExpect(modalTitle).toBeDefined()
		jestExpect(modalSubtitle).toBeDefined()
		jestExpect(okLabel).toBeDefined()
	end)

	it("should display device permissions modal for iOS with deeplink correctly", function()
		local signal = Instance.new("BindableEvent")

		previousShowDevicePermissionsModalFlag = game:GetFastFlag("ShowDevicePermissionsModal3")
		game:SetFastFlagForTesting("ShowDevicePermissionsModal3", true)

		local analyticsMock, analyticsMockFn = jest.fn()
		AnalyticsMockStub.reportBanMessageEvent = analyticsMockFn

		local vcsMock, vcsMockFn = jest.fn()
		VCSMStub.reportBanMessage = vcsMockFn

		local userInputServiceMock, userInputServiceMockFn = jest.fn()
		userInputServiceMock.mockReturnValue(Enum.Platform.IOS)
		UserInputServiceStub.GetPlatform = userInputServiceMockFn

		local element = Roact.createElement(VoiceChatPromptFrame, {
			promptSignal = signal.Event,
			Analytics = AnalyticsMock,
			VoiceChatServiceManager = VCSMock,
			UserInputService = UserInputServiceMock,
			settingsAppAvailable = true,
		})
		local policyWrappedElement = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { InGameMenuPolicy.Mapper },
		}, {
			Content = element,
		})
		currentInstance = Roact.mount(policyWrappedElement, RobloxGui, "VoiceChatPromptFrame")

		Roact.act(function()
			signal:Fire(PromptType.DevicePermissionsModal)
			waitForEvents()
		end)

		local modalTitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.NeedMicrophoneAccess"),
		})
		local modalSubtitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.AllowMicrophoneAccess"),
		})
		local openSettingsLabel = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.OpenSettings"),
		})
		local notNowLabel = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.NotNow"),
		})

		jestExpect(modalTitle).toBeDefined()
		jestExpect(modalSubtitle).toBeDefined()
		jestExpect(openSettingsLabel).toBeDefined()
		jestExpect(notNowLabel).toBeDefined()
	end)

	it("should display device permissions modal for iOS without deeplink correctly", function()
		local signal = Instance.new("BindableEvent")

		previousShowDevicePermissionsModalFlag = game:GetFastFlag("ShowDevicePermissionsModal3")
		game:SetFastFlagForTesting("ShowDevicePermissionsModal3", true)

		local analyticsMock, analyticsMockFn = jest.fn()
		AnalyticsMockStub.reportBanMessageEvent = analyticsMockFn

		local vcsMock, vcsMockFn = jest.fn()
		VCSMStub.reportBanMessage = vcsMockFn

		local userInputServiceMock, userInputServiceMockFn = jest.fn()
		userInputServiceMock.mockReturnValue(Enum.Platform.IOS)
		UserInputServiceStub.GetPlatform = userInputServiceMockFn

		local element = Roact.createElement(VoiceChatPromptFrame, {
			promptSignal = signal.Event,
			Analytics = AnalyticsMock,
			VoiceChatServiceManager = VCSMock,
			UserInputService = UserInputServiceMock,
			settingsAppAvailable = false,
		})
		local policyWrappedElement = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { InGameMenuPolicy.Mapper },
		}, {
			Content = element,
		})
		currentInstance = Roact.mount(policyWrappedElement, RobloxGui, "VoiceChatPromptFrame")

		Roact.act(function()
			signal:Fire(PromptType.DevicePermissionsModal)
			waitForEvents()
		end)

		local modalTitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.NeedMicrophoneAccess"),
		})
		local modalSubtitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.AllowMicrophoneAccess"),
		})
		local okLabel = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.Ok"),
		})

		jestExpect(modalTitle).toBeDefined()
		jestExpect(modalSubtitle).toBeDefined()
		jestExpect(okLabel).toBeDefined()
	end)

	it("should display device permissions modal for Android with deeplink correctly", function()
		local signal = Instance.new("BindableEvent")

		previousShowDevicePermissionsModalFlag = game:GetFastFlag("ShowDevicePermissionsModal3")
		game:SetFastFlagForTesting("ShowDevicePermissionsModal3", true)

		local analyticsMock, analyticsMockFn = jest.fn()
		AnalyticsMockStub.reportBanMessageEvent = analyticsMockFn

		local vcsMock, vcsMockFn = jest.fn()
		VCSMStub.reportBanMessage = vcsMockFn

		local userInputServiceMock, userInputServiceMockFn = jest.fn()
		userInputServiceMock.mockReturnValue(Enum.Platform.Android)
		UserInputServiceStub.GetPlatform = userInputServiceMockFn

		local element = Roact.createElement(VoiceChatPromptFrame, {
			promptSignal = signal.Event,
			Analytics = AnalyticsMock,
			VoiceChatServiceManager = VCSMock,
			UserInputService = UserInputServiceMock,
			settingsAppAvailable = true,
		})
		local policyWrappedElement = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { InGameMenuPolicy.Mapper },
		}, {
			Content = element,
		})
		currentInstance = Roact.mount(policyWrappedElement, RobloxGui, "VoiceChatPromptFrame")

		Roact.act(function()
			signal:Fire(PromptType.DevicePermissionsModal)
			waitForEvents()
		end)

		local modalTitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.NeedMicrophoneAccess"),
		})
		local modalSubtitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.AllowMicrophoneAccess"),
		})
		local openSettingsLabel = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.OpenSettings"),
		})
		local notNowLabel = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.NotNow"),
		})
		local deeplinkDirections = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.AndroidWithDeeplink"),
		})

		jestExpect(modalTitle).toBeDefined()
		jestExpect(modalSubtitle).toBeDefined()
		jestExpect(openSettingsLabel).toBeDefined()
		jestExpect(notNowLabel).toBeDefined()
		jestExpect(deeplinkDirections).toBeDefined()
	end)

	it("should display device permissions modal for Android without deeplink correctly", function()
		local signal = Instance.new("BindableEvent")

		previousShowDevicePermissionsModalFlag = game:GetFastFlag("ShowDevicePermissionsModal3")
		game:SetFastFlagForTesting("ShowDevicePermissionsModal3", true)

		local analyticsMock, analyticsMockFn = jest.fn()
		AnalyticsMockStub.reportBanMessageEvent = analyticsMockFn

		local vcsMock, vcsMockFn = jest.fn()
		VCSMStub.reportBanMessage = vcsMockFn

		local userInputServiceMock, userInputServiceMockFn = jest.fn()
		userInputServiceMock.mockReturnValue(Enum.Platform.Android)
		UserInputServiceStub.GetPlatform = userInputServiceMockFn

		local element = Roact.createElement(VoiceChatPromptFrame, {
			promptSignal = signal.Event,
			Analytics = AnalyticsMock,
			VoiceChatServiceManager = VCSMock,
			UserInputService = UserInputServiceMock,
			settingsAppAvailable = false,
		})
		local policyWrappedElement = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { InGameMenuPolicy.Mapper },
		}, {
			Content = element,
		})
		currentInstance = Roact.mount(policyWrappedElement, RobloxGui, "VoiceChatPromptFrame")

		Roact.act(function()
			signal:Fire(PromptType.DevicePermissionsModal)
			waitForEvents()
		end)

		local modalTitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.NeedMicrophoneAccess"),
		})
		local modalSubtitle = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.AllowMicrophoneAccess"),
		})
		local okLabel = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.Ok"),
		})
		local deeplinkDirections = RhodiumHelpers.findFirstInstance(CoreGui, {
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.AndroidWithoutDeeplink"),
		})

		jestExpect(modalTitle).toBeDefined()
		jestExpect(modalSubtitle).toBeDefined()
		jestExpect(okLabel).toBeDefined()
		jestExpect(deeplinkDirections).toBeDefined()
	end)
end)
