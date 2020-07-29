local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

local AssetManagerReducer = require(script.parent.AssetManagerReducer)

local SetAssets = require(Plugin.Src.Actions.SetAssets)
local SetAssetFavoriteCount = require(Plugin.Src.Actions.SetAssetFavoriteCount)
local SetAssetFavorited = require(Plugin.Src.Actions.SetAssetFavorited)
local SetAssetOwnerName = require(Plugin.Src.Actions.SetAssetOwnerName)
local SetAssetPreviewData = require(Plugin.Src.Actions.SetAssetPreviewData)
local SetBulkImporterRunning = require(Plugin.Src.Actions.SetBulkImporterRunning)
local SetEditingAssets = require(Plugin.Src.Actions.SetEditingAssets)
local SetHasLinkedScripts = require(Plugin.Src.Actions.SetHasLinkedScripts)
local SetIsFetchingAssets = require(Plugin.Src.Actions.SetIsFetchingAssets)
local SetRootTreeViewInstance = require(Plugin.Src.Actions.SetRootTreeViewInstance)
local SetSearchTerm = require(Plugin.Src.Actions.SetSearchTerm)
local SetSelectedAssets = require(Plugin.Src.Actions.SetSelectedAssets)
local SetSelectionIndex = require(Plugin.Src.Actions.SetSelectionIndex)
local SetUniverseName = require(Plugin.Src.Actions.SetUniverseName)

local testImmutability = require(Plugin.Src.TestHelpers.testImmutability)

