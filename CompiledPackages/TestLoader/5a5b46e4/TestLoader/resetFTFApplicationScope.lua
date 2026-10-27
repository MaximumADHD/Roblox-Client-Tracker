--!strict
-- Utility function to reset the application scope for FeatureTest
-- This function destroys all components from the LifeCycleManager in a blocking manner, including FTFUtil!
-- It is a useful function for testers to reset components between tests.
local plugin = script:FindFirstAncestorWhichIsA("Plugin") :: Plugin

local function resetApplicationScope()
	local thread = coroutine.running()
	local FTFUtil = plugin:GetPluginComponent("FTFUtil")
	task.defer(function()
		FTFUtil:ResetApplicationScopeAsync(function(result)
			assert(coroutine.status(thread) == "suspended", "not suspended!")
			coroutine.resume(thread, result)
		end)
	end)
	coroutine.yield()
end

return resetApplicationScope
