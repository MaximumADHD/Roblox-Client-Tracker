return function()
	local FFlagToolboxAssetGridRefactor3 = game:GetFastFlag("ToolboxAssetGridRefactor3")

	local Plugin = script.Parent.Parent.Parent.Parent

	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
	local Libs
	if FFlagToolboxDeduplicatePackages then
		Libs = Plugin.Packages
	else
		Libs = Plugin.Libs
	end
	local Roact = require(Libs.Roact)
	local Rodux = require(Libs.Rodux)
	local Cryo = require(Libs.Cryo)

	local ToolboxReducer = require(Plugin.Core.Reducers.ToolboxReducer)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)
	local AssetAnalytics = require(Plugin.Core.Util.Analytics.AssetAnalytics)

	local Asset = require(Plugin.Core.Components.Asset.Asset)

	local function getStubAsset()
		return {
			Asset = {
				Id = 123456,
				IsEndorsed = false,
				Name = "Hello, world!",
				TypeId = Enum.AssetType.Model.Value,
			},
			Creator = {
				Name = "Foo",
				Type = Enum.CreatorType.User.Value,
				Id = 123,
			},
			Thumbnail = {
				final = true,
				Url = "rbxasset://textures/StudioToolbox/Animation.png",
				retryUrl = nil,
				userId = 0,
				endpointType = "Avatar",
			},
			Voting = {
				UpVotes = 150,
				DownVotes = 10,
				ShowVotes = true,
			},
		}
	end

	local function createTestAsset(container, name, asset, mockProps)
		local myAsset = asset or getStubAsset()
		local assetId = myAsset.Asset.Id

		mockProps = mockProps or {}
		if FFlagToolboxAssetGridRefactor3 then
			mockProps = Cryo.Dictionary.join(mockProps, {
				store = Rodux.Store.new(ToolboxReducer, {
					assets = {
						idToAssetMap = { [assetId] = myAsset, },
					},
				}, {Rodux.thunkMiddleware})
			})
		end

		local element = Roact.createElement(MockWrapper, mockProps, {
			Asset = Roact.createElement(Asset, {
				asset = (not FFlagToolboxAssetGridRefactor3) and myAsset or nil,
				assetId = FFlagToolboxAssetGridRefactor3 and assetId or nil,
				LayoutOrder = 1,
				isHovered = (not FFlagToolboxAssetGridRefactor3) and false or nil,
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
