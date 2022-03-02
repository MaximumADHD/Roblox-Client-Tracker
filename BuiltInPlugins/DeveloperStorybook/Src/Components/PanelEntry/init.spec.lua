return function()
	local Main = script.Parent.Parent.Parent.Parent
	local Roact = require(Main.Packages.Roact)
	local PanelEntry = require(script.Parent)
	local MockWrap = require(Main.Src.Resources.MockWrap)

	it("should render a name and description", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(PanelEntry, {
			Header = "Test",
			Description = "Test",
		}))
		local instance = Roact.mount(element, container)
		expect(container.Element.Contents.Name).to.be.ok()
		expect(container.Element.Contents.Description).to.be.ok()
		Roact.unmount(instance)
	end)
end
