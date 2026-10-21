local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local ConnectivityPanel = require(script.Parent.MainViewConnectivityPanel)
local Constants = require(script.Parent.Parent.Parent.Constants)
local VoiceDebugConsoleV2TestOverride = require(script.Parent.VoiceDebugConsoleV2TestOverride)

local function allTexts(instance): { string }
	local texts = {}
	for _, descendant in instance:GetDescendants() do
		if descendant:IsA("TextLabel") then
			table.insert(texts, descendant.Text)
		end
	end
	return texts
end

local function anyTextContains(texts: { string }, substring: string): boolean
	for _, text in texts do
		if string.find(text, substring, 1, true) then
			return true
		end
	end
	return false
end

it("should create and destroy without errors", function()
	local element = Roact.createElement(ConnectivityPanel, {
		connectivity = {},
	})
	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)

it("shows a placeholder row for a candidate list with no candidates", function()
	local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", false)
	local oldV2Override = VoiceDebugConsoleV2TestOverride.setForTesting(false)
	local container = Instance.new("Frame")
	local instance = Roact.mount(Roact.createElement(ConnectivityPanel, { connectivity = {} }), container)

	local texts = allTexts(container)
	Roact.unmount(instance)
	game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)
	VoiceDebugConsoleV2TestOverride.setForTesting(oldV2Override)

	local placeholderCount = 0
	for _, text in texts do
		if text == "—" then
			placeholderCount += 1
		end
	end
	expect(placeholderCount).toBe(2)
end)

it("renders one row per ICE candidate with its candidate/sdpMid/sdpMLineIndex fields", function()
	local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", false)
	local oldV2Override = VoiceDebugConsoleV2TestOverride.setForTesting(false)
	local container = Instance.new("Frame")
	local instance = Roact.mount(
		Roact.createElement(ConnectivityPanel, {
			connectivity = {
				icePublishCandidates = {
					{ candidate = "candidate:1 udp", sdpMid = "audio0", sdpMLineIndex = 0 },
					{ candidate = "candidate:2 udp", sdpMid = "audio0", sdpMLineIndex = 1 },
				},
			},
		}),
		container
	)

	local texts = allTexts(container)
	Roact.unmount(instance)
	game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)
	VoiceDebugConsoleV2TestOverride.setForTesting(oldV2Override)

	expect(table.find(texts, "candidate:1 udp")).never.toBeNil()
	expect(table.find(texts, "candidate:2 udp")).never.toBeNil()
	expect(table.find(texts, "audio0")).never.toBeNil()
	expect(table.find(texts, "1")).never.toBeNil()
end)

it("SdpSection hides the SDP text until expanded (collapsed by default)", function()
	local container = Instance.new("Frame")
	local instance = Roact.mount(
		Roact.createElement(ConnectivityPanel, {
			connectivity = { sdpPublishOffer = "v=0 this-is-the-offer" },
		}),
		container
	)

	local texts = allTexts(container)
	Roact.unmount(instance)

	expect(table.find(texts, "v=0 this-is-the-offer")).toBeNil()
	expect(table.find(texts, "Publish offer")).never.toBeNil()
end)

it("SdpSection only shows the expand arrow when there is an SDP value to expand", function()
	local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", false)
	local oldV2Override = VoiceDebugConsoleV2TestOverride.setForTesting(false)
	local container = Instance.new("Frame")
	local instance = Roact.mount(
		Roact.createElement(ConnectivityPanel, {
			connectivity = { sdpPublishOffer = "v=0 has-a-value" },
		}),
		container
	)

	local arrowCount = 0
	for _, descendant in container:GetDescendants() do
		if descendant:IsA("ImageLabel") then
			arrowCount += 1
		end
	end
	Roact.unmount(instance)
	game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)
	VoiceDebugConsoleV2TestOverride.setForTesting(oldV2Override)

	expect(arrowCount).toBe(1)
end)

it("shows an em dash for a missing SDP field instead of blank or nil", function()
	local container = Instance.new("Frame")
	local instance = Roact.mount(Roact.createElement(ConnectivityPanel, { connectivity = {} }), container)

	local texts = allTexts(container)
	Roact.unmount(instance)

	local foundMissingSdpLabel = false
	for _, text in texts do
		if string.find(text, "—", 1, true) and string.find(text, ":", 1, true) then
			foundMissingSdpLabel = true
		end
	end
	expect(foundMissingSdpLabel).toBe(true)
end)

