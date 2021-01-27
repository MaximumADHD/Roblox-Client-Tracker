return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local PropsList = require(script.Parent.PropsList)
	local MockWrap = require(Plugin.Src.MockWrap)

	it("should create and destroy without errors", function()
		local element = MockWrap(Roact.createElement(PropsList, {
			Header = "Test",
			Props = {},
		}))
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(PropsList, {
			Header = "Test",
			Props = {},
		}))
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		expect(main.Contents).to.be.ok()
		expect(main.Contents.Layout).to.be.ok()
		expect(main.Contents.Name).to.be.ok()
		expect(main.Contents.List).to.be.ok()
		local list = main.Contents.List.Contents
		expect(list).to.be.ok()
		expect(list.__Layout).to.be.ok()
		Roact.unmount(instance)
	end)

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

		local main = container:FindFirstChildOfClass("Frame")
		local list = main.Contents.List.Contents
		expect(list.TestProp).to.be.ok()
		expect(list.TestProp.Contents).to.be.ok()
		expect(list.TestProp.Contents.Type).to.be.ok()
		expect(list.TestProp.Contents.Name).to.be.ok()
		expect(list.TestProp.Contents.Comment).to.be.ok()
		Roact.unmount(instance)
	end)
end
