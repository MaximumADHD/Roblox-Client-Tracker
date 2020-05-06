return function()
	local Plugin = script.Parent.Parent.Parent

	local Roact = require(Plugin.Packages.Roact)
	local MockWrap = require(Plugin.Src.MockWrap)

	local RepopulatableHistoryItem = require(script.Parent.RepopulatableHistoryItem)

	it("should create and destroy without errors", function()
		local element = MockWrap(Roact.createElement(RepopulatableHistoryItem))
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(RepopulatableHistoryItem))
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end