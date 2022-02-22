return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local SearchOptionsEntry = require(Plugin.Core.Components.SearchOptions.SearchOptionsEntry)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Entry = Roact.createElement(SearchOptionsEntry, {
				Header = "Header",
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Entry = Roact.createElement(SearchOptionsEntry, {
				Header = "Header",
			}),
		})

		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "Entry")

		local entry = container.Entry
		expect(entry.Layout).to.be.ok()
		expect(entry.Header).to.be.ok()

		Roact.unmount(instance)
	end)
end
