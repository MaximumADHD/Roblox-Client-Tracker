game:DefineFastFlag("DebugExtendAnimationLimit", false)

return function()
	-- StudioService does not exist in CLI, so this could cause problems for PluginTests, wrap in a pcall
	local success, result = pcall(function()
		local StudioService = game:GetService("StudioService")
		return game:GetFastFlag("DebugExtendAnimationLimit") and StudioService:HasInternalPermission()
	end)
	if success then
		return result
	end
	return false
end