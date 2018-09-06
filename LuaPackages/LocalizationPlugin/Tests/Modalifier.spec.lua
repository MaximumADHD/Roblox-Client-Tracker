local CorePackages = game:GetService("CorePackages")

return function()
	local Roact = require(CorePackages.Roact)
	local Modalifier = require(script.Parent.Parent.Components.Modalifier)

	it("mounts and unmounts and puts the curtain up", function()
		local container = Instance.new("Frame")
		local element = Roact.createElement(Modalifier, {
			Window = container
		})
		local handle = Roact.mount(element)
		expect(container.Curtain).to.be.ok()
		Roact.unmount(handle)
	end)
end
