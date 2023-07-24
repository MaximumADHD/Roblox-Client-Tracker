--[[
	Performs common initialisation for plugin at most once.
]]
local commonInitCalled = false

return function()
	if commonInitCalled then
		return
	end
	commonInitCalled = true

	-- TODO Write code here which should be initialized in both the asset and standalone models
end
