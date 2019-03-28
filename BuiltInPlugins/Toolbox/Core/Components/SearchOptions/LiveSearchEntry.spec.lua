return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local LiveSearchEntry = require(Plugin.Core.Components.SearchOptions.LiveSearchEntry)
	local Workspace = game:GetService("Workspace")

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Entry = Roact.createElement(LiveSearchEntry, {
				Name = "Name",
				Thumbnail = "rbxassetid://0",
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Entry = Roact.createElement(LiveSearchEntry, {
				Name = "Name",
				Thumbnail = "rbxassetid://0",
			}),
		})

		local container = Workspace.ToolboxTestsTarget
		local instance = Roact.mount(element, container, "Entry")

		local entry = container.Entry
		expect(entry.SelectedBar).to.be.ok()
		expect(entry.Container).to.be.ok()
		expect(entry.Container.UIPadding).to.be.ok()
		expect(entry.Container.UIListLayout).to.be.ok()
		expect(entry.Container.Thumbnail).to.be.ok()
		expect(entry.Container.TextLabel).to.be.ok()

		Roact.unmount(instance)
	end)
end
