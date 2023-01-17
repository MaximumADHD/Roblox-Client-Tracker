local QRCodeDisplay = script:FindFirstAncestor("QRCodeDisplay")
local Packages = QRCodeDisplay.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local LuaProfileDeps = require(Packages.Dev.LuaProfileDeps)
local runWhileMounted = LuaProfileDeps.UnitTestHelpers.runWhileMounted
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local createTreeWithProviders = SocialTestHelpers.TestHelpers.createTreeWithProviders
local expect = JestGlobals.expect
local it = JestGlobals.it
local RhodiumHelpers = require(Packages.Dev.RhodiumHelpers)
local Stories = require(script.Parent.DisplayQRCodeStories)
local SimpleMatrix = Stories.SimpleMatrix
local LoadingMatrix = Stories.LoadingMatrix
local SuperComplexMatrix = Stories.SuperComplexMatrix
local Array = require(Packages.LuauPolyfill).Array

type ElementListItem = {
	element: () -> (),
	name: string,
	pixelCount: string,
}

local elementList: { [number]: ElementListItem } = {
	{ element = SimpleMatrix, name = "SimpleMatrix", pixelCount = "328" },
	{ element = LoadingMatrix, name = "LoadingMatrix", pixelCount = "218" },
	{ element = SuperComplexMatrix, name = "SuperComplexMatrix", pixelCount = "4026" },
}

Array.forEach(elementList, function(test: ElementListItem)
	it("SHOULD mount correctly" .. tostring(test.name), function()
		local component = createTreeWithProviders(test.element, {})

		runWhileMounted(component, function(parent)
			expect(#parent:GetChildren()).toEqual(1)
		end)
	end)

	it("SHOULD mount " .. test.pixelCount .. " pixels for " .. tostring(test.name), function()
		local component = createTreeWithProviders(test.element, {})

		runWhileMounted(component, function(parent)
			local highestPixelCountElement = RhodiumHelpers.findFirstInstance(parent, {
				Name = test.pixelCount,
			})

			expect(highestPixelCountElement).never.toBeNil()
		end)
	end)

	it("SHOULD mount pixels above and to the right of each other for " .. test.name, function()
		local component = createTreeWithProviders(test.element, {})

		runWhileMounted(component, function(parent)
			local firstPixel = RhodiumHelpers.findFirstInstance(parent, {
				Name = "1",
			})
			local lastPixel = RhodiumHelpers.findFirstInstance(parent, {
				Name = test.pixelCount,
			})

			expect(firstPixel).toBeAbove(lastPixel)
			expect(firstPixel).toBeLeftOf(lastPixel)
		end)
	end)
end)
