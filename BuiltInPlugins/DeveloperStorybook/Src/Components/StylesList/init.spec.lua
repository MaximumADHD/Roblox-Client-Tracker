return function()
	local Main = script.Parent.Parent.Parent.Parent
	local Roact = require(Main.Packages.Roact)
	local StylesList = require(script.Parent)
	local MockWrap = require(Main.Src.Resources.MockWrap)

	it("should render correctly when there are no non-default styles", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(StylesList, {
			Header = "Test",
			ComponentName = "TextLabel",
			Styles = {
				Default = {},
			},
		}))
		local instance = Roact.mount(element, container)
		expect(container.Element.Contents.Content).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render correctly when there are styles", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(StylesList, {
			Header = "Test",
			-- This can be any DeveloperFramework component with a '&' style override
			ComponentName = "Button",
			Styles = {
				Default = {},
				Item = {},
			},
		}))
		local instance = Roact.mount(element, container)
		expect(container.Element.Contents.Content.Styles).to.be.ok()
		Roact.unmount(instance)
	end)
end
