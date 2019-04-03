local Roact = require(game:GetService("CorePackages").Roact)
local Modalifier = require(script.Parent.Parent.Components.Modalifier)

return function()
	it("mounts and unmounts", function()
		local element = Roact.createElement(Modalifier, {
			Window = Instance.new("Frame")
		})

		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)
end
