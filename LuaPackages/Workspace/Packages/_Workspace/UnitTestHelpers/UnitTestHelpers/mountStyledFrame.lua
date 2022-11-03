--!nonstrict
-- ! Consider using `mountFrame.lua` instead
local Root = script.Parent
local Packages = Root.Parent
local Roact = require(Packages.Roact)

local mockProviders = require(script.Parent.mockProviders)

return function(element, frame)
	if frame == nil then
		frame = Instance.new("Frame")
	end
	local tree = mockProviders(element)

	local handle = Roact.mount(tree, frame)
	return frame, function()
		Roact.unmount(handle)
		frame:Destroy()
	end
end
