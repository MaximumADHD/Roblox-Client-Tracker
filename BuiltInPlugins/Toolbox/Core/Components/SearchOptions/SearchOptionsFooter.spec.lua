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

	local SearchOptionsFooter = require(Plugin.Core.Components.SearchOptions.SearchOptionsFooter)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Footer = Roact.createElement(SearchOptionsFooter),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Footer = Roact.createElement(SearchOptionsFooter),
		})

		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "Footer")

		local footer = container.Footer
		expect(footer.UIListLayout).to.be.ok()
		expect(footer.CancelButton).to.be.ok()
		expect(footer.CancelButton.Border).to.be.ok()
		expect(footer.CancelButton.Border.TextLabel).to.be.ok()
		expect(footer.ApplyButton).to.be.ok()
		expect(footer.ApplyButton.Border).to.be.ok()
		expect(footer.ApplyButton.Border.TextLabel).to.be.ok()

		Roact.unmount(instance)
	end)
end
