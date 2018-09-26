local CorePackages = game:GetService("CorePackages")

return function()
	local Roact = require(CorePackages.Roact)
	local PlayerLocaleView = require(script.Parent.Parent.Components.PlayerLocaleView)

	itFIXME("mounts and unmounts", function()
		-- With --fflags==true throws error: Studio is not a valid member of GlobalSettings
		local element = Roact.createElement(PlayerLocaleView)
		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)
end
