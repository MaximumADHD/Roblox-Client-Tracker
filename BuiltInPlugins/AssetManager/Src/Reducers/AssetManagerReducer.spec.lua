local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

local AssetManagerReducer = require(script.parent.AssetManagerReducer)

local SetAssets = require(Plugin.Src.Actions.SetAssets)
local SetBulkImporterRunning = require(Plugin.Src.Actions.SetBulkImporterRunning)
local SetUniverseName = require(Plugin.Src.Actions.SetUniverseName)
local SetSearchTerm = require(Plugin.Src.Actions.SetSearchTerm)

local testImmutability = require(Plugin.Src.TestHelpers.testImmutability)

return function()
	it("should return a table with the correct members", function()
		local state = AssetManagerReducer(nil, {})

		expect(type(state)).to.equal("table")
		expect(state.assetsTable).to.ok()
		expect(state.assetsTable.assets).to.ok()
		expect(state.bulkImporterRunning).to.be.ok()
		expect(state.searchTerm).to.be.ok()
		expect(state.universeName).to.be.ok()
	end)

	describe("SetAssets action", function()
		it("should validate its inputs", function()
			expect(function()
				SetAssets("yeet")
			end).to.throw()

			expect(function()
				SetAssets(Cryo.None)
			end).to.throw()

			expect(function()
				SetAssets({ places = true, })
			end).to.throw()

			expect(function()
				SetAssets({ previousPageCursor = {}, })
			end).to.throw()

			expect(function()
				SetAssets({ nextPageCursor = {}, })
			end).to.throw()
		end)

		it("should not mutate the state", function()
			local immutabilityPreserved = testImmutability(AssetManagerReducer, SetAssets({
				assets = { {name = "yeet1"}, { name = "yeet2", }},
				nextPageCursor = "yeetnextcursor",
				previousPageCursor = "yeetpreviouscursor",
			}))
			expect(immutabilityPreserved).to.equal(true)
		end)

		it("should set places", function()
			local r = Rodux.Store.new(AssetManagerReducer)
			local state = r:getState()
			expect(Cryo.isEmpty(state.assetsTable.assets)).to.equal(true)

			state = AssetManagerReducer(state, SetAssets({
				assets = { { name = "yeet", }},
			}))
			expect(#state.assetsTable.assets).to.equal(1)
			expect(state.assetsTable.assets[1].name == "yeet").to.equal(true)

			state = AssetManagerReducer(state, SetAssets({ assets = {} }))
			expect(Cryo.isEmpty(state.assetsTable.assets)).to.equal(true)
		end)

		it("should set the cursors", function()
			local r = Rodux.Store.new(AssetManagerReducer)
			local state = r:getState()
			expect(Cryo.isEmpty(state.assetsTable.assets)).to.equal(true)

			local a = tostring(math.random())
			local b = tostring(math.random())
			state = AssetManagerReducer(state, SetAssets({
				assets = { "yeet" },
				nextPageCursor = a,
				previousPageCursor = b,
			}))
			expect(state.assetsTable.nextPageCursor).to.equal(a)
			expect(state.assetsTable.previousPageCursor).to.equal(b)

			state = AssetManagerReducer(state, SetAssets({assets = { "some yeet value", },}))
			expect(state.assetsTable.nextPageCursor).to.equal(nil)
			expect(state.assetsTable.previousPageCursor).to.equal(nil)
		end)
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

	describe("SetUniverseName action", function()
		it("should validate its inputs", function()
			expect(function()
				SetUniverseName(nil)
			end).to.throw()

			expect(function()
				SetUniverseName({ key = "value", })
			end).to.throw()

			expect(function()
				SetUniverseName(1)
			end).to.throw()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(AssetManagerReducer, SetUniverseName("yee yee"))
			expect(immutabilityPreserved).to.equal(true)
		end)

		it("should set screen", function()
			local r = Rodux.Store.new(AssetManagerReducer)
			local state = r:getState()
			expect(state.universeName).to.equal("")

            state = AssetManagerReducer(state, SetUniverseName("yeet"))
            expect(state.universeName).to.equal("yeet")
		end)
	end)
end