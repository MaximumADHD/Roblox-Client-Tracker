return function()
	local FFlagToolboxNewAssetAnalytics = game:GetFastFlag("ToolboxNewAssetAnalytics")

	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)
	local AssetAnalytics = require(Plugin.Core.Util.Analytics.AssetAnalytics)

	local Asset = require(Plugin.Core.Components.Asset.Asset)

	local function getStubAsset()
		return {
			Asset = {
				Id = 12345,
				IsEndorsed = false,
				Name = "Hello, world!",
				TypeId = Enum.AssetType.Model.Value,
			},
			Creator = {
				Name = "Foo",
				Type = Enum.CreatorType.User.Value,
				Id = 123,
			},
			Voting = {
				UpVotes = 150,
				DownVotes = 10,
				ShowVotes = true,
			},
		}
	end

	local function createTestAsset(container, name, asset, mockProps)
		local element = Roact.createElement(MockWrapper, mockProps or {}, {
			Asset = Roact.createElement(Asset, {
				asset = asset or getStubAsset(),

				LayoutOrder = 1,
				isHovered = false,
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

	if FFlagToolboxNewAssetAnalytics then
		it("should log AssetAnalytics impression on mount", function()
			local assetAnalytics = AssetAnalytics.mock()
			local calls = {}
			assetAnalytics.logImpression = function(...)
				table.insert(calls, {...})
			end

			local asset = getStubAsset()
			local instance = createTestAsset(nil, nil, asset, {
				assetAnalytics = assetAnalytics,
			})

			expect(#calls).to.equal(1)
			expect(calls[1][2]).to.equal(asset)

			Roact.unmount(instance)
		end)
	end
end
