return function()
	local FFlagToolboxAssetGridRefactor = game:GetFastFlag("ToolboxAssetGridRefactor6")
	local FFlagToolboxAssetCategorization = game:GetFastFlag("ToolboxAssetCategorization")

	local Plugin = script.Parent.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)
	local Rodux = require(Packages.Rodux)
	local Cryo = require(Packages.Cryo)

	local ToolboxReducer = require(Plugin.Core.Reducers.ToolboxReducer)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)
	local AssetAnalytics = require(Plugin.Core.Util.Analytics.AssetAnalytics)

	local CoreTestUtils = require(Plugin.TestUtils.CoreTestUtils)
	local MockItems = require(Plugin.TestUtils.MockItems)

	local Asset = require(Plugin.Core.Components.Asset.Asset)

	local GetAssets = require(Plugin.Core.Actions.GetAssets)

	local function createTestAsset(container, name, asset, mockProps)
		local myAsset = asset or MockItems.getSimpleAsset(123456)
		local assetId = myAsset.Asset.Id

		mockProps = mockProps or {}
		if FFlagToolboxAssetGridRefactor then
			mockProps = Cryo.Dictionary.join(mockProps, {
				storeSetup = function(store)
					store:dispatch(GetAssets({ myAsset }, 1))
				end,
			})
		end

		local element = Roact.createElement(MockWrapper, mockProps, {
			Asset = Roact.createElement(Asset, {
				asset = not FFlagToolboxAssetGridRefactor and myAsset or nil,
				assetId = FFlagToolboxAssetGridRefactor and assetId or nil,
				assetData = FFlagToolboxAssetCategorization and myAsset or nil,
				LayoutOrder = 1,
			}),
		})

		return Roact.mount(element, container or nil, name or "")
	end

	it("should create and destroy without errors", function()
		local instance = createTestAsset()
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = createTestAsset(container, "Asset")
		local asset = container.Asset

		expect(asset.InnerFrame).to.be.ok()
		expect(asset.InnerFrame.UIListLayout).to.be.ok()
		expect(asset.InnerFrame.AssetIcon).to.be.ok()
		expect(asset.InnerFrame.AssetName).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should log AssetAnalytics impression on mount", function()
		local assetAnalytics = AssetAnalytics.mock()
		local calls = {}
		assetAnalytics.logImpression = function(...)
			table.insert(calls, { ... })
		end

		local asset = MockItems.getSimpleAsset(123456)
		local instance = createTestAsset(nil, nil, asset, {
			assetAnalytics = assetAnalytics,
		})

		expect(#calls).to.equal(1)
		expect(calls[1][2].Asset.Id).to.equal(asset.Asset.Id)

		Roact.unmount(instance)
	end)
end
