return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local PanelEntry = require(script.Parent.PanelEntry)
	local MockWrap = require(Plugin.Src.MockWrap)

	it("should create and destroy without errors", function()
		local element = MockWrap(Roact.createElement(PanelEntry, {
			Header = "Test",
		}))
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(PanelEntry, {
			Header = "Test",
		}))
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		expect(main.Contents).to.be.ok()
		expect(main.Contents.Layout).to.be.ok()
		expect(main.Contents.Name).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render a description", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(PanelEntry, {
			Header = "Test",
			Description = "Test",
		}))
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main.Contents.Description).to.be.ok()
		Roact.unmount(instance)
	end)
end
