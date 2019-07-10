local Roact = require(script.Parent.Parent.Parent.modules.Roact)
local Gui = require(script.Parent.Gui)

return function()
	it("should mount and unmount with a simple LayerCollector container", function()
		local container = Instance.new("ScreenGui")

		local element = Roact.createElement(Gui, {
			Window = container,
			plugin = {},
		})
		local tree = Roact.mount(element, container, "Gui")
		local instance = container:FindFirstChild("Gui")
		expect(instance).to.be.ok()

		Roact.unmount(tree)
	end)
end