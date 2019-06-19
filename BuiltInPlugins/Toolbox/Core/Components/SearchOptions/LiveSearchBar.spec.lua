return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local LiveSearchBar = require(Plugin.Core.Components.SearchOptions.LiveSearchBar)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			SearchBar = Roact.createElement(LiveSearchBar, {
				Results = {},
				width = 100,
				searchTerm = "Search",
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			SearchBar = Roact.createElement(LiveSearchBar, {
				Results = {},
				width = 100,
				searchTerm = "Search",
			}),
		})

		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "Entry")

		local entry = container.Entry
		expect(entry.SearchBar).to.be.ok()

		Roact.unmount(instance)
	end)
end
