local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui").RobloxGui

local ChromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Signals = require(CorePackages.Packages.Signals)
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)
local rtl = require(CorePackages.Packages.Dev.ReactTestingLibrary)
local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

local FFlagProactiveVoiceRestrictionsUFR = require(RobloxGui.Modules.VoiceChat.Flags.FFlagProactiveVoiceRestrictionsUFR)

local events
local joinVoice
-- JoinVoiceBinder captures this table when it is required, so tests refill it rather than replace it.
local manager: { [string]: any } = {}
local setRestriction

jest.mock(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager, function()
	return { default = manager }
end)
jest.mock(Chrome.ChromeShared.Service, function()
	return {
		AvailabilitySignal = ChromeUtils.AvailabilitySignalState,
		integrations = function()
			return { join_voice = joinVoice }
		end,
	}
end)
jest.mock(CorePackages.Workspace.Packages.CrossExperience, function()
	return {
		Utils = {
			isVoiceFocused = function()
				return false
			end,
		},
	}
end)
jest.mock(CorePackages.Workspace.Packages.CrossExperienceVoice, function()
	return {
		Hooks = {
			useIsVoiceFocused = function()
				return false
			end,
			useIsVoiceConnecting = function()
				return false
			end,
		},
	}
end)

local JoinVoiceBinder = require(script.Parent.JoinVoiceBinder)

local function event()
	local bindable = Instance.new("BindableEvent")
	table.insert(events, bindable)
	return bindable
end

local function renderBinder()
	local result
	ReactRoblox.act(function()
		result = rtl.render(React.createElement(JoinVoiceBinder))
	end)
	waitForEvents()
	return result
end

describe("JoinVoiceBinder", function()
	beforeEach(function()
		events = {}
		joinVoice = {
			availability = ChromeUtils.AvailabilitySignal.new(ChromeUtils.AvailabilitySignalState.Unavailable),
		}
		local getRestriction
		getRestriction, setRestriction = Signals.createSignal("normal")
		table.clear(manager)
		manager.GetVoiceRestrictionState = function(_, scope)
			return getRestriction(scope)
		end
		manager.ShouldShowJoinVoice = jest.fn(function()
			return true
		end)
		manager.VoiceJoinProgress = VoiceConstants.VOICE_JOIN_PROGRESS.Idle
		manager.VoiceJoinProgressChanged = event()
		manager.showVoiceUI = event()
		manager.hideVoiceUI = event()
		manager.reportJoinVoiceUpsellEvent = function() end
	end)

	afterEach(function()
		rtl.cleanup()
		for _, bindable in events do
			bindable:Destroy()
		end
	end)

	if not ChromeEnabled() then
		it("does not check eligibility or bind availability while Chrome is disabled", function()
			renderBinder()
			setRestriction("restricted")
			manager.VoiceJoinProgressChanged:Fire(VoiceConstants.VOICE_JOIN_PROGRESS.Suspended)
			waitForEvents()
			expect(manager.ShouldShowJoinVoice).never.toHaveBeenCalled()
			expect(joinVoice.availability:get()).toBe(ChromeUtils.AvailabilitySignalState.Unavailable)
		end)
	elseif FFlagProactiveVoiceRestrictionsUFR then
		it("suppresses Join Voice until rejoin and disconnects its restriction subscription on unmount", function()
			local result = renderBinder()
			expect(joinVoice.availability:get()).toBe(ChromeUtils.AvailabilitySignalState.Available)
			setRestriction("restricted")
			manager.VoiceJoinProgressChanged:Fire(VoiceConstants.VOICE_JOIN_PROGRESS.Suspended)
			manager.hideVoiceUI:Fire()
			waitForEvents()
			expect(joinVoice.availability:get()).toBe(ChromeUtils.AvailabilitySignalState.Unavailable)
			setRestriction("hiddenUntilRejoin")
			expect(joinVoice.availability:get()).toBe(ChromeUtils.AvailabilitySignalState.Unavailable)
			ReactRoblox.act(function()
				result.unmount()
			end)
			joinVoice.availability:available()
			setRestriction("restricted")
			expect(joinVoice.availability:get()).toBe(ChromeUtils.AvailabilitySignalState.Available)
		end)
	else
		it("retains legacy availability when restriction state changes", function()
			renderBinder()
			setRestriction("restricted")
			manager.VoiceJoinProgressChanged:Fire(VoiceConstants.VOICE_JOIN_PROGRESS.Suspended)
			manager.hideVoiceUI:Fire()
			waitForEvents()
			expect(joinVoice.availability:get()).toBe(ChromeUtils.AvailabilitySignalState.Available)
		end)
	end
end)
