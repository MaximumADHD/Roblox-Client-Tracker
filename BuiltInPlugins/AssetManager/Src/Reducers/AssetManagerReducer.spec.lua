local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local AssetManagerReducer = require(script.parent.AssetManagerReducer)

local SetBulkImporterRunning = require(Plugin.Src.Actions.SetBulkImporterRunning)
local SetSearchTerm = require(Plugin.Src.Actions.SetSearchTerm)

local testImmutability = require(Plugin.Src.TestHelpers.testImmutability)

return function()
	it("should return a table with the correct members", function()
		local state = AssetManagerReducer(nil, {})

		expect(type(state)).to.equal("table")
		expect(state.bulkImporterRunning).to.be.ok()
		expect(state.searchTerm).to.be.ok()
	end)

	describe("SetBulkImporterRunning action", function()
		it("should validate its inputs", function()
			expect(function()
				SetBulkImporterRunning(nil)
			end).to.throw()

			expect(function()
				SetBulkImporterRunning({ key = "value", })
			end).to.throw()

			expect(function()
				SetBulkImporterRunning(1)
			end).to.throw()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(AssetManagerReducer, SetBulkImporterRunning(true))
			expect(immutabilityPreserved).to.equal(true)
		end)

		it("should set screen", function()
			local r = Rodux.Store.new(AssetManagerReducer)
			local state = r:getState()
			expect(state.bulkImporterRunning).to.equal(false)

            state = AssetManagerReducer(state, SetBulkImporterRunning(true))
            expect(state.bulkImporterRunning).to.equal(true)
		end)
    end)

    describe("SetSearchTerm action", function()
		it("should validate its inputs", function()
			expect(function()
				SetSearchTerm(nil)
			end).to.throw()

			expect(function()
				SetSearchTerm({ key = "value", })
			end).to.throw()

			expect(function()
				SetSearchTerm(1)
			end).to.throw()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(AssetManagerReducer, SetSearchTerm("yee yee"))
			expect(immutabilityPreserved).to.equal(true)
		end)

		it("should set screen", function()
			local r = Rodux.Store.new(AssetManagerReducer)
			local state = r:getState()
			expect(state.searchTerm).to.equal("")

            state = AssetManagerReducer(state, SetSearchTerm("yeet"))
            expect(state.searchTerm).to.equal("yeet")
		end)
    end)
end