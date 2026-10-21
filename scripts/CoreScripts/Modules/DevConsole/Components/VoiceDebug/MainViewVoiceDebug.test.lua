local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local Roact = require(CorePackages.Packages.Roact)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Store = require(CorePackages.Packages.Rodux).Store
local DataContext = require(script.Parent.Parent.DataContext)
local MainViewVoiceDebug = require(script.Parent.MainViewVoiceDebug)
local VoiceDebugData = require(script.Parent.VoiceDebugData)
local VoiceDebugConsoleV2TestOverride = require(script.Parent.VoiceDebugConsoleV2TestOverride)

local function mountVoiceDebugWithDirectData(container, voiceDebugData: typeof(VoiceDebugData.new())?)
	local store = Store.new(function()
		return {
			MainView = {
				currTabIndex = 0,
				isDeveloperView = true,
			},
		}
	end)

	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		DataContext = Roact.createElement(DataContext.Provider, {
			value = { VoiceDebugData = voiceDebugData or VoiceDebugData.new() },
		}, {
			MainViewVoiceDebug = Roact.createElement(MainViewVoiceDebug, {
				size = UDim2.new(),
				tabList = {},
			}),
		}),
	})

	return Roact.mount(element, container)
end

local function allTexts(instance): { string }
	local texts = {}
	for _, descendant in instance:GetDescendants() do
		if descendant:IsA("TextLabel") or descendant:IsA("TextButton") then
			table.insert(texts, descendant.Text)
		end
	end
	return texts
end

it("should create and destroy without errors", function()
	if game:GetEngineFeature("VoiceChatDevConsoleTabEnabled") then
		-- Mounted via DataContext.Provider directly, not through the real DataProvider: DataProvider
		-- only supplies a VoiceDebugData context value when FFlagVoiceDebugConsoleV2 is also on,
		-- which this test doesn't control, so going through it here would crash whenever the two
		-- default-off flags aren't forced on together (e.g. this file's own branch, before
		-- DataProvider's flag-gated wiring lands).
		local instance = mountVoiceDebugWithDirectData()
		Roact.unmount(instance)
	end
end)

describe("FFlagVoiceDebugConsoleV2", function()
	it("keeps the plain flat row list -- no health strip or group headers -- when off", function()
		if not game:GetEngineFeature("VoiceChatDevConsoleTabEnabled") then
			return
		end
		local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", false)
		local oldV2Override = VoiceDebugConsoleV2TestOverride.setForTesting(false)
		local container = Instance.new("Frame")
		local instance = mountVoiceDebugWithDirectData(container)

		local texts = allTexts(container)
		Roact.unmount(instance)
		game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)
		VoiceDebugConsoleV2TestOverride.setForTesting(oldV2Override)

		expect(table.find(texts, "Connection")).toBe(nil)
		expect(table.find(texts, "Round-trip")).toBe(nil)
		expect(table.find(texts, "Round-trip time: —")).never.toBe(nil)
		expect(table.find(texts, "Metrics")).toBe(nil)

		expect(table.find(texts, "Concealment events: —")).toBe(nil)
		expect(table.find(texts, "Publisher audio level: —")).toBe(nil)
		expect(table.find(texts, "Subscriber audio level: —")).toBe(nil)
	end)

	it("renders the health strip, grouped sections, and sparkline rows when on", function()
		if not game:GetEngineFeature("VoiceChatDevConsoleTabEnabled") then
			return
		end
		local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", true)
		local container = Instance.new("Frame")
		local instance = mountVoiceDebugWithDirectData(container)

		local texts = allTexts(container)
		Roact.unmount(instance)
		game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)

		expect(table.find(texts, "Round-trip")).never.toBe(nil)
		expect(table.find(texts, "Loss in")).never.toBe(nil)
		expect(table.find(texts, "Jitter in")).never.toBe(nil)
		expect(table.find(texts, "Streams")).never.toBe(nil)

		expect(table.find(texts, "Connection")).never.toBe(nil)
		expect(table.find(texts, "Incoming")).never.toBe(nil)
		expect(table.find(texts, "Outgoing")).never.toBe(nil)

		expect(table.find(texts, "Round-trip time")).never.toBe(nil)
		expect(table.find(texts, "Round-trip time: —")).toBe(nil)

		expect(table.find(texts, "Metrics")).never.toBe(nil)

		expect(table.find(texts, "ms · peak —ms")).never.toBe(nil)

		expect(table.find(texts, "Concealment events")).never.toBe(nil)
		expect(table.find(texts, "Publisher audio level")).never.toBe(nil)
		expect(table.find(texts, "Subscriber audio level")).never.toBe(nil)
	end)
end)

