return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local TreeViewItem = require(Plugin.Core.Components.TreeView.TreeViewItem)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			TreeViewItem = Roact.createElement(TreeViewItem, {
				Instance = Instance.new("Part"),
				Indentation = 0,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			TreeViewItem = Roact.createElement(TreeViewItem, {
				Instance = Instance.new("Part"),
				Indentation = 0,
				Expandable = true,
				Icon = "rbxasset://0"
			}),
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "TreeViewItem")

		local treeViewItem = container.TreeViewItem
		expect(treeViewItem).to.be.ok()
		expect(treeViewItem.Padding).to.be.ok()
		expect(treeViewItem.Layout).to.be.ok()
		expect(treeViewItem.Expand).to.be.ok()
		expect(treeViewItem.Expand.ExpandIcon).to.be.ok()
		expect(treeViewItem.Icon).to.be.ok()
		expect(treeViewItem.Name).to.be.ok()
		expect(treeViewItem.HoverFolder).to.be.ok()
		expect(treeViewItem.HoverFolder.Hover).to.be.ok()

		Roact.unmount(instance)
	end)
end