return function()
	it("should return a table with the correct members", function()
		local state = AssetManagerReducer(nil, {})

		expect(type(state)).to.equal("table")
		expect(state.assetsTable).to.ok()
		expect(state.assetsTable.assets).to.ok()
		expect(state.bulkImporterRunning).to.be.ok()
		expect(state.isFetchingAssets).to.be.ok()
		expect(state.searchTerm).to.be.ok()
		expect(state.selectedAssets).to.be.ok()
		expect(state.selectionIndex).to.be.ok()
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

			expect(function()
				SetAssets({}, "test string")
			end).to.throw()

			expect(function()
				SetAssets({}, {})
			end).to.throw()
		end)

		it("should not mutate the state", function()
			local immutabilityPreserved = testImmutability(AssetManagerReducer, SetAssets({
				assets = { {name = "yeet1"}, { name = "yeet2", }},
				nextPageCursor = "yeetnextcursor",
				previousPageCursor = "yeetpreviouscursor",
			}))
			expect(immutabilityPreserved).to.equal(true)

			local immutabilityPreserved2 = testImmutability(AssetManagerReducer, SetAssets({
				assets = { {name = "yeet3"}, { name = "yeet4", }},
				nextPageCursor = "yeetnextcursor1",
				previousPageCursor = "yeetpreviouscursor2",
			}, 10))
			expect(immutabilityPreserved2).to.equal(true)
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

		it("should set the number of assets as index", function()
			local r = Rodux.Store.new(AssetManagerReducer)
			local state = r:getState()
			expect(state.assetsTable.index).to.equal(0)

			local a = tostring(math.random())
			local b = tostring(math.random())
			state = AssetManagerReducer(state, SetAssets({
				assets = { "yeet" },
				nextPageCursor = a,
				previousPageCursor = b,
			}, 1))

			expect(state.assetsTable.index).to.equal(1)
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

		it("should set is bulk importer running", function()
			local r = Rodux.Store.new(AssetManagerReducer)
			local state = r:getState()
			expect(state.bulkImporterRunning).to.equal(false)

            state = AssetManagerReducer(state, SetBulkImporterRunning(true))
            expect(state.bulkImporterRunning).to.equal(true)
		end)
	end)

	describe("SetEditingAssets action", function()
		it("should validate its inputs", function()
			expect(function()
				SetEditingAssets(nil)
			end).to.throw()

			expect(function()
				SetEditingAssets(true)
			end).to.throw()

			expect(function()
				SetEditingAssets(1)
			end).to.throw()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(AssetManagerReducer, SetEditingAssets({yeet = "yee yee"}))
			expect(immutabilityPreserved).to.equal(true)
		end)

		it("should set editing assets table", function()
			local r = Rodux.Store.new(AssetManagerReducer)
			local state = r:getState()
			expect(#state.editingAssets).to.equal(0)

            state = AssetManagerReducer(state, SetEditingAssets({yeet = "yee yee"}))
            expect(state.editingAssets.yeet).to.equal("yee yee")
		end)
	end)

	describe("SetIsFetchingAssets action", function()
		it("should validate its inputs", function()
			expect(function()
				SetIsFetchingAssets(nil)
			end).to.throw()

			expect(function()
				SetIsFetchingAssets({ key = "value", })
			end).to.throw()

			expect(function()
				SetIsFetchingAssets(1)
			end).to.throw()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(AssetManagerReducer, SetIsFetchingAssets(true))
			expect(immutabilityPreserved).to.equal(true)
		end)

		it("should set is fetching assets", function()
			local r = Rodux.Store.new(AssetManagerReducer)
			local state = r:getState()
			expect(state.isFetchingAssets).to.equal(false)

            state = AssetManagerReducer(state, SetIsFetchingAssets(true))
            expect(state.isFetchingAssets).to.equal(true)
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

		it("should set search term", function()
			local r = Rodux.Store.new(AssetManagerReducer)
			local state = r:getState()
			expect(state.searchTerm).to.equal("")

            state = AssetManagerReducer(state, SetSearchTerm("yeet"))
            expect(state.searchTerm).to.equal("yeet")
		end)
	end)

	describe("SetSelectedAssets action", function()
		it("should validate its inputs", function()
			expect(function()
				SetSelectedAssets(nil)
			end).to.throw()

			expect(function()
				SetSelectedAssets(true)
			end).to.throw()

			expect(function()
				SetSelectedAssets(1)
			end).to.throw()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(AssetManagerReducer, SetSelectedAssets({yeet = "yee yee"}))
			expect(immutabilityPreserved).to.equal(true)
		end)

		it("should set selected assets table", function()
			local r = Rodux.Store.new(AssetManagerReducer)
			local state = r:getState()
			expect(#state.selectedAssets).to.equal(0)

            state = AssetManagerReducer(state, SetSelectedAssets({yeet = "yee yee"}))
            expect(state.selectedAssets.yeet).to.equal("yee yee")
		end)
	end)

	describe("SetSelectionIndex action", function()
		it("should validate its inputs", function()
			expect(function()
				SetSelectionIndex(nil)
			end).to.throw()

			expect(function()
				SetSelectionIndex(true)
			end).to.throw()

			expect(function()
				SetSelectionIndex({})
			end).to.throw()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(AssetManagerReducer, SetSelectionIndex(1))
			expect(immutabilityPreserved).to.equal(true)
		end)

		it("should set selection index", function()
			local r = Rodux.Store.new(AssetManagerReducer)
			local state = r:getState()
			expect(#state.selectionIndex).to.equal(0)

            state = AssetManagerReducer(state, SetSelectionIndex(1))
            expect(state.selectionIndex).to.equal(1)
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

	describe("SetAssetPreviewData action", function()
		it("should validate its inputs", function()
			expect(function()
				SetAssetPreviewData(nil)
			end).to.throw()

			expect(function()
				SetAssetPreviewData("fruit")
			end).to.throw()

			expect(function()
				SetAssetPreviewData(100)
			end).to.throw()

			expect(function()
				SetAssetPreviewData({ key = "value"})
			end).to.be.ok()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(AssetManagerReducer, SetAssetPreviewData({
				key = "value",
			}))
			expect(immutabilityPreserved).to.equal(true)
		end)

		it("should set asset preview data", function()
			local r = Rodux.Store.new(AssetManagerReducer)
			local state = r:getState()
			expect(#state.assetsTable.assetPreviewData).to.equal(0)

			local assetId = 1234567890

			state = AssetManagerReducer(state, SetAssetPreviewData({
				[assetId] = {
					Asset = {
						Id = assetId,
						Type = "Model",
						TypeId = 10,
						Name = "Test Model Please Ignore",
						Description = "Lorem Ipsum",
						AssetGenres = {
							"All"
						},
						Created = "Today",
						Updated = "Yesterday",
					},
					Creator = {
						Type = 1,
						TypeId = 1,
						TargetId = 9876543210,
					},
				}
			}))

			expect(state.assetsTable.assetPreviewData[assetId].Asset.Id).to.equal(1234567890)
			expect(state.assetsTable.assetPreviewData[assetId].Asset.Type).to.equal("Model")
			expect(state.assetsTable.assetPreviewData[assetId].Asset.TypeId).to.equal(10)
			expect(state.assetsTable.assetPreviewData[assetId].Asset.Name).to.equal("Test Model Please Ignore")
			expect(state.assetsTable.assetPreviewData[assetId].Asset.Description).to.equal("Lorem Ipsum")
			expect(state.assetsTable.assetPreviewData[assetId].Asset.AssetGenres[1]).to.equal("All")
			expect(state.assetsTable.assetPreviewData[assetId].Asset.Created).to.equal("Today")
			expect(state.assetsTable.assetPreviewData[assetId].Asset.Updated).to.equal("Yesterday")
			expect(state.assetsTable.assetPreviewData[assetId].Creator.Type).to.equal(1)
			expect(state.assetsTable.assetPreviewData[assetId].Creator.TypeId).to.equal(1)
			expect(state.assetsTable.assetPreviewData[assetId].Creator.TargetId).to.equal(9876543210)
		end)
	end)

	describe("SetAssetOwnerName", function()
		it("should validate its inputs", function()
			expect(function()
				SetAssetOwnerName(nil, nil)
			end).to.throw()

			expect(function()
				SetAssetOwnerName(123, "fruit")
			end).to.be.ok()

			expect(function()
				SetAssetOwnerName("string", 100)
			end).to.throw()

			expect(function()
				SetAssetOwnerName(nil, { key = "value"})
			end).to.throw()
		end)

		it("should set the asset's owner name", function()
			local r = Rodux.Store.new(AssetManagerReducer)
			local state = r:getState()

			local assetId = 1234

			expect(state.assetsTable.assetPreviewData[assetId]).to.equal(nil)
			state = AssetManagerReducer(state, SetAssetPreviewData({
				[assetId] = {
					Asset = {
						Id = assetId,
						Type = "Model",
						TypeId = 10,
						Name = "Test Model Please Ignore",
						Description = "Lorem Ipsum",
						AssetGenres = {
							"All"
						},
						Created = "Today",
						Updated = "Yesterday",
					},
					Creator = {
						Type = 1,
						TypeId = 1,
						TargetId = 9876543210,
					},
				}
			}))

			state = AssetManagerReducer(state, SetAssetOwnerName(assetId, "Bub"))

			expect(state.assetsTable.assetPreviewData[assetId].Creator.Name).to.equal("Bub")
		end)
	end)

	describe("SetRootTreeViewInstance", function()
		local assetId = 1234
		it("should validate its inputs", function()
			expect(function()
				SetAssetOwnerName(nil, nil)
			end).to.throw()

			expect(function()
				SetAssetOwnerName(assetId, Instance.new("Model"))
			end).to.be.ok()

			expect(function()
				SetAssetOwnerName("string", 100)
			end).to.throw()

			expect(function()
				SetAssetOwnerName(nil, { key = "value"})
			end).to.throw()
		end)

		it("should set the asset's root tree view instance", function()
			local r = Rodux.Store.new(AssetManagerReducer)
			local state = r:getState()

			expect(state.assetsTable.assetPreviewData[assetId]).to.equal(nil)
			state = AssetManagerReducer(state, SetAssetPreviewData({
				[assetId] = {
					Asset = {
						Id = assetId,
						Type = "Model",
						TypeId = 10,
						Name = "Test Model Please Ignore",
						Description = "Lorem Ipsum",
						AssetGenres = {
							"All"
						},
						Created = "Today",
						Updated = "Yesterday",
					},
					Creator = {
						Type = 1,
						TypeId = 1,
						TargetId = 9876543210,
						Name = "Hello",
					},
				}
			}))

			state = AssetManagerReducer(state, SetRootTreeViewInstance(assetId, Instance.new("Model")))
			expect(typeof(state.assetsTable.assetPreviewData[assetId].rootTreeViewInstance)).to.equal("Instance")
		end)
	end)

	describe("SetHasLinkedScripts", function()
		it("should validate its inputs", function()
			expect(function()
				SetHasLinkedScripts(nil)
			end).to.throw()

			expect(function()
				SetHasLinkedScripts(true)
			end).to.be.ok()

			expect(function()
				SetHasLinkedScripts(123)
			end).to.be.throw()

			expect(function()
				SetHasLinkedScripts("string")
			end).to.throw()

			expect(function()
				SetHasLinkedScripts({ key = "value"})
			end).to.throw()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(AssetManagerReducer, SetHasLinkedScripts(true))
			expect(immutabilityPreserved).to.equal(true)
		end)

		it("should set the hasLinkedScripts in the store", function()
			local r = Rodux.Store.new(AssetManagerReducer)
			local state = r:getState()

			expect(state.hasLinkedScripts).to.equal(false)
			state = AssetManagerReducer(state, SetHasLinkedScripts(true))
			expect(state.hasLinkedScripts).to.equal(true)
		end)
	end)

	describe("SetAssetFavorited", function()
		local assetId = 1234
		it("should validate its inputs", function()
			expect(function()
				SetAssetFavorited(nil, nil)
			end).to.throw()

			expect(function()
				SetAssetFavorited({}, {})
			end).to.throw()

			expect(function()
				SetAssetFavorited(123, 123)
			end).to.throw()

			expect(function()
				SetAssetFavorited("test", "test")
			end).to.throw()

			expect(function()
				SetAssetFavorited(123, true)
			end).to.be.ok()
		end)

		it("should set if an asset is favorited by the current user.", function()
			local r = Rodux.Store.new(AssetManagerReducer)
			local state = r:getState()

			state = AssetManagerReducer(state, SetAssetPreviewData({
				[assetId] = {
					Asset = {
						Id = assetId,
						Type = "Model",
						TypeId = 10,
						Name = "Test Model Please Ignore",
						Description = "Lorem Ipsum",
						AssetGenres = {
							"All"
						},
						Created = "Today",
						Updated = "Yesterday",
					},
					Creator = {
						Type = 1,
						TypeId = 1,
						TargetId = 9876543210,
						Name = "Hello",
					},
				}
			}))

			state = AssetManagerReducer(state, SetAssetFavorited(assetId, true))
			expect(state.assetsTable.assetPreviewData[assetId].favorited).to.equal(true)
		end)
	end)

	describe("SetAssetFavoriteCount", function()
		local assetId = 1234
		it("should validate its inputs", function()
			expect(function()
				SetAssetFavoriteCount(nil, nil)
			end).to.throw()

			expect(function()
				SetAssetFavoriteCount({}, {})
			end).to.throw()

			expect(function()
				SetAssetFavoriteCount(123, 123)
			end).to.throw()

			expect(function()
				SetAssetFavoriteCount("test", "test")
			end).to.throw()

			expect(function()
				SetAssetFavoriteCount(123, "123")
			end).to.be.ok()
		end)

		it("should set if an asset is favorited by the current user.", function()
			local r = Rodux.Store.new(AssetManagerReducer)
			local state = r:getState()

			state = AssetManagerReducer(state, SetAssetPreviewData({
				[assetId] = {
					Asset = {
						Id = assetId,
						Type = "Model",
						TypeId = 10,
						Name = "Test Model Please Ignore",
						Description = "Lorem Ipsum",
						AssetGenres = {
							"All"
						},
						Created = "Today",
						Updated = "Yesterday",
					},
					Creator = {
						Type = 1,
						TypeId = 1,
						TargetId = 9876543210,
						Name = "Hello",
					},
				}
			}))

			state = AssetManagerReducer(state, SetAssetFavoriteCount(assetId, "123"))
			expect(state.assetsTable.assetPreviewData[assetId].favoriteCount).to.equal("123")
		end)
	end)
end