return function()
	local Plugin = script.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local Rhodium = require(Plugin.Packages.Dev.Rhodium)
	local XPath = Rhodium.XPath
	local Element = Rhodium.Element
	local TestHelpers = require(script.Parent.Util.TestHelpers)

	local selectedTabColor = "0, 0.635294, 1"

	--TODO: refactor to use JestRoblox instead of TestEZ
	--local JestRoblox = require(Plugin.Packages.Dev.JestRoblox)
	--local expect = JestRoblox.Globals.expect

	it("should able create an instance", function()
		local Workspace = game.Workspace
		local name = "Tab"
		local instance = TestHelpers.createTestTab(Workspace, "Tab")
		local path = XPath.new(("game.Workspace.%s"):format(name))
		local tabInstance = Element.new(path)

		expect(tabInstance:getRbxInstance()).to.be.ok()
		expect(tabInstance:getAttribute("Name")).to.equal("Tab")
		Roact.unmount(instance)
	end)


	it("should be able to click and change tab", function()
		local Workspace = game.CoreGui
		local name = "Tab"
		local instance = TestHelpers.createTestTab(Workspace, "Tab")
		local path = XPath.new(("game.CoreGui.%s.Root.Tab.Marketplace.Content.Icon"):format(name))
		local mainTab = Element.new(path)

		expect(tostring(mainTab:getRbxInstance().ImageColor3)).to.equal(selectedTabColor)

		local inventoryTabPath = "game.CoreGui.Tab.Root.Tab.Inventory.Content.Icon"
		local inventoryTab = TestHelpers.clickInstanceWithXPath(inventoryTabPath)
		
		expect(tostring(inventoryTab:getRbxInstance().ImageColor3)).to.equal(selectedTabColor)
		Roact.unmount(instance)
	end)
end
