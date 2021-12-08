return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
	local Libs
	if FFlagToolboxDeduplicatePackages then
		Libs = Plugin.Packages
	else
		Libs = Plugin.Libs
	end
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local SearchTag = require(Plugin.Core.Components.SearchOptions.SearchTag)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			SearchTag = Roact.createElement(SearchTag, {
				Name = "Tag",
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			SearchTag = Roact.createElement(SearchTag, {
				Name = "Tag",
			}),
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "SearchTag")

		local searchTag = container.SearchTag
		expect(searchTag.Border).to.be.ok()
		expect(searchTag.Border.UIPadding).to.be.ok()
		expect(searchTag.Border.ByLabel).to.be.ok()
		expect(searchTag.Border.NameLabel).to.be.ok()
		expect(searchTag.Border.DeleteButton).to.be.ok()

		Roact.unmount(instance)
	end)
end
