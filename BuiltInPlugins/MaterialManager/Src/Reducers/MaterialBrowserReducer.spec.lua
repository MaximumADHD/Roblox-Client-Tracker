local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local MaterialBrowserReducer = require(script.Parent.MaterialBrowserReducer)

local Framework = require(Plugin.Packages.Framework)

local TestHelpers = Framework.TestHelpers
local testImmutability = TestHelpers.testImmutability

local Actions = Plugin.Src.Actions
local SetMaterial = require(Actions.SetMaterial)
local SetSearch = require(Actions.SetSearch)

local defaultMaterial = {
    Base = true,
    MaterialPath = { "All" },
    MaterialVariant = Enum.Material.Plastic,
    MaterialType = "Base"
}

local defaultSearch = "Hello World!"

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(MaterialBrowserReducer, nil, nil, nil)
		expect(r:getState()).to.be.ok()
		expect(r:getState().ActiveAsTool).to.equal(false)
		expect(r:getState().GridLock).to.equal(false)
		expect(#r:getState().MaterialOverride).to.equal(0)
		expect(#r:getState().MaterialOverrides).to.equal(0)
		expect(#r:getState().Materials).to.equal(0)
		expect(#r:getState().MaterialStatus).to.equal(0)
		expect(r:getState().MaterialTileSize).to.equal(130)
		expect(r:getState().MenuHover).to.equal(false)
		expect(#r:getState().Path).to.equal(0)
		expect(r:getState().Search).to.equal("")
		expect(r:getState().Use2022Materials).to.equal(false)
		expect(r:getState().ViewType).to.equal("Grid")
	end)

	describe("SetMaterial", function()
		it("should set the current Material", function()
			local state = MaterialBrowserReducer(nil, SetMaterial(defaultMaterial))

			expect(state).to.be.ok()
			expect(state.Material).to.be.ok()
			expect(state.Material.Base).to.equal(defaultMaterial.Base)
            expect(state.Material.MaterialPath[1]).to.equal(defaultMaterial.MaterialPath[1])
            expect(state.Material.MaterialVariant).to.equal(defaultMaterial.MaterialVariant)
            expect(state.Material.MaterialType).to.equal(defaultMaterial.MaterialType)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialBrowserReducer, SetMaterial(defaultMaterial))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

    describe("SetSearch", function()
		it("should set the current Search", function()
			local state = MaterialBrowserReducer(nil, SetSearch(defaultSearch))

			expect(state).to.be.ok()
			expect(state.Search).to.be.ok()
			expect(state.Search).to.equal(defaultSearch)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialBrowserReducer, SetSearch(defaultSearch))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end