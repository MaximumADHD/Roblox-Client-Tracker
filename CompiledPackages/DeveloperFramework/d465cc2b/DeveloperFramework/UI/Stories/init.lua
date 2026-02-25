--[[
    Provides helpers to create stories unique to a particular plugin.
]]
return {
	-- This is lazily required
	getStoryMiddleware = function()
		return require(script.StoryMiddleware)
	end,
}
