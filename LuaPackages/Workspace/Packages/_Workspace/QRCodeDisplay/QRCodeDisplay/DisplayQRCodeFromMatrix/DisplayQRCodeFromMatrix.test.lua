local QRCodeDisplay = script:FindFirstAncestor("QRCodeDisplay")
local Packages = QRCodeDisplay.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local LuaProfileDeps = require(Packages.Dev.LuaProfileDeps)
local runWhileMounted = LuaProfileDeps.UnitTestHelpers.runWhileMounted
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local createTreeWithProviders = SocialTestHelpers.TestHelpers.createTreeWithProviders
local expect = JestGlobals.expect
local it = JestGlobals.it
local Stories = require(script.Parent.DisplayQRCodeFromMatrixStories)

local SimpleMatrix = Stories.SimpleMatrix
local ComplexMatrix = Stories.ComplexMatrix
local SuperComplexMatrix = Stories.SuperComplexMatrix
local CustomisedMatrix = Stories.CustomisedMatrix
local ReallySmallSideLength = Stories.ReallySmallSideLength
local Array = require(Packages.LuauPolyfill).Array
local RhodiumHelpers = require(Packages.Dev.RhodiumHelpers)

type ElementListItem = {
	element: () -> (),
	name: string,
	pixelCount: string,
}

local elementList: { [number]: ElementListItem } = {
	{ element = SimpleMatrix, name = "SimpleMatrix", pixelCount = "2" },
	{ element = ComplexMatrix, name = "ComplexMatrix", pixelCount = "218" },
	{ element = SuperComplexMatrix, name = "SuperComplexMatrix", pixelCount = "2152" },
	{ element = CustomisedMatrix, name = "CustomisedMatrix", pixelCount = "2152" },
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

	it("SHOULD mount pixels above and to the left of each other for " .. test.name, function()
		local component = createTreeWithProviders(test.element, {})

		runWhileMounted(component, function(parent)
			local firstPixel = RhodiumHelpers.findFirstInstance(parent, {
				Name = "1",
			})
			local lastPixel = RhodiumHelpers.findFirstInstance(parent, {
				Name = test.pixelCount,
			})

			-- more thorough tests are done on placements of this element below
			if test.name ~= "SimpleMatrix" then
				expect(firstPixel).toBeAbove(lastPixel)
				expect(firstPixel).toBeLeftOf(lastPixel)
			end
		end)
	end)
end)

it("SHOULD mount simple matrix correctly", function()
	local component = createTreeWithProviders(SimpleMatrix, {})

	runWhileMounted(component, function(parent)
		local firstPixel = RhodiumHelpers.findFirstInstance(parent, {
			Name = "1",
		})
		local secondPixel = RhodiumHelpers.findFirstInstance(parent, {
			Name = "2",
		})
		local thirdPixel = RhodiumHelpers.findFirstInstance(parent, {
			Name = "3",
		})

		expect(firstPixel).never.toBeAbove(secondPixel)
		expect(firstPixel).never.toBeBelow(secondPixel)
		expect(firstPixel).never.toIntersect(secondPixel)
		expect(firstPixel).toBeLeftOf(secondPixel)
		expect(thirdPixel).toBeNil()

		expect(firstPixel).toBeInsideRightOf(firstPixel.Parent)
		expect(secondPixel).toBeInsideLeftOf(secondPixel.Parent)
	end)
end)

it("SHOULD mount a ReallySmallSideLength matrix with default size of 1 and padding of 0", function()
	local component = createTreeWithProviders(ReallySmallSideLength, {})

	runWhileMounted(component, function(parent)
		local firstPixel = RhodiumHelpers.findFirstInstance(parent, {
			Name = "1",
		})
		local secondPixel = RhodiumHelpers.findFirstInstance(parent, {
			Name = "2",
		})

		expect(firstPixel.AbsoluteSize.X).toBe(1)
		expect(firstPixel.AbsoluteSize.Y).toBe(1)
		expect(firstPixel.AbsolutePosition.X).toBe(0)
		expect(firstPixel.AbsolutePosition.Y).toBe(0)
		expect(secondPixel.AbsolutePosition.X).toBe(0)
		expect(secondPixel.AbsolutePosition.Y).toBe(1)
	end)
end)
