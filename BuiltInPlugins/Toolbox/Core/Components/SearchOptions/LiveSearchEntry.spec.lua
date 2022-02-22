return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local LiveSearchEntry = require(Plugin.Core.Components.SearchOptions.LiveSearchEntry)

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

		local container = Instance.new("Folder")
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
