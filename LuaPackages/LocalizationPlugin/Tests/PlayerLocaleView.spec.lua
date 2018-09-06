local CorePackages = game:GetService("CorePackages")

return function()
	local Roact = require(CorePackages.Roact)
	local PlayerLocaleView = require(script.Parent.Parent.Components.PlayerLocaleView)

	it("mounts and unmounts", function()
		local element = Roact.createElement(PlayerLocaleView)
		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)
end
