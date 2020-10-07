return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local StylesList = require(script.Parent.StylesList)
	local MockWrap = require(Plugin.Src.MockWrap)

	it("should create and destroy without errors", function()
		local element = MockWrap(Roact.createElement(StylesList, {
			Header = "Test",
			ComponentName = "TextLabel",
			Styles = {},
		}))
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

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

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		expect(main.Contents).to.be.ok()
		expect(main.Contents.Name).to.be.ok()
		expect(main.Contents.Description).to.be.ok()
		expect(main.Contents:FindFirstChild("List")).never.to.be.ok()
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

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		expect(main.Contents).to.be.ok()
		expect(main.Contents.Name).to.be.ok()
		expect(main.Contents.Description).to.be.ok()
		expect(main.Contents.List).to.be.ok()
		local list = main.Contents.List.Contents
		expect(list).to.be.ok()
		expect(list.Styles).to.be.ok()
		Roact.unmount(instance)
	end)
end