it("rounds bitrate and jitter to two decimal places instead of raw floating-point noise", function()
	if not game:GetEngineFeature("VoiceChatDevConsoleTabEnabled") then
		return
	end
	local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", false)
	local oldV2Override = VoiceDebugConsoleV2TestOverride.setForTesting(false)

	local voiceDebugData = VoiceDebugData.new()
	local statsData = voiceDebugData:getCurrentData()
	statsData.rttMs = 55.678912
	statsData.incomingJitterMs = 3.456789
	statsData.outgoingBitrateKbps = 125.666666
	statsData.jitterBufferDelayMs = 42.987654

	local container = Instance.new("Frame")
	local instance = mountVoiceDebugWithDirectData(container, voiceDebugData)

	ReactRoblox.act(function()
		(voiceDebugData:Signal() :: any):Fire(statsData)
	end)

	local texts = allTexts(container)
	Roact.unmount(instance)
	game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)
	VoiceDebugConsoleV2TestOverride.setForTesting(oldV2Override)

	expect(table.find(texts, "Round-trip time: 55.68 ms")).never.toBe(nil)
	expect(table.find(texts, "Incoming jitter: 3.46 ms")).never.toBe(nil)
	expect(table.find(texts, "Outgoing bitrate: 125.67 kbps")).never.toBe(nil)
	expect(table.find(texts, "Jitter buffer delay: 42.99 ms")).never.toBe(nil)
end)

it("does not leak V2-only fields through the display-order fallback when the flag is off", function()
	if not game:GetEngineFeature("VoiceChatDevConsoleTabEnabled") then
		return
	end
	local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", false)
	local oldV2Override = VoiceDebugConsoleV2TestOverride.setForTesting(false)

	local voiceDebugData = VoiceDebugData.new()
	local statsData = voiceDebugData:getCurrentData()
	-- V2-only field, present in stats (native always populates it) but must not render with the
	-- flag off -- the fallback loop that renders any key not already placed by displayOrder used
	-- to ignore the flag entirely.
	statsData.totalConcealmentEvents = 3

	local container = Instance.new("Frame")
	local instance = mountVoiceDebugWithDirectData(container, voiceDebugData)

	ReactRoblox.act(function()
		(voiceDebugData:Signal() :: any):Fire(statsData)
	end)

	local texts = allTexts(container)
	Roact.unmount(instance)
	game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)
	VoiceDebugConsoleV2TestOverride.setForTesting(oldV2Override)

	for _, text in texts do
		expect((string.find(text, "Concealment events"))).toBe(nil)
	end
end)

it("rounds incoming loss percent to two decimal places instead of raw floating-point noise", function()
	if not game:GetEngineFeature("VoiceChatDevConsoleTabEnabled") then
		return
	end
	local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", true)

	local voiceDebugData = VoiceDebugData.new()
	local statsData = voiceDebugData:getCurrentData()
	statsData.incomingLossPercent = 37.692307692

	local container = Instance.new("Frame")
	local instance = mountVoiceDebugWithDirectData(container, voiceDebugData)

	ReactRoblox.act(function()
		(voiceDebugData:Signal() :: any):Fire(statsData)
	end)

	local texts = allTexts(container)
	Roact.unmount(instance)
	game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)

	expect(table.find(texts, "37.69")).never.toBe(nil)
	expect(table.find(texts, "37.692307692")).toBe(nil)
end)

it("rounds the Round-trip health card's value to two decimal places", function()
	if not game:GetEngineFeature("VoiceChatDevConsoleTabEnabled") then
		return
	end
	local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", true)

	local voiceDebugData = VoiceDebugData.new()
	local statsData = voiceDebugData:getCurrentData()
	statsData.rttMs = 55.678912

	local container = Instance.new("Frame")
	local instance = mountVoiceDebugWithDirectData(container, voiceDebugData)

	ReactRoblox.act(function()
		(voiceDebugData:Signal() :: any):Fire(statsData)
	end)

	local texts = allTexts(container)
	Roact.unmount(instance)
	game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)

	expect(table.find(texts, "55.68")).never.toBe(nil)
	expect(table.find(texts, "56")).toBe(nil)
end)

describe("Freeze util bar button (FFlagVoiceDebugConsoleV2)", function()
	it("does not render when the flag is off", function()
		if not game:GetEngineFeature("VoiceChatDevConsoleTabEnabled") then
			return
		end
		local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", false)
		local container = Instance.new("Frame")
		local instance = mountVoiceDebugWithDirectData(container)

		local texts = allTexts(container)
		Roact.unmount(instance)
		game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)

		expect(table.find(texts, "Freeze")).toBe(nil)
	end)

	it("renders when the flag is on", function()
		if not game:GetEngineFeature("VoiceChatDevConsoleTabEnabled") then
			return
		end
		local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", true)
		local container = Instance.new("Frame")
		local instance = mountVoiceDebugWithDirectData(container)

		local texts = allTexts(container)
		Roact.unmount(instance)
		game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)

		expect(table.find(texts, "Freeze")).never.toBe(nil)
	end)
end)
