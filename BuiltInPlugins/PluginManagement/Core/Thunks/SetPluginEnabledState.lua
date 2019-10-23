local Plugin = script.Parent.Parent.Parent
local StudioService = game:GetService("StudioService")
local SetPluginEnabledState = require(Plugin.Core.Actions.SetPluginEnabledState)

return function(plugin, enabled)
	return function(store)
		local assetId = plugin.assetId
		StudioService:SetPluginEnabled(assetId, enabled)
		store:dispatch(SetPluginEnabledState(assetId, enabled))
	end
end