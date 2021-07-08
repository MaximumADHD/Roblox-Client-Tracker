return function()
	local Plugin = script.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local Rhodium = require(Plugin.Packages.Dev.Rhodium)
	local XPath = Rhodium.XPath
	local Element = Rhodium.Element
	local TestHelpers = require(script.Parent.Util.TestHelpers)

	--TODO: refactor to use JestRoblox instead of TestEZ
	--local JestRoblox = require(Plugin.Packages.Dev.JestRoblox)
	--local expect = JestRoblox.Globals.expect

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

	--[[ TODO: 
	Need to mock the asset with NetworkInterfaceMock to generate some fake asset with the preview button
	]]

	--it("should click preview button", function()
	--	local Workspace = game.Workspace
	--	local name = "Asset"
	--	local instance = TestHelpers.createTestAsset(Workspace, name)

	--	local path = XPath.new(("game.Workspace.%s.InnerFrame.AssetIcon.AssetPreviewTriggerButton"):format(name))
	--	local previewButton = Element.new(path)
	--	assetInstance = TestHelpers.clickInstanceWithXPath(path)

	--	expect(assetInstance:getRbxInstance()).never.toBeNil()
	--	Roact.unmount(instance)
	--end)
end
