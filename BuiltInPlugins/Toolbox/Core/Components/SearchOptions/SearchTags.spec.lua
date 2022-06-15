return function()
	local FFlagToolboxSearchResultsBackButton = game:GetFastFlag("ToolboxSearchResultsBackButton")

	local Plugin = script.Parent.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)
	local Category = require(Plugin.Core.Types.Category)
	local SearchTags = require(Plugin.Core.Components.SearchOptions.SearchTags)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			SearchTags = Roact.createElement(SearchTags, {
				Tags = { "Tag" },
				categoryName = if FFlagToolboxSearchResultsBackButton then Category.FREE_MODELS.name else nil,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			SearchTags = Roact.createElement(SearchTags, {
				Tags = { "Tag" },
				searchTerm = "Term",
				categoryName = if FFlagToolboxSearchResultsBackButton then Category.FREE_MODELS.name else nil,
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
