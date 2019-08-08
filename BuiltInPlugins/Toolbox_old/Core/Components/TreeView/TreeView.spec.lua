return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local TreeView = require(Plugin.Core.Components.TreeView.TreeView)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			TreeView = Roact.createElement(TreeView, {
				RootInstance = Instance.new("Folder"),
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	itSKIP("should render correctly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			TreeView = Roact.createElement(TreeView, {
				RootInstance = Instance.new("Folder"),
			}),
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "TreeView")

		local treeView = container.TreeView
		expect(treeView).to.be.ok()
		expect(treeView.Frame).to.be.ok()
		expect(treeView.Frame.ScrollingFrame).to.be.ok()
		expect(treeView.Frame.ScrollingFrame.Root).to.be.ok()
		expect(treeView.Frame.ScrollingFrame.Layout).to.be.ok()
		expect(treeView.Frame.ScrollingFrame.Padding).to.be.ok()

		Roact.unmount(instance)
	end)

	itSKIP("should create a TreeViewItem for every instance", function()
		local root = Instance.new("Folder")
		local f1 = Instance.new("Folder", root)
		f1.Name = "Folder1"
		local f2 = Instance.new("Folder", root)
		f2.Name = "Folder2"

		local element = Roact.createElement(MockWrapper, {}, {
			TreeView = Roact.createElement(TreeView, {
				RootInstance = root,
			}),
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "TreeView")

		--Expect 5 because Padding and Layout instances add 2 to total
		local treeView = container.TreeView
		expect(#treeView.Frame.ScrollingFrame:GetChildren()).to.equal(5)

		Roact.unmount(instance)
	end)
end
