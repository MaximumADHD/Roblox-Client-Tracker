--[[
	Performs common initialisation for DeveloperStorybook at most once.
]]
local commonInitCalled = false

return function()
	if commonInitCalled then
		return
	end
	commonInitCalled = true
end