describe("Transport state (FFlagVoiceDebugConsoleV2)", function()
	it("does not render when the flag is off", function()
		local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", false)
		local oldV2Override = VoiceDebugConsoleV2TestOverride.setForTesting(false)
		local container = Instance.new("Frame")
		local instance = Roact.mount(Roact.createElement(ConnectivityPanel, { connectivity = {} }), container)

		local texts = allTexts(container)
		Roact.unmount(instance)
		game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)
		VoiceDebugConsoleV2TestOverride.setForTesting(oldV2Override)

		expect(table.find(texts, "Transport state")).toBeNil()
	end)

	it("renders an em dash per leg when no state has been observed yet", function()
		local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", true)
		local oldV2Override = VoiceDebugConsoleV2TestOverride.setForTesting(true)
		local container = Instance.new("Frame")
		local instance = Roact.mount(Roact.createElement(ConnectivityPanel, { connectivity = {} }), container)

		local texts = allTexts(container)
		Roact.unmount(instance)
		game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)
		VoiceDebugConsoleV2TestOverride.setForTesting(oldV2Override)

		expect(anyTextContains(texts, "Transport state")).toBe(true)
		expect(table.find(texts, "ICE gathering")).never.toBeNil()
		expect(table.find(texts, "ICE connection")).never.toBeNil()
		expect(table.find(texts, "Signaling")).never.toBeNil()

		local dashCount = 0
		for _, text in texts do
			if text == "—" then
				dashCount += 1
			end
		end
		expect(dashCount).toBe(14)
	end)

	it("renders real per-leg state strings when observed", function()
		local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", true)
		local oldV2Override = VoiceDebugConsoleV2TestOverride.setForTesting(true)
		local container = Instance.new("Frame")
		local instance = Roact.mount(
			Roact.createElement(ConnectivityPanel, {
				connectivity = {
					iceGatheringStatePublish = "complete",
					iceConnectionStatePublish = "connected",
					iceConnectionStateSubscribe = "checking",
					signalingStatePublish = "stable",
					rebootCount = 2,
					timeToConnectedMs = 1500.437,
					selectedCandidatePairLocalTypePublish = "host",
					selectedCandidatePairRemoteTypePublish = "relay",
					selectedCandidatePairLocalProtocolPublish = "udp",
					selectedCandidatePairRemoteProtocolPublish = "udp",
				},
			}),
			container
		)

		local texts = allTexts(container)
		Roact.unmount(instance)
		game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)
		VoiceDebugConsoleV2TestOverride.setForTesting(oldV2Override)

		expect(table.find(texts, "complete")).never.toBeNil()
		expect(table.find(texts, "connected")).never.toBeNil()
		expect(table.find(texts, "checking")).never.toBeNil()
		expect(table.find(texts, "stable")).never.toBeNil()
		expect(table.find(texts, "2")).never.toBeNil()
		expect(table.find(texts, "Time to connected")).never.toBeNil()
		expect(table.find(texts, "1500 ms")).never.toBeNil()
		expect(table.find(texts, "Selected candidate pair")).never.toBeNil()
		expect(table.find(texts, "host ↔ relay (udp)")).never.toBeNil()
		expect(table.find(texts, "—")).never.toBeNil()
	end)

	it(
		'colors both ICE gathering\'s "complete" and ICE connection\'s "completed" as healthy (green), not grey',
		function()
			local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", true)
			local oldV2Override = VoiceDebugConsoleV2TestOverride.setForTesting(true)
			local container = Instance.new("Frame")
			local instance = Roact.mount(
				Roact.createElement(ConnectivityPanel, {
					connectivity = {
						iceGatheringStatePublish = "complete",
						iceConnectionStatePublish = "completed",
					},
				}),
				container
			)

			local totalDots, greenDots = 0, 0
			for _, descendant in container:GetDescendants() do
				if descendant.Name == "Dot" and descendant:IsA("Frame") then
					totalDots += 1
					if descendant.BackgroundColor3 == Constants.Color.HoverGreen then
						greenDots += 1
					end
				end
			end
			Roact.unmount(instance)
			game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)
			VoiceDebugConsoleV2TestOverride.setForTesting(oldV2Override)

			expect(totalDots).toBe(6)
			expect(greenDots).toBe(2)
		end
	)
end)

