local AssetManagerPolicy = game:GetService("PluginPolicyService"):getPluginPolicy("AssetManager")
local hasInternalPermission = require(script.Parent.hasInternalPermission)

local AssetManagerUtilities =  {}

--[[
	Three checks we are doing to determine if we should enable audio import

	Will return true when:
		1. Luobu Audio import flag is off and we are using Global studio
		2. Luobu Audio import flag is on and GUAC flag is off
		3. GUAC flag is on and we query GUAC to see if audio import is enabled

	Once ALL flags are removed, it will leave us with just AssetManagerPolicy["EnableAudioImport"]
]]--

function AssetManagerUtilities.shouldEnableAudioImport()
	return AssetManagerPolicy["EnableAudioImport"]
end

function AssetManagerUtilities.enableAudioImport()
	return AssetManagerUtilities.shouldEnableAudioImport()
end

function AssetManagerUtilities.shouldEnableVideoImport()
	-- TODO: Use policy when roll out to public.
	-- return AssetManagerPolicy["EnableVideoImport"]
	return hasInternalPermission()
end

function AssetManagerUtilities.enableVideoImport()
	return AssetManagerUtilities.shouldEnableVideoImport()
end

--[[
	EnableBadgesCallout will return true if :
		querying GUAC for 'ShowBadges' yields true
]]--

function AssetManagerUtilities.enableBadgesCallout()
	return AssetManagerPolicy["ShowBadges"]
end

return AssetManagerUtilities
