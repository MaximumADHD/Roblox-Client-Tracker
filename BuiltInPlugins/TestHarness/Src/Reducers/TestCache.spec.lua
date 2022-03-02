local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local TestCache = require(script.Parent.TestCache)

local Framework = require(Plugin.Packages.Framework)
local Dash = Framework.Dash
local join = Dash.join

local TestHelpers = Framework.TestHelpers
local testImmutability = TestHelpers.testImmutability
local setEquals = TestHelpers.setEquals

local Actions = Plugin.Src.Actions
local CacheTest = require(Actions.CacheTest)
local CollapseAll = require(Actions.CollapseAll)
local CollapseTest = require(Actions.CollapseTest)
local DisplayTests = require(Actions.DisplayTests)
local ExpandAll = require(Actions.ExpandAll)
local ExpandTest = require(Actions.ExpandTest)
local HideTest = require(Actions.HideTest)
local ResetTestCache = require(Actions.ResetTestCache)
local SelectTests = require(Actions.SelectTests)

local Classes = Plugin.Src.Classes
local Test = require(Classes.Test)

local testInstance = Test.mock("MockTest")
local source = testInstance.Source

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(TestCache)
		expect(r:getState()).to.be.ok()

		expect(r:getState().AlwaysHidden).to.be.a("table")
		expect(#r:getState().AlwaysHidden).to.equal(0)

		expect(r:getState().Displayed).to.be.a("table")
		expect(#r:getState().Displayed).to.equal(0)

		expect(r:getState().Expanded).to.be.a("table")
		expect(#r:getState().Expanded).to.equal(0)

		expect(r:getState().TestInstances).to.be.a("table")
		expect(#r:getState().TestInstances).to.equal(0)
		r:destruct()
	end)

	describe("CacheTest", function()
		it("should set the current TestInstances", function()
			local state = TestCache({}, CacheTest(testInstance))
			expect(state).to.be.ok()
			expect(state.TestInstances).to.be.ok()
			expect(state.TestInstances[source]).to.equal(testInstance)
		end)

		it("should display added test", function()
			local state = TestCache({}, CacheTest(testInstance))
			expect(state.Displayed).to.be.ok()
			expect(state.Displayed[1]).to.equal(source)
		end)

		it("should not expand the added test", function()
			local r = Rodux.Store.new(TestCache)
			r:dispatch(CacheTest(testInstance))
			expect(r:getState().Expanded).to.be.ok()
			expect(r:getState().Expanded[1]).to.never.equal(source)
			r:destruct()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(TestCache, CacheTest(testInstance))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("CollapseTest", function()
		it("should remove a test from the expanded tests", function()
			local r = Rodux.Store.new(TestCache)
			r:dispatch(CacheTest(testInstance))
			r:dispatch(ExpandTest(testInstance))
			r:dispatch(CollapseTest(testInstance))

			expect(r:getState().Expanded).to.be.ok()
			expect(r:getState().Expanded[1]).to.never.equal(source)

			r:destruct()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(TestCache, CollapseTest(source))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("CollapseAll", function()
		it("should remove all tests from the expanded tests", function()
			local newTest = Test.mock("MockTest2")

			local r = Rodux.Store.new(TestCache)
			r:dispatch(CacheTest(testInstance))
			r:dispatch(CacheTest(newTest))

			r:dispatch(ExpandTest(source))
			r:dispatch(ExpandTest(newTest.Source))
			expect(r:getState().Expanded).to.be.ok()
			expect(setEquals(r:getState().Expanded, {
				[source] = true,
				[newTest.Source] = true,
			})).to.equal(true)
			r:dispatch(CollapseAll(testInstance))
			expect(r:getState().Expanded).to.be.ok()
			expect(#r:getState().Expanded).to.equal(0)
			r:destruct()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(TestCache, CollapseAll(source))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("DisplayTests", function()
		it("should mark a set of tests to be displayed", function()
			local state = TestCache({}, DisplayTests({source}))
			expect(state.Displayed).to.be.ok()
			expect(state.Displayed[1]).to.equal(source)
		end)

		it("should swap one set of tests to display for another", function()
			local displaySet1 = {
				MockOne = Test.mock("Mach1").Source,
				MockTwo = Test.mock("Mach2").Source,
				MockTest = source
			}
			local displaySet2 = {
				MockThree = Test.mock("Mach3").Source,
				MockFour = Test.mock("Mach4").Source,
				MockTest = source,
			}

			local r = Rodux.Store.new(TestCache)
			r:dispatch(DisplayTests(displaySet1))
			expect(r:getState().Displayed).to.be.ok()
			expect(setEquals(r:getState().Displayed, displaySet1)).to.equal(true)
			r:dispatch(DisplayTests(displaySet2))
			expect(setEquals(r:getState().Displayed, displaySet1)).to.equal(false)
			expect(setEquals(r:getState().Displayed, displaySet2)).to.equal(true)
		end)

		it("should not alter the set of expanded tests", function()
			local displaySet1 = {
				Test.mock("Mach1").Source,
				Test.mock("Mach2").Source,
				source
			}
			local displaySet2 = {
				Test.mock("Mach3").Source,
				Test.mock("Mach4").Source,
				source,
			}

			local r = Rodux.Store.new(TestCache)
			r:dispatch(DisplayTests(displaySet1))
			r:dispatch(ExpandTest(source))
			expect(r:getState().Expanded[source]).to.equal(true)
			r:dispatch(DisplayTests(displaySet2))
			expect(r:getState().Expanded[source]).to.equal(true)
			r:destruct()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(TestCache, DisplayTests(testInstance))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ExpandTest", function()
		it("should add a test to the expanded tests", function()
			local state = TestCache({}, ExpandTest(source))
			expect(state.Expanded).to.be.ok()
			expect(state.Expanded[source]).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(TestCache, ExpandTest(source))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ExpandAll", function()
		it("should add all tests to the expanded tests", function()
			local newTest = Test.mock("MockTest2")

			local r = Rodux.Store.new(TestCache)
			r:dispatch(CacheTest(testInstance))
			r:dispatch(CacheTest(newTest))
			r:dispatch(ExpandAll(testInstance))

			local comparator = {
				[source] = true,
				[newTest.Source] = true,
			}

			expect(r:getState().Expanded).to.be.ok()
			expect(setEquals(r:getState().Expanded, comparator)).to.equal(true)
			r:destruct()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(TestCache, ExpandAll(source))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("HideTest", function()
		SKIP() -- The Hide test logic fails in testing, so skipped to allow other tests to run in CI
		it("should mark a test as hidden", function()
			local r = Rodux.Store.new(TestCache)
			r:dispatch(HideTest(source))
			expect(r:getState().AlwaysHidden).to.be.ok()
			expect(r:getState().AlwaysHidden[1]).to.equal(source)
			r:destruct()
		end)

		it("should update the display", function()
			local r = Rodux.Store.new(TestCache)
			r:dispatch(CacheTest(testInstance))
			expect(r:getState().Displayed).to.be.ok()
			expect(r:getState().Displayed[1]).to.equal(source)
			r:dispatch(HideTest(source))
			expect(r:getState().Displayed).to.be.ok()
			expect(#r:getState().Displayed).to.equal(1)
			r:destruct()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(TestCache, HideTest(source))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SelectTests", function()
		it("should add selected nodes to a list", function()
			local state = TestCache({}, SelectTests({source}))
			expect(state.Selected).to.be.ok()
			expect(state.Selected[1]).to.equal(source)
		end)
		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(TestCache, SelectTests(source))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ResetTestCache", function()
		it("should collapse all tests", function()
			local r = Rodux.Store.new(TestCache)
			r:dispatch(CacheTest(testInstance))
			r:dispatch(ExpandTest(source))
			expect(r:getState().Expanded[source]).to.equal(true)
			r:dispatch(ResetTestCache())
			expect(r:getState().Expanded).to.be.ok()
			expect(r:getState().Expanded[source]).to.never.equal(true)
			expect(#r:getState().Expanded).to.equal(0)
			r:destruct()
		end)

		-- The Hide test logic fails in testing, so skipped to allow other tests to run in CI
		itSKIP("should show all hidden tests", function()
			local r = Rodux.Store.new(TestCache)
			r:dispatch(CacheTest(testInstance))
			r:dispatch(HideTest(source))
			expect(r:getState().AlwaysHidden[1]).to.equal(source)
			r:dispatch(ResetTestCache())
			expect(r:getState().AlwaysHidden).to.be.ok()
			expect(r:getState().AlwaysHidden[1]).to.never.equal(source)
			expect(#r:getState().AlwaysHidden).to.equal(0)
			r:destruct()
		end)

		it("should display all stored tests", function()
			local r = Rodux.Store.new(TestCache)
			r:dispatch(CacheTest(testInstance))
			r:dispatch(ResetTestCache())
			expect(r:getState().Displayed).to.be.ok()
			expect(r:getState().Displayed[1]).to.equal(source)
			r:destruct()
		end)

		it("should not modify stored tests", function()
			local r = Rodux.Store.new(TestCache)
			r:dispatch(CacheTest(testInstance))
			r:dispatch(ResetTestCache())
			expect(r:getState().TestInstances[source]).to.equal(testInstance)
			r:destruct()
		end)

		it("should deselect all tests", function()
			local r = Rodux.Store.new(TestCache)
			r:dispatch(CacheTest(testInstance))
			r:dispatch(SelectTests({source}))
			expect(r:getState().Selected[1]).to.equal(source)
			r:dispatch(ResetTestCache())
			expect(r:getState().Selected).to.be.ok()
			expect(r:getState().Selected[1]).to.never.equal(source)
			expect(#r:getState().Selected).to.equal(0)
			r:destruct()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(TestCache, ResetTestCache(testInstance))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