describe("Visual redesign (FFlagVoiceDebugConsoleV2)", function()
	local SAMPLE_CANDIDATE = {
		candidate = "candidate:1 1 udp 2130706431 203.0.113.7 54321 typ host generation 0",
		sdpMid = "audio0",
		sdpMLineIndex = 0,
	}

	it("keeps the raw 3-column candidate layout when the flag is off", function()
		local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", false)
		local oldV2Override = VoiceDebugConsoleV2TestOverride.setForTesting(false)
		local container = Instance.new("Frame")
		local instance = Roact.mount(
			Roact.createElement(ConnectivityPanel, {
				connectivity = { icePublishCandidates = { SAMPLE_CANDIDATE } },
			}),
			container
		)

		local texts = allTexts(container)
		Roact.unmount(instance)
		game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)
		VoiceDebugConsoleV2TestOverride.setForTesting(oldV2Override)

		expect(table.find(texts, SAMPLE_CANDIDATE.candidate)).never.toBeNil()
	end)

	it(
		"renders parsed Type/Proto/Priority/Comp columns, never the raw candidate string or address, when the flag is on",
		function()
			local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", true)
			local oldV2Override = VoiceDebugConsoleV2TestOverride.setForTesting(true)
			local container = Instance.new("Frame")
			local instance = Roact.mount(
				Roact.createElement(ConnectivityPanel, {
					connectivity = { icePublishCandidates = { SAMPLE_CANDIDATE } },
				}),
				container
			)

			local texts = allTexts(container)
			Roact.unmount(instance)
			game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)
			VoiceDebugConsoleV2TestOverride.setForTesting(oldV2Override)

			expect(table.find(texts, "host")).never.toBeNil()
			expect(table.find(texts, "udp")).never.toBeNil()
			expect(table.find(texts, "2130706431")).never.toBeNil()

			expect(table.find(texts, SAMPLE_CANDIDATE.candidate)).toBeNil()
			expect(anyTextContains(texts, "203.0.113.7")).toBe(false)
		end
	)

	it("shows a live candidate count in the group header subtitle when the flag is on", function()
		local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", true)
		local oldV2Override = VoiceDebugConsoleV2TestOverride.setForTesting(true)
		local container = Instance.new("Frame")
		local instance = Roact.mount(
			Roact.createElement(ConnectivityPanel, {
				connectivity = { icePublishCandidates = { SAMPLE_CANDIDATE, SAMPLE_CANDIDATE } },
			}),
			container
		)

		local texts = allTexts(container)
		Roact.unmount(instance)
		game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)
		VoiceDebugConsoleV2TestOverride.setForTesting(oldV2Override)

		expect(anyTextContains(texts, "Publish ICE candidates")).toBe(true)
		expect(anyTextContains(texts, "2 local")).toBe(true)
	end)

	it("mounts without error with a real SDP present when the flag is on", function()
		local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", true)
		local oldV2Override = VoiceDebugConsoleV2TestOverride.setForTesting(true)
		local container = Instance.new("Frame")
		local instance = Roact.mount(
			Roact.createElement(ConnectivityPanel, {
				connectivity = { sdpPublishOffer = "v=0\r\no=- 1 1 IN IP4 203.0.113.7\r\ns=-\r\n" },
			}),
			container
		)

		local texts = allTexts(container)
		Roact.unmount(instance)
		game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)
		VoiceDebugConsoleV2TestOverride.setForTesting(oldV2Override)

		expect(anyTextContains(texts, "Session descriptions")).toBe(true)
		expect(anyTextContains(texts, "addresses redacted")).toBe(true)
	end)

	it("keeps the plain static CONNECTIVITY label, with no collapse arrow, when the flag is off", function()
		local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", false)
		local oldV2Override = VoiceDebugConsoleV2TestOverride.setForTesting(false)
		local container = Instance.new("Frame")
		local instance = Roact.mount(Roact.createElement(ConnectivityPanel, { connectivity = {} }), container)

		local texts = allTexts(container)
		local arrowCount = 0
		for _, descendant in container:GetDescendants() do
			if descendant:IsA("ImageLabel") then
				arrowCount += 1
			end
		end
		Roact.unmount(instance)
		game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)
		VoiceDebugConsoleV2TestOverride.setForTesting(oldV2Override)

		expect(table.find(texts, "CONNECTIVITY")).never.toBeNil()
		expect(arrowCount).toBe(0)
	end)

	it("wraps the panel in a collapsible 'Connectivity' section, expanded by default, when the flag is on", function()
		local oldFlagValue = game:SetFastFlagForTesting("VoiceDebugConsoleV2", true)
		local oldV2Override = VoiceDebugConsoleV2TestOverride.setForTesting(true)
		local container = Instance.new("Frame")
		local instance = Roact.mount(
			Roact.createElement(ConnectivityPanel, {
				connectivity = { icePublishCandidates = { SAMPLE_CANDIDATE } },
			}),
			container
		)

		local texts = allTexts(container)
		Roact.unmount(instance)
		game:SetFastFlagForTesting("VoiceDebugConsoleV2", oldFlagValue)
		VoiceDebugConsoleV2TestOverride.setForTesting(oldV2Override)

		expect(table.find(texts, "Connectivity")).never.toBeNil()
		expect(anyTextContains(texts, "Publish ICE candidates")).toBe(true)
		expect(table.find(texts, "host")).never.toBeNil()
	end)
end)
