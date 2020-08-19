return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local Asset = require(Plugin.Core.Components.Asset.Asset)

	local asset = {
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

	local function createTestAsset(container, name)
		local element = Roact.createElement(MockWrapper, {}, {
			Asset = Roact.createElement(Asset, {
				asset = asset,

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
end
