local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui").RobloxGui

local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local Signals = require(CorePackages.Packages.Signals)
local UIBlox = require(CorePackages.Packages.UIBlox)
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)
local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

local FFlagProactiveVoiceRestrictionsUFR = require(RobloxGui.Modules.VoiceChat.Flags.FFlagProactiveVoiceRestrictionsUFR)

local events
local focusObservers
local manager
local setRestriction
local voiceChatSupported

jest.mock(CorePackages.Packages.Signals, function()
	return Signals
end)
jest.mock(CorePackages.Packages.UIBlox, function()
	return UIBlox
end)
jest.mock(CorePackages.Workspace.Packages.SharedFlags, function()
	local flags = table.clone(SharedFlags)
	flags.GetFFlagFixSeamlessVoiceIntegrationWithPrivateVoice = function()
		return false
	end
	return flags
end)
jest.mock(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager, function()
	return { default = manager }
end)
jest.mock(Chrome.Service, function()
	return {
		AvailabilitySignal = ChromeUtils.AvailabilitySignalState,
		register = function(_, props)
			local integration = table.clone(props)
			integration.availability = ChromeUtils.AvailabilitySignal.new(props.initialAvailability)
			return integration
		end,
	}
end)
jest.mock(CorePackages.Workspace.Packages.CrossExperience, function()
	return {
		Utils = {
			observeCurrentContextId = function(callback)
				table.insert(focusObservers, callback)
				callback("experience")
			end,
		},
		Constants = { AUDIO_FOCUS_MANAGEMENT = { CEV = { CONTEXT_ID = "party" } } },
	}
end)
jest.mock(script.Parent.isVoiceChatSupported, function()
	return function()
		return voiceChatSupported
	end
end)

local function event()
	local bindable = Instance.new("BindableEvent")
	table.insert(events, bindable)
	return bindable
end

local function loadJoinVoice()
	local integration
	jest.isolateModules(function()
		integration = require(script.Parent.JoinVoice)
	end)
	waitForEvents()
	return integration
end

local function setPartyFocused(value)
	for _, callback in focusObservers do
		callback(if value then "party" else "experience")
	end
end

describe("JoinVoice", function()
	beforeEach(function()
		events = {}
		focusObservers = {}
		voiceChatSupported = true
		local getRestriction
		getRestriction, setRestriction = Signals.createSignal("normal")
		manager = {
			GetVoiceRestrictionState = function(_, scope)
				return getRestriction(scope)
			end,
			ShouldShowJoinVoice = jest.fn(function()
				return true
			end),
			JoinVoice = jest.fn(),
			VoiceJoinProgressChanged = event(),
			showVoiceUI = event(),
			hideVoiceUI = event(),
		}
	end)

	afterEach(function()
		for _, bindable in events do
			bindable:Destroy()
		end
	end)

	it("does not check eligibility or expose Join Voice on an unsupported engine", function()
		voiceChatSupported = false
		local joinVoice = loadJoinVoice()
		expect(manager.ShouldShowJoinVoice).never.toHaveBeenCalled()
		setRestriction("restricted")
		manager.VoiceJoinProgressChanged:Fire(VoiceConstants.VOICE_JOIN_PROGRESS.Suspended)
		waitForEvents()
		expect(joinVoice.availability:get()).toBe(ChromeUtils.AvailabilitySignalState.Unavailable)
	end)

	if FFlagProactiveVoiceRestrictionsUFR then
		it("suppresses activation while restricted and after the restriction clears until rejoin", function()
			local joinVoice = loadJoinVoice()
			local activated = assert(joinVoice.activated, "Join Voice integration must define activated")
			for _, state in { "restricted", "hiddenUntilRejoin" } do
				setRestriction(state)
				activated(joinVoice)
			end
			expect(manager.JoinVoice).never.toHaveBeenCalled()
		end)

		it("suppresses Join Voice after moderation and subsequent progress or focus events", function()
			local joinVoice = loadJoinVoice()
			expect(joinVoice.availability:get()).toBe(ChromeUtils.AvailabilitySignalState.Available)
			setRestriction("restricted")
			manager.VoiceJoinProgressChanged:Fire(VoiceConstants.VOICE_JOIN_PROGRESS.Suspended)
			manager.hideVoiceUI:Fire()
			waitForEvents()
			setPartyFocused(true)
			setPartyFocused(false)
			expect(joinVoice.availability:get()).toBe(ChromeUtils.AvailabilitySignalState.Unavailable)
		end)
	else
		it("retains legacy availability when restriction state changes", function()
			local joinVoice = loadJoinVoice()
			setRestriction("restricted")
			manager.VoiceJoinProgressChanged:Fire(VoiceConstants.VOICE_JOIN_PROGRESS.Suspended)
			waitForEvents()
			expect(joinVoice.availability:get()).toBe(ChromeUtils.AvailabilitySignalState.Available)
		end)
	end
end)
