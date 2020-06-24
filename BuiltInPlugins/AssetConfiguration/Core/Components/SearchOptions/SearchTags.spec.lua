return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local SearchTags = require(Plugin.Core.Components.SearchOptions.SearchTags)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			SearchTags = Roact.createElement(SearchTags, {
				Tags = {"Tag"},
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			SearchTags = Roact.createElement(SearchTags, {
				Tags = {"Tag"},
				searchTerm = "Term",
			}),
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "SearchTags")

		local searchTags = container.SearchTags
		expect(searchTags.Term).to.be.ok()
		expect(searchTags.Term.UIListLayout).to.be.ok()
		expect(searchTags.Term.Prompt).to.be.ok()
		expect(searchTags.Term.SearchTerm).to.be.ok()
		expect(searchTags.ClearAll).to.be.ok()

		Roact.unmount(instance)
	end)
end
