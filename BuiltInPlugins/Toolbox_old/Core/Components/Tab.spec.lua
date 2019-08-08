return function()
	local Plugin = script.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local Tab = require(Plugin.Core.Components.Tab)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Tab = Roact.createElement(Tab, {
				Text = "Tab",
				Image = "rbxassetid://0",
				Selected = false,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	itSKIP("should render correctly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Tab = Roact.createElement(Tab, {
				Text = "Tab",
				Image = "rbxassetid://0",
				Selected = false,
			}),
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "Tab")

		local tab = container.Tab
		expect(tab).to.be.ok()
		expect(tab.UpperBorder).to.be.ok()
		expect(tab.LowerBorder).to.be.ok()
		expect(tab.Content).to.be.ok()
		expect(tab.Content.Layout).to.be.ok()
		expect(tab.Content.Icon).to.be.ok()
		expect(tab.Content.Text).to.be.ok()

		Roact.unmount(instance)
	end)
end
