return function()
	local Main = script.Parent.Parent.Parent.Parent
	local Roact = require(Main.Packages.Roact)
	local PropsList = require(script.Parent)
	local MockWrap = require(Main.Src.Resources.MockWrap)

	it("should render the props in the list", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(PropsList, {
			Header = "Test",
			Props = {
				{
					Type = "number",
					Name = "TestProp",
					Comment = "Test",
				},
			},
		}))
		local instance = Roact.mount(element, container)
		expect(container.Element.Contents.Content.TestProp.Contents.Comment).to.be.ok()
		Roact.unmount(instance)
	end)
end
