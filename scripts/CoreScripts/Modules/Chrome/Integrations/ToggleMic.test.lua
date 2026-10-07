local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui").RobloxGui

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local Foundation = require(CorePackages.Packages.Foundation)
local FoundationImages = require(CorePackages.Packages.FoundationImages)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local Promise = require(CorePackages.Packages.Promise)
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local rtl = require(CorePackages.Packages.Dev.ReactTestingLibrary)
local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

local FFlagProactiveVoiceRestrictionsUFR = require(RobloxGui.Modules.VoiceChat.Flags.FFlagProactiveVoiceRestrictionsUFR)
local FFlagMicConsumerRegistry = game:DefineFastFlag("MicConsumerRegistry", false)

type FakeMicManager = {
	localMuted: boolean,
	muteChanged: BindableEvent,
	levelChanged: BindableEvent,
	hasConsumersChanged: BindableEvent,
	HasConsumer: () -> boolean,
	GetConsumerCount: () -> number,
	SetMicActiveForAllConsumers: any,
	SetMicIndicatorReady: any,
}

local manager
local micManager: FakeMicManager?
local setRestriction
local stateChanged
local initRejected
local events
local muteAnalytics = jest.fn()
local voiceChatSupported

jest.mock(CorePackages.Packages.Foundation, function()
	return Foundation
end)
jest.mock(CorePackages.Packages.React, function()
	return React
end)
jest.mock(CorePackages.Packages.Signals, function()
	return Signals
end)
jest.mock(CorePackages.Packages.SignalsReact, function()
	return SignalsReact
end)
jest.mock(CorePackages.Packages.UIBlox, function()
	return UIBlox
end)
jest.mock(CorePackages.Workspace.Packages.Chrome, function()
	return ChromePackage
end)
jest.mock(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager, function()
	return { default = manager }
end)
jest.mock(RobloxGui.Modules.Settings.Analytics.VoiceAnalytics, function()
	return {
		new = function()
			return { onToggleMuteSelf = muteAnalytics }
		end,
	}
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

local function loadMic()
	local integration
	jest.isolateModules(function()
		integration = require(script.Parent.ToggleMic)
	end)
	waitForEvents()
	return integration
end

local function activate(mic: ChromePackage.IntegrationProps)
	local activated = mic.activated
	assert(activated, "ToggleMic should register an activated handler")
	activated(mic)
end

local function renderIcon(mic: ChromePackage.IntegrationProps)
	local Icon = mic.components and mic.components.Icon
	assert(Icon, "ToggleMic should register an Icon component")
	local result
	ReactRoblox.act(function()
		result = rtl.render(React.createElement(Foundation.FoundationProvider, {
			colorMode = Foundation.Enums.ColorMode.Dark,
		}, {
			UnibarStyle = React.createElement(ChromePackage.UnibarStyle.Context.Provider, {
				value = { ICON_SIZE = 36 },
			}, { Icon = React.createElement(Icon) }),
		}))
	end)
	return result
end

local function useNonVoiceMicConsumer(): FakeMicManager
	local fake: FakeMicManager = {
		localMuted = false,
		muteChanged = event(),
		levelChanged = event(),
		hasConsumersChanged = event(),
		HasConsumer = function()
			return false
		end,
		GetConsumerCount = function()
			return 1
		end,
		SetMicActiveForAllConsumers = jest.fn(),
		SetMicIndicatorReady = jest.fn(),
	}
	micManager = fake
	return fake
end

describe("ToggleMic", function()
	beforeEach(function()
		events = {}
		initRejected = false
		voiceChatSupported = true
		muteAnalytics:mockClear()
		micManager = nil
		local getRestriction
		getRestriction, setRestriction = Signals.createSignal("normal")
		stateChanged = event()
		manager = {
			localMuted = false,
			voiceUIVisible = true,
			muteChanged = event(),
			showVoiceUI = event(),
			hideVoiceUI = event(),
			GetVoiceRestrictionState = function(_, scope)
				return getRestriction(scope)
			end,
			asyncInit = jest.fn(function()
				return if initRejected then Promise.reject("banned") else Promise.resolve()
			end),
			getService = function()
				return { StateChanged = stateChanged.Event }
			end,
			SetupParticipantListeners = function() end,
			ShowVoiceRestriction = jest.fn(),
			ToggleMic = jest.fn(),
			RejoinPreviousChannel = jest.fn(),
			ShowVoiceChatLoadingMessage = jest.fn(),
			GetMicManager = function()
				return micManager
			end,
			GetIcon = function(_, name)
				return `rbxasset://mic/{name}`
			end,
		}
	end)

	afterEach(function()
		rtl.cleanup()
		for _, bindable in events do
			bindable:Destroy()
		end
	end)

	it("does not initialize voice or expose the mic on an unsupported engine", function()
		voiceChatSupported = false
		local mic = loadMic()
		expect(manager.asyncInit).never.toHaveBeenCalled()
		setRestriction("restricted")
		waitForEvents()
		expect(mic.availability:get()).toBe(ChromeUtils.AvailabilitySignalState.Unavailable)
	end)

	it("updates the activation indicator when mute changes without a restriction change", function()
		local mic = loadMic()
		local isActivated = mic.isActivated
		assert(typeof(isActivated) == "table", "ToggleMic should register an isActivated signal")
		local onActivationChanged = jest.fn()
		local connection = isActivated:connect(onActivationChanged)
		expect(isActivated:get()).toBe(true)

		for _, muted in { true, false } do
			manager.localMuted = muted
			manager.muteChanged:Fire(muted)
			waitForEvents()
			expect(isActivated:get()).toBe(not muted)
			expect(onActivationChanged).toHaveBeenLastCalledWith(not muted)
		end

		connection:disconnect()
	end)

	if FFlagProactiveVoiceRestrictionsUFR then
		it("deactivates on restriction changes and stays inactive through mute changes and expiry", function()
			local mic = loadMic()
			local isActivated = mic.isActivated
			assert(typeof(isActivated) == "table", "ToggleMic should register an isActivated signal")
			local onActivationChanged = jest.fn()
			local connection = isActivated:connect(onActivationChanged)

			setRestriction("restricted")
			waitForEvents()
			expect(isActivated:get()).toBe(false)
			expect(onActivationChanged).toHaveBeenCalledWith(false)

			for _, state in { "restricted", "hiddenUntilRejoin" } do
				setRestriction(state)
				for _, muted in { true, false } do
					manager.localMuted = muted
					manager.muteChanged:Fire(muted)
					waitForEvents()
					expect(isActivated:get()).toBe(false)
				end
			end
			expect(onActivationChanged).toHaveBeenCalledTimes(1)

			connection:disconnect()
		end)

		it("hides a restricted mic even when banned startup rejects initialization", function()
			initRejected = true
			setRestriction("restricted")
			local mic = loadMic()
			expect(mic.availability:get()).toBe(ChromeUtils.AvailabilitySignalState.Unavailable)
			local isActivated = mic.isActivated
			assert(typeof(isActivated) == "table", "ToggleMic should register an isActivated signal")
			expect(isActivated:get()).toBe(false)
		end)

		it("routes restricted activation to restriction details without muting or mute analytics", function()
			local mic = loadMic()
			setRestriction("restricted")
			activate(mic)
			expect(manager.ShowVoiceRestriction).toHaveBeenCalledTimes(1)
			expect(manager.ToggleMic).never.toHaveBeenCalled()
			expect(muteAnalytics).never.toHaveBeenCalled()
		end)

		it("keeps restriction activation ahead of ended, failed, and loading voice states", function()
			local mic = loadMic()
			setRestriction("restricted")
			for _, state in { Enum.VoiceChatState.Ended, Enum.VoiceChatState.Failed, Enum.VoiceChatState.Joining } do
				stateChanged:Fire(nil, state)
				waitForEvents()
				expect(mic.availability:get()).toBe(ChromeUtils.AvailabilitySignalState.Unavailable)
				activate(mic)
			end
			expect(manager.ShowVoiceRestriction).toHaveBeenCalledTimes(3)
			expect(manager.RejoinPreviousChannel).never.toHaveBeenCalled()
			expect(manager.ShowVoiceChatLoadingMessage).never.toHaveBeenCalled()
			expect(manager.ToggleMic).never.toHaveBeenCalled()
		end)

		it("keeps a cleared restriction hidden without rejoining or unmuting", function()
			setRestriction("restricted")
			local mic = loadMic()
			setRestriction("hiddenUntilRejoin")
			stateChanged:Fire(nil, Enum.VoiceChatState.Failed)
			waitForEvents()
			expect(mic.availability:get()).toBe(ChromeUtils.AvailabilitySignalState.Unavailable)
			activate(mic)
			expect(manager.ShowVoiceRestriction).never.toHaveBeenCalled()
			expect(manager.RejoinPreviousChannel).never.toHaveBeenCalled()
			expect(manager.ToggleMic).never.toHaveBeenCalled()
		end)

		it("renders the dimmed microphone mute control icon for a restriction", function()
			setRestriction("restricted")
			local mic = loadMic()
			local result = renderIcon(mic)
			local expectedIcon = FoundationImages.IconImages_DEPRECATED["icons/controls/microphoneMute"]
			local icon = result.getByText("", { selector = { "ImageLabel" } })
			expect(icon.Image).toBe(expectedIcon.Image)
			expect(icon.ImageRectOffset).toBe(expectedIcon.ImageRectOffset)
			expect(icon.ImageRectSize).toBe(expectedIcon.ImageRectSize)
			expect(icon.ImageTransparency).toBe(0.5)
			expect(result.queryAllByText("", { selector = { "ImageButton", "UIGradient" } })).toHaveLength(0)
			expect(result.queryByText(function(_, node)
				return node.Name == "RedVoiceDot"
			end)).toBeNil()
		end)

		if FFlagMicConsumerRegistry then
			it("keeps restriction availability and activation ahead of a non-voice mic consumer", function()
				local consumer = useNonVoiceMicConsumer()
				setRestriction("restricted")
				local mic = loadMic()
				consumer.hasConsumersChanged:Fire(1)
				waitForEvents()
				expect(mic.availability:get()).toBe(ChromeUtils.AvailabilitySignalState.Unavailable)

				activate(mic)
				expect(manager.ShowVoiceRestriction).toHaveBeenCalledTimes(1)
				expect(consumer.SetMicActiveForAllConsumers).never.toHaveBeenCalled()
			end)

			it("renders the restriction icon instead of the non-voice mic consumer indicator", function()
				useNonVoiceMicConsumer()
				setRestriction("restricted")
				local result = renderIcon(loadMic())
				local expectedIcon = FoundationImages.IconImages_DEPRECATED["icons/controls/microphoneMute"]
				local icon = result.getByText("", { selector = { "ImageLabel" } })
				expect(icon.Image).toBe(expectedIcon.Image)
				expect(icon.ImageTransparency).toBe(0.5)
			end)
		end
	else
		it("retains legacy mute activation", function()
			local mic = loadMic()
			setRestriction("restricted")
			activate(mic)
			expect(manager.ToggleMic).toHaveBeenCalledWith(manager, "ChromeIntegrationsToggleMic")
			expect(manager.ShowVoiceRestriction).never.toHaveBeenCalled()
		end)

		it("retains legacy failed-state reconnect", function()
			local mic = loadMic()
			stateChanged:Fire(nil, Enum.VoiceChatState.Failed)
			waitForEvents()
			activate(mic)
			expect(manager.RejoinPreviousChannel).toHaveBeenCalledTimes(1)
			expect(manager.ShowVoiceRestriction).never.toHaveBeenCalled()
		end)
	end
end)
