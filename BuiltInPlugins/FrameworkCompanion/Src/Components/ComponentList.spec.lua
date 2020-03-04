return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local ComponentList = require(script.Parent.ComponentList)
	local MockWrap = require(Plugin.Src.MockWrap)

	it("should create and destroy without errors", function()
		local element = MockWrap(Roact.createElement(ComponentList))
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(ComponentList))
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		expect(main.Contents).to.be.ok()
		expect(main.Contents.ScrollingFrame).to.be.ok()
		local frame = main.Contents.ScrollingFrame
		expect(frame.__Layout).to.be.ok()
		expect(frame.__Padding).to.be.ok()
		expect(frame.__UI).to.be.ok()
		expect(frame.__StudioUI).to.be.ok()
		Roact.unmount(instance)
	end)
end
