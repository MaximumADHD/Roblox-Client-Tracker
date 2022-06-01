--[[
	Performs common initialisation for DeveloperInspector at most once.
]]
local commonInitCalled = false

return function()
	if commonInitCalled then
		return
	end
	commonInitCalled = true
end
