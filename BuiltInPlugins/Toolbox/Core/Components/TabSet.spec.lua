return function()
	local Plugin = script.Parent.Parent.Parent

	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
	local Libs
	if FFlagToolboxDeduplicatePackages then
		Libs = Plugin.Packages
	else
		Libs = Plugin.Libs
	end
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local TabSet = require(Plugin.Core.Components.TabSet)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			TabSet = Roact.createElement(TabSet, {
				Tabs = {
					{Key = "Key", Text = "Text", Image = "rbxassetid://0"},
				},
				CurrentTab = "Key",
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			TabSet = Roact.createElement(TabSet, {
				Tabs = {
					{Key = "Key", Text = "Text", Image = "rbxassetid://0"},
				},
				CurrentTab = "Key",
			}),
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "TabSet")

		local tabSet = container.TabSet
		expect(tabSet).to.be.ok()
		expect(tabSet.Layout).to.be.ok()
		expect(tabSet.LeftPadding).to.be.ok()
		expect(tabSet.Key).to.be.ok()
		expect(tabSet.RightPadding).to.be.ok()
		expect(tabSet.RightPadding.LowerBorder).to.be.ok()

		Roact.unmount(instance)
	end)
end
