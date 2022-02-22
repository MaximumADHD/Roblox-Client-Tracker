return function()
	local Plugin = script.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)
	local Urls = require(Plugin.Core.Util.Urls)

	local Rhodium = require(Plugin.Packages.Dev.Rhodium)
	local XPath = Rhodium.XPath
	local Element = Rhodium.Element
	local TestHelpers = require(script.Parent.Util.TestHelpers)

	local MOCK_THUMBNAIL_URL = "rbxasset://textures/StudioToolbox/Tabs/Recent.png"

	--TODO: refactor to use JestRoblox instead of TestEZ
	--local JestRoblox = require(Plugin.Packages.Dev.JestRoblox)
	--local expect = JestRoblox.Globals.expect

	describe("Marketplace Asset Test Suite", function()
		local originalConstructAssetThumbnailUrl
		beforeAll(function()
			originalConstructAssetThumbnailUrl = Urls.constructAssetThumbnailUrl
			Urls.constructAssetThumbnailUrl = function()
				return MOCK_THUMBNAIL_URL
			end
		end)

		afterAll(function()
			Urls.constructAssetThumbnailUrl = originalConstructAssetThumbnailUrl
		end)

		it("should get instance", function()
			local Workspace = game.Workspace
			local name = "Asset"
			local instance = TestHelpers.createTestAsset(Workspace, name)
			local path = XPath.new(("game.Workspace.%s"):format(name))
			local assetInstance = Element.new(path)

			expect(assetInstance:getRbxInstance()).to.be.ok()
			expect(assetInstance:getAttribute("Name")).to.equal("Asset")
			Roact.unmount(instance)
		end)

		it("should render mock asset", function()
			local Workspace = game.Workspace
			local name = "Asset"
			local instance = TestHelpers.createTestAsset(Workspace, name)
			local path = XPath.new(("game.Workspace.%s.InnerFrame.AssetName"):format(name))
			local assetInstance = Element.new(path)

			expect(assetInstance:getRbxInstance().Text).to.equal("Observation Tower")
			Roact.unmount(instance)
		end)
	end)
end
