local InspectAndBuyFolder = script.Parent.Parent
local SetLocale = require(InspectAndBuyFolder.Actions.SetLocale)
local Locale = require(script.Parent.Locale)

local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local MOCK_LOCALE = "en-uk"

describe("SetLocale", function()
	it("should set the locale", function()
		local newState = Locale(nil, SetLocale(MOCK_LOCALE))
		expect(newState).toBe(MOCK_LOCALE)
	end)
end)
