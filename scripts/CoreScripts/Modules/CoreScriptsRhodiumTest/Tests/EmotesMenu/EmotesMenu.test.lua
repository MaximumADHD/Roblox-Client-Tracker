--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local Element = Rhodium.Element
local XPath = Rhodium.XPath
local withServices = require(Modules.CoreScriptsRhodiumTest.Helpers.withServices)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local EmotesMenuReducer = require(Modules.EmotesMenu.Reducers.EmotesMenuReducer)
local EmotesMenu = require(Modules.EmotesMenu.Components.EmotesMenu)

describe("EmotesMenu", function()
	it("should mount the EmotesMenu component", function()
		withServices(function(path)
			path = XPath.new(path)
			local baseWidget = Element.new(path)
			expect(baseWidget:waitForRbxInstance(1)).never.toBeNil()
		end, EmotesMenu, EmotesMenuReducer)
	end)
end)
