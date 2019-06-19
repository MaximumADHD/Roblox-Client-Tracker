return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local SearchOptions = require(Plugin.Core.Components.SearchOptions.SearchOptions)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Options = Roact.createElement(SearchOptions, {
				LiveSearchData = {
					searchTerm = "Search",
					results = {},
				},
				SortIndex = 1,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	itSKIP("should render correctly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Options = Roact.createElement(SearchOptions, {
				LiveSearchData = {
					searchTerm = "Search",
					results = {},
				},
				SortIndex = 1,
			}),
		})

		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "Options")

		local options = container.Options
		expect(options.Container).to.be.ok()
		expect(options.Container.Layout).to.be.ok()
		expect(options.Container.Padding).to.be.ok()
		expect(options.Container.Creator).to.be.ok()
		expect(options.Container.Creator.SearchBar).to.be.ok()
		expect(options.Container.Separator1).to.be.ok()
		expect(options.Container.SortBy).to.be.ok()
		expect(options.Container.SortBy.RadioButtons).to.be.ok()
		expect(options.Container.Separator2).to.be.ok()
		expect(options.Container.Footer).to.be.ok()

		Roact.unmount(instance)
	end)
end
