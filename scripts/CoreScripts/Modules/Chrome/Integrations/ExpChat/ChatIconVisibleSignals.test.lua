local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local beforeEach = JestGlobals.beforeEach
local it = JestGlobals.it

local Signals = require(CorePackages.Packages.Signals)
local ChatIconVisibleSignals = require(script.Parent.ChatIconVisibleSignals)

local signals
local getValue

beforeEach(function()
	signals = ChatIconVisibleSignals.new()
	getValue = function()
		local value
		Signals.createEffect(function(scope)
			local v = signals.getIsChatIconVisible(scope)
			value = v
		end)
		return value
	end
end)

it("should default unavailable (not visible)", function()
	expect(getValue()).toBe(false)
end)

describe("WHEN isForceDisabledForConsoleUsecase is true", function()
	it("should return unavailable (not visible) even if all other conditions are true", function()
		signals.setLocalUserChat(true)
		signals.setCoreGuiEnabled(true)
		signals.setChatActiveCalledByDeveloper(true)
		signals.setVisibleViaChatSelector(true)
		signals.setForceDisableForConsoleUsecase(true)
		expect(getValue()).toBe(false)
	end)

	it("should return unavailable (not visible) if privacy settings are off", function()
		signals.setLocalUserChat(false)
		signals.setCoreGuiEnabled(true)
		signals.setForceDisableForConsoleUsecase(true)
		expect(getValue()).toBe(false)
	end)

	it("should return unavailable (not visible) if chat selector is visible", function()
		signals.setLocalUserChat(false)
		signals.setCoreGuiEnabled(false)
		signals.setVisibleViaChatSelector(true)
		signals.setForceDisableForConsoleUsecase(true)
		expect(getValue()).toBe(false)
	end)

	it("should return unavailable (not visible) if developer tries to reveal chat", function()
		signals.setLocalUserChat(false)
		signals.setCoreGuiEnabled(true)
		signals.setChatActiveCalledByDeveloper(true)
		signals.setForceDisableForConsoleUsecase(true)
		expect(getValue()).toBe(false)
	end)

	it("should return unavailable (not visible) if only isForceDisabledForConsoleUsecase is true", function()
		signals.setForceDisableForConsoleUsecase(true)
		expect(getValue()).toBe(false)
	end)

	it(
		"should return unavailable (not visible) if toggling isForceDisabledForConsoleUsecase from false to true",
		function()
			signals.setLocalUserChat(true)
			signals.setCoreGuiEnabled(true)
			expect(getValue()).toBe(true)
			signals.setForceDisableForConsoleUsecase(true)
			expect(getValue()).toBe(false)
		end
	)

	it(
		"should return available (visible) again if isForceDisabledForConsoleUsecase is set back to false and other conditions allow",
		function()
			signals.setLocalUserChat(true)
			signals.setCoreGuiEnabled(true)
			signals.setForceDisableForConsoleUsecase(true)
			expect(getValue()).toBe(false)
			signals.setForceDisableForConsoleUsecase(false)
			expect(getValue()).toBe(true)
		end
	)
end)

describe("WHEN privacy settings are on", function()
	it("should return available (visible)", function()
		signals.setLocalUserChat(true)
		signals.setCoreGuiEnabled(true)
		expect(getValue()).toBe(true)
	end)

	describe("WHEN the developer disables chat", function()
		it("should return unavailable (not visible)", function()
			signals.setLocalUserChat(true)
			signals.setCoreGuiEnabled(false)
			expect(getValue()).toBe(false)
		end)

		describe("WHEN the developer attempts to reveal chat", function()
			it("should return unavailable (not visible)", function()
				signals.setLocalUserChat(true)
				signals.setCoreGuiEnabled(false)
				signals.setChatActiveCalledByDeveloper(true)
				expect(getValue()).toBe(false)
			end)
		end)

		describe("WHEN chat selector visibility is toggled", function()
			it("should remain unavailable (not visible)", function()
				signals.setLocalUserChat(true)
				signals.setCoreGuiEnabled(false)
				signals.setChatActiveCalledByDeveloper(true)
				signals.setVisibleViaChatSelector(true)
				expect(getValue()).toBe(false)
			end)
		end)
	end)

	describe("WHEN the developer enables chat", function()
		it("should return available (visible)", function()
			signals.setLocalUserChat(true)
			signals.setCoreGuiEnabled(true)
			expect(getValue()).toBe(true)
		end)

		describe("WHEN the developer attempts to hide chat", function()
			it("should return available (visible)", function()
				signals.setLocalUserChat(true)
				signals.setCoreGuiEnabled(true)
				signals.setChatActiveCalledByDeveloper(false)
				expect(getValue()).toBe(true)
			end)
		end)

		describe("WHEN the developer disables chat", function()
			it("should return unavailable (not visible)", function()
				signals.setLocalUserChat(true)
				signals.setCoreGuiEnabled(true)
				signals.setChatActiveCalledByDeveloper(false)
				signals.setCoreGuiEnabled(false)
				expect(getValue()).toBe(false)
			end)
		end)
	end)
end)

describe("WHEN privacy settings are off", function()
	it("should return unavailable (not visible)", function()
		signals.setLocalUserChat(false)
		expect(getValue()).toBe(false)
	end)

	describe("WHEN the developer enables chat", function()
		it("should remain unavailable (not visible)", function()
			signals.setLocalUserChat(false)
			signals.setCoreGuiEnabled(true)
			expect(getValue()).toBe(false)
		end)

		describe("WHEN the developer attempts to hide chat", function()
			it("should remain unavailable (not visible)", function()
				signals.setLocalUserChat(false)
				signals.setCoreGuiEnabled(true)
				signals.setChatActiveCalledByDeveloper(false)
				expect(getValue()).toBe(false)
			end)
		end)

		describe("WHEN the developer attempts to reveal chat", function()
			it("should transition to available (visible)", function()
				signals.setLocalUserChat(false)
				signals.setCoreGuiEnabled(true)
				signals.setChatActiveCalledByDeveloper(true)
				expect(getValue()).toBe(true)
			end)
		end)

		describe("WHEN the developer disables chat", function()
			it("should remain unavailable (not visible)", function()
				signals.setLocalUserChat(false)
				signals.setCoreGuiEnabled(true)
				signals.setChatActiveCalledByDeveloper(false)
				signals.setCoreGuiEnabled(false)
				expect(getValue()).toBe(false)
			end)
		end)
	end)

	describe("WHEN chat selector visibility is toggled", function()
		it("should remain unavailable (not visible)", function()
			signals.setLocalUserChat(false)
			signals.setCoreGuiEnabled(true)
			signals.setChatActiveCalledByDeveloper(false)
			signals.setVisibleViaChatSelector(true)
			expect(getValue()).toBe(true)
		end)
	end)
end)
