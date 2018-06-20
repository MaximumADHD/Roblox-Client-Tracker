return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local TreeViewItem = require(script.Parent.Parent.Parent.Parent.Stats.TreeViewItem)
	local StatsTreeComponent = require(script.Parent.StatsTreeComponent)

	it("should create and destroy without errors", function()
		local testTreeView = TreeViewItem.new("root", nil)

		local element = Roact.createElement(StatsTreeComponent,{
			stat = testTreeView
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end