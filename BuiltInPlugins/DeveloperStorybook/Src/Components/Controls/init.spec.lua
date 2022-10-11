return function()
	local Main = script.Parent.Parent.Parent.Parent
	local Roact = require(Main.Packages.Roact)
	local Controls = require(script.Parent)
	local MockWrap = require(Main.Src.Resources.MockWrap)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(Controls, {
			LayoutOrder = 1,
			Controls = {
				simpleToggle = true,
			},
			ControlState = {
				simpleToggle = true,
			},
			SetControls = function() end,
		}))
		local instance = Roact.mount(element, container)
		expect(container.Element.Contents.Content.Pane.simpleToggle).to.be.ok()
		Roact.unmount(instance)
	end)
end
