return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local InspectorProvider = require(script.Parent)
	local MockWrap = require(Plugin.Src.MockWrap)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = MockWrap(InspectorProvider)
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
