local MessageToast = script:FindFirstAncestor("MessageToast")
local TextKeys = require(MessageToast.Common.TextKeys)
local Types = require(MessageToast.Common.Types)

local dependencies = require(MessageToast.dependencies)
local Dash = dependencies.Dash

local devDependencies = require(MessageToast.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local getTranslationKeys = require(script.Parent.getTranslationKeys)

local testExpectedValue = function(expectedValues, messageType: Types.MessageTypes)
	it("SHOULD have expected values for " .. messageType, function()
		expect(getTranslationKeys(messageType)).toEqual(expectedValues)
	end)
end

local testScenarios = {
	[Types.DefaultError] = {
		toastTitle = TextKeys.DefaultErrorTitle,
		toastSubtitle = TextKeys.DefaultErrorSubtitle,
	},
}

describe("getTranslationKeys", function()
	Dash.forEach(testScenarios, testExpectedValue)

	it("SHOULD allow overrides for custom types", function()
		local overrides = {
			toastTitle = "test",
		}

		expect(getTranslationKeys(Types.Custom, { toastTitle = "test" })).toEqual(overrides)
	end)
end)
