local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local Signals = require(CorePackages.Packages.Signals)
local ChatIconVisibleSignals = require(script.Parent.ChatIconVisibleSignals)

local Chrome = script.Parent.Parent.Parent
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagExpChatWindowSyncUnibar = SharedFlags.FFlagExpChatWindowSyncUnibar
local FFlagEnableAEGIS2CommsFAEUpsell = SharedFlags.FFlagEnableAEGIS2CommsFAEUpsell
local FFlagExpChatOnShowIconChatAvailabilityStatus = game:GetFastFlag("ExpChatOnShowIconChatAvailabilityStatus")

local AegisIsEnabled = FFlagEnableAEGIS2CommsFAEUpsell and FFlagExpChatOnShowIconChatAvailabilityStatus

local function makeSignalsAndGetValue(chatStatus: string | nil)
	local mockGetChatStatus, mockSetChatStatus = Signals.createSignal(chatStatus or "NoOne")
	local signals = ChatIconVisibleSignals.new({
		getChatStatus = mockGetChatStatus,
		setChatStatus = mockSetChatStatus,
	})
	local function getValue()
		local value
		Signals.createEffect(function(scope)
			local v = signals.getIsChatIconVisible(scope)
			value = v
		end)
		return value
	end
	return signals, getValue, mockSetChatStatus
end

it("should default unavailable and not visible when chat status is NoOne", function()
	print("should default unavailable and not visible")
	local _, getValue = makeSignalsAndGetValue()
	print("getValue", getValue())
	expect(getValue()).toBe(false)
end)

if AegisIsEnabled then
	it("should default visible when chat status is Unknown", function()
		local _, getValue = makeSignalsAndGetValue("Unknown")
		expect(getValue()).toBe(true)
	end)
end

describe("WHEN privacy settings are on", function()
	it("should return available (visible)", function()
		local signals, getValue = makeSignalsAndGetValue("Enabled")
		signals.setLocalUserChat(true)
		signals.setCoreGuiEnabled(true)
		expect(getValue()).toBe(true)
	end)

	describe("WHEN the developer disables chat", function()
		it("should return unavailable (not visible)", function()
			local signals, getValue = makeSignalsAndGetValue()
			signals.setLocalUserChat(true)
			signals.setCoreGuiEnabled(false)
			expect(getValue()).toBe(false)
		end)

		describe("WHEN the developer attempts to reveal chat", function()
			it("should return unavailable (not visible)", function()
				local signals, getValue = makeSignalsAndGetValue()
				signals.setLocalUserChat(true)
				signals.setCoreGuiEnabled(false)
				if FFlagExpChatWindowSyncUnibar then
					signals.setGameSettingsChatVisible(true)
				else
					signals.setChatActiveCalledByDeveloper(true)
				end
				expect(getValue()).toBe(false)
			end)
		end)

		describe("WHEN chat selector visibility is toggled", function()
			it("should remain unavailable (not visible)", function()
				local signals, getValue = makeSignalsAndGetValue()
				signals.setLocalUserChat(true)
				signals.setCoreGuiEnabled(false)
				if FFlagExpChatWindowSyncUnibar then
					signals.setGameSettingsChatVisible(true)
				else
					signals.setChatActiveCalledByDeveloper(true)
					signals.setVisibleViaChatSelector(true)
				end
				expect(getValue()).toBe(false)
			end)
		end)
	end)

	describe("WHEN the developer enables chat", function()
		it("should return available (visible)", function()
			local signals, getValue = makeSignalsAndGetValue("Enabled")
			signals.setLocalUserChat(true)
			signals.setCoreGuiEnabled(true)
			expect(getValue()).toBe(true)
		end)

		describe("WHEN the developer attempts to hide chat", function()
			it("should return available (visible)", function()
				local signals, getValue = makeSignalsAndGetValue("Enabled")
				signals.setLocalUserChat(true)
				signals.setCoreGuiEnabled(true)
				if FFlagExpChatWindowSyncUnibar then
					signals.setGameSettingsChatVisible(false)
				else
					signals.setChatActiveCalledByDeveloper(false)
				end
				expect(getValue()).toBe(true)
			end)
		end)

		describe("WHEN the developer disables chat", function()
			it("should return unavailable (not visible)", function()
				local signals, getValue = makeSignalsAndGetValue("Enabled")
				signals.setLocalUserChat(true)
				signals.setCoreGuiEnabled(true)
				if FFlagExpChatWindowSyncUnibar then
					signals.setGameSettingsChatVisible(false)
				else
					signals.setChatActiveCalledByDeveloper(false)
				end
				signals.setCoreGuiEnabled(false)
				expect(getValue()).toBe(false)
			end)
		end)
	end)
end)

