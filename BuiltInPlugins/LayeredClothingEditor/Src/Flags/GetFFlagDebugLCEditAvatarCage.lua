local Plugin = script.Parent.Parent.Parent
local GetAccessoryToolEngineFeature = require(Plugin.Src.Flags.GetAccessoryToolEngineFeature)

return function()
	-- StudioService does not exist in CLI, so this could cause problems for PluginTests, wrap in a pcall
	local success, result = pcall(function()
		local StudioService = game:GetService("StudioService")
		return game:GetFastFlag("DebugLCEditAvatarCage") and StudioService:HasInternalPermission()
	end)
	if success and GetAccessoryToolEngineFeature() then
		return result
	end
	return false
end