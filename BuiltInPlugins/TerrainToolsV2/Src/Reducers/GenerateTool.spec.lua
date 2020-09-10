local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Rodux = require(Plugin.Packages.Rodux)

local testImmutability = Framework.TestHelpers.testImmutability

local GenerateTool = require(script.Parent.GenerateTool)

local Actions = Plugin.Src.Actions
local SetBiomeSelection = require(Actions.SetBiomeSelection)
local SetBiomeSize = require(Actions.SetBiomeSize)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)
local SetHaveCaves = require(Actions.SetHaveCaves)
local SetSeed = require(Actions.SetSeed)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(GenerateTool)
		expect(r:getState()).to.be.ok()

		expect(r:getState().position).to.be.ok()
		expect(r:getState().position.X).to.equal(0)
		expect(r:getState().position.Y).to.equal(0)
		expect(r:getState().position.Z).to.equal(0)

		expect(r:getState().size).to.be.ok()
		expect(r:getState().size.X).to.equal(1024)
		expect(r:getState().size.Y).to.equal(512)
		expect(r:getState().size.Z).to.equal(1024)

		expect(r:getState().biomeSelection).to.be.ok()
		expect(r:getState().biomeSelection.Water).to.equal(false)
		expect(r:getState().biomeSelection.Plains).to.equal(true)
		expect(r:getState().biomeSelection.Dunes).to.equal(false)
		expect(r:getState().biomeSelection.Mountains).to.equal(true)
		expect(r:getState().biomeSelection.Arctic).to.equal(false)
		expect(r:getState().biomeSelection.Marsh).to.equal(false)
		expect(r:getState().biomeSelection.Hills).to.equal(true)
		expect(r:getState().biomeSelection.Canyons).to.equal(false)
		expect(r:getState().biomeSelection.Lavascape).to.equal(false)

		expect(r:getState().biomeSize).to.equal(100)

		expect(r:getState().haveCaves).to.equal(true)

		expect(r:getState().seed).to.equal("618033988")
	end)

	describe("ChangePosition", function()
		it("should set position", function()
			local state = GenerateTool(nil, ChangePosition({
				X = 321,
				Y = 654,
				Z = 987,
			}))

			expect(state).to.be.ok()
			expect(state.position).to.be.ok()
			expect(state.position.X).to.equal(321)
			expect(state.position.Y).to.equal(654)
			expect(state.position.Z).to.equal(987)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(GenerateTool, ChangePosition({
				X = 321,
				Y = 654,
				Z = 987,
			}))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ChangeSize", function()
		it("should set size", function()
			local state = GenerateTool(nil, ChangeSize({
				X = 123,
				Y = 456,
				Z = 789,
			}))

			expect(state).to.be.ok()
			expect(state.size).to.be.ok()
			expect(state.size.X).to.equal(123)
			expect(state.size.Y).to.equal(456)
			expect(state.size.Z).to.equal(789)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(GenerateTool, ChangeSize({
				X = 123,
				Y = 456,
				Z = 789,
			}))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetBiomeSelection", function()
		it("should set biomes table", function()
			local state = GenerateTool(nil, SetBiomeSelection("Water", true))
			state = GenerateTool(state, SetBiomeSelection("Plains", true))
			state = GenerateTool(state, SetBiomeSelection("Dunes", true))
			state = GenerateTool(state, SetBiomeSelection("Mountains", false))
			state = GenerateTool(state, SetBiomeSelection("Arctic", true))
			state = GenerateTool(state, SetBiomeSelection("Marsh", true))
			state = GenerateTool(state, SetBiomeSelection("Hills", true))
			state = GenerateTool(state, SetBiomeSelection("Canyons", true))
			state = GenerateTool(state, SetBiomeSelection("Lavascape", true))

			expect(state).to.be.ok()
			expect(state.biomeSelection).to.be.ok()
			expect(state.biomeSelection.Water).to.equal(true)
			expect(state.biomeSelection.Plains).to.equal(true)
			expect(state.biomeSelection.Dunes).to.equal(true)
			expect(state.biomeSelection.Mountains).to.equal(false)
			expect(state.biomeSelection.Arctic).to.equal(true)
			expect(state.biomeSelection.Marsh).to.equal(true)
			expect(state.biomeSelection.Hills).to.equal(true)
			expect(state.biomeSelection.Canyons).to.equal(true)
			expect(state.biomeSelection.Lavascape).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(GenerateTool, SetBiomeSelection("Water", true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetBiomeSize", function()
		it("should set biomeSize", function()
			local state = GenerateTool(nil, SetBiomeSize(9999999))

			expect(state).to.be.ok()
			expect(state.biomeSize).to.be.ok()
			expect(state.biomeSize).to.equal(9999999)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(GenerateTool, SetBiomeSize(1111111))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetHaveCaves", function()
		it("should set haveCaves", function()
			local state = GenerateTool(nil, SetHaveCaves(false))

			expect(state).to.be.ok()
			expect(state.haveCaves).to.be.ok()
			expect(state.haveCaves).to.equal(false)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(GenerateTool, SetHaveCaves(false))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetSeed", function()
		it("should set the current seed", function()
			local state = GenerateTool(nil, SetSeed("hello world"))

			expect(state).to.be.ok()
			expect(state.seed).to.be.ok()
			expect(state.seed).to.equal("hello world")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(GenerateTool, SetSeed("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

end