describe("WHEN privacy settings are off", function()
	it("should return unavailable (not visible)", function()
		local signals, getValue = makeSignalsAndGetValue()
		print("WHEN privacy settings are off")
		signals.setLocalUserChat(false)
		expect(getValue()).toBe(false)
	end)

	describe("WHEN the developer enables chat", function()
		it("should remain unavailable (not visible)", function()
			local signals, getValue = makeSignalsAndGetValue()
			signals.setLocalUserChat(false)
			signals.setCoreGuiEnabled(true)
			expect(getValue()).toBe(false)
		end)

		describe("WHEN the developer attempts to hide chat", function()
			it("should remain unavailable (not visible)", function()
				local signals, getValue = makeSignalsAndGetValue()
				signals.setLocalUserChat(false)
				signals.setCoreGuiEnabled(true)
				if FFlagExpChatWindowSyncUnibar then
					signals.setGameSettingsChatVisible(false)
				else
					signals.setChatActiveCalledByDeveloper(false)
				end
				expect(getValue()).toBe(false)
			end)
		end)

		describe("WHEN the developer attempts to reveal chat", function()
			it("should transition to available and visible", function()
				print("\n\n=====Start should transition to available (visible)")
				local signals, getValue = makeSignalsAndGetValue()
				signals.setLocalUserChat(false)
				signals.setCoreGuiEnabled(true)
				if FFlagExpChatWindowSyncUnibar then
					signals.setGameSettingsChatVisible(true)
				else
					signals.setChatActiveCalledByDeveloper(true)
				end
				print("\n\n=====End should transition to available (visible)", getValue())
				expect(getValue()).toBe(true)
			end)
		end)

		describe("WHEN the developer disables chat", function()
			it("should remain unavailable (not visible)", function()
				local signals, getValue = makeSignalsAndGetValue()
				signals.setLocalUserChat(false)
				signals.setCoreGuiEnabled(true)
				if FFlagExpChatWindowSyncUnibar then
					signals.setGameSettingsChatVisible(false)
				else
					signals.setChatActiveCalledByDeveloper(false)
				end
				signals.setCoreGuiEnabled(false)
				expect(getValue()).toBe(false)
			end)
		end)
	end)

	describe("WHEN chat selector visibility is toggled", function()
		it("should remain unavailable (not visible)", function()
			local signals, getValue = makeSignalsAndGetValue()
			signals.setLocalUserChat(false)
			signals.setCoreGuiEnabled(true)
			if FFlagExpChatWindowSyncUnibar then
				signals.setGameSettingsChatVisible(true)
			else
				signals.setChatActiveCalledByDeveloper(false)
				signals.setVisibleViaChatSelector(true)
			end
			expect(getValue()).toBe(true)
		end)
	end)
end)

if FFlagExpChatWindowSyncUnibar then
	describe("getIsChatWindowVisible", function()
		local function makeSignalsAndGetWindowValue(chatStatus: string | nil)
			local mockGetChatStatus, mockSetChatStatus = Signals.createSignal(chatStatus or "NoOne")
			local signals = ChatIconVisibleSignals.new({
				getChatStatus = mockGetChatStatus,
				setChatStatus = mockSetChatStatus,
			})
			local function getWindowValue()
				local value
				Signals.createEffect(function(scope)
					local v = signals.getIsChatWindowVisible(scope)
					value = v
				end)
				return value
			end
			return signals, getWindowValue
		end

		it("should never be true if ChatIconVisible is false", function()
			local signals, getWindowValue = makeSignalsAndGetWindowValue("NoOne")
			-- Both false by default
			expect(getWindowValue()).toBe(false)

			-- ChatIconVisible false, ChatWindowVisible should remain false
			signals.setCoreGuiEnabled(false)
			signals.setGameSettingsChatVisible(true)
			expect(getWindowValue()).toBe(false)

			-- ChatIconVisible true, ChatWindowVisible can be true if GameSettingsChatVisible is true
			signals.setCoreGuiEnabled(true)
			signals.setLocalUserChat(true)
			signals.setGameSettingsChatVisible(true)
			expect(getWindowValue()).toBe(true)

			-- ChatIconVisible true, but GameSettingsChatVisible false => ChatWindowVisible false
			signals.setGameSettingsChatVisible(false)
			expect(getWindowValue()).toBe(false)

			-- ChatIconVisible false again, ChatWindowVisible must be false
			signals.setCoreGuiEnabled(false)
			expect(getWindowValue()).toBe(false)
		end)

		it("should be true only when both ChatIconVisible and GameSettingsChatVisible are true", function()
			local signals, getWindowValue = makeSignalsAndGetWindowValue()
			signals.setCoreGuiEnabled(true)
			signals.setLocalUserChat(true)

			-- Only ChatIconVisible true, GameSettingsChatVisible false
			signals.setGameSettingsChatVisible(false)
			expect(getWindowValue()).toBe(false)

			-- Both true
			signals.setGameSettingsChatVisible(true)
			expect(getWindowValue()).toBe(true)

			-- Only GameSettingsChatVisible true, ChatIconVisible false
			signals.setCoreGuiEnabled(false)
			expect(getWindowValue()).toBe(false)
		end)

		it("should react to toggling ChatIconVisible and GameSettingsChatVisible", function()
			local signals, getWindowValue = makeSignalsAndGetWindowValue()
			signals.setCoreGuiEnabled(true)
			signals.setLocalUserChat(true)
			signals.setGameSettingsChatVisible(false)
			expect(getWindowValue()).toBe(false)

			signals.setGameSettingsChatVisible(true)
			expect(getWindowValue()).toBe(true)

			signals.setCoreGuiEnabled(false)
			expect(getWindowValue()).toBe(false)

			signals.setCoreGuiEnabled(true)
			expect(getWindowValue()).toBe(true)

			signals.setGameSettingsChatVisible(false)
			expect(getWindowValue()).toBe(false)
		end)
	end)
end
