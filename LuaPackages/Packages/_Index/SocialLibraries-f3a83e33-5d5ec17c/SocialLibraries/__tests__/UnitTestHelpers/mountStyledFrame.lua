-- ! Consider using `mountFrame.lua` instead
local dependencies = require(script.Parent.Parent.Parent.dependencies)
local Roact = dependencies.Roact

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
