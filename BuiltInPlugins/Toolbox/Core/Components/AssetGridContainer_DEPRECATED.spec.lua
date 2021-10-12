return function()
	local Plugin = script.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local AssetGridContainer = require(Plugin.Core.Components.AssetGridContainer_DEPRECATED)

	--[[local function tableLength(tbl)
		local i = 0
		for _ in pairs(tbl) do
			i = i + 1
		end
		return i
	end]]

	local function createTestAssetGridContainer(name, container, idToAssetMap)
		idToAssetMap = idToAssetMap or {}
		local assetIds = { }
		for id, _ in pairs(idToAssetMap) do
			assetIds[#assetIds + 1] = id
		end

		local element = Roact.createElement(MockWrapper, {}, {
			AssetGridContainer = Roact.createElement(AssetGridContainer, {
				idToAssetMap = idToAssetMap,
				assetIds = assetIds,
			}),
		})

		return Roact.mount(element, container or nil, name or "")
	end

	it("should create and destroy without errors", function()
		local instance = createTestAssetGridContainer()
		Roact.unmount(instance)
	end)

	-- TODO CLIDEVSRVS-1687: This test depends on idToAssetMap being correct in the store
	--[[
	it("should have a grid layout and assets with correct names", function()
		local idToAssetMap = {
			[12355] = {
				Asset = {
					Id = 12345,
					IsEndorsed = false,
					Name = "Asset 1!",
				},
				Creator = {
					Name = "Foo",
				},
				Voting = {
					UpVotes = 150,
					DownVotes = 10,
				},
			},
			[67890] = {
				Asset = {
					Id = 67890,
					IsEndorsed = false,
					Name = "Asset 2",
				},
				Creator = {
					Name = "Foo",
				},
				Voting = {
					UpVotes = 150,
					DownVotes = 10,
				},
			},
			[13579] = {
				Asset = {
					Id = 13579,
					IsEndorsed = false,
					Name = "Asset 3",
				},
				Creator = {
					Name = "Foo",
				},
				Voting = {
					UpVotes = 150,
					DownVotes = 10,
				},
			}
		}

		local container = Instance.new("Folder")
		local instance = createTestAssetGridContainer("AssetGridContainer", container, idToAssetMap)

		local assetGridContainer = container.AssetGridContainer

		expect(assetGridContainer.UIGridLayout).to.be.ok()

		for _, asset in pairs(idToAssetMap) do
			expect(assetGridContainer[asset.Asset.Id]).to.be.ok()
		end

		-- Add one for the UIGridLayout
		expect(#assetGridContainer:GetChildren()).to.equal(tableLength(idToAssetMap) + 1)

		Roact.unmount(instance)
	end)
	]]
end
