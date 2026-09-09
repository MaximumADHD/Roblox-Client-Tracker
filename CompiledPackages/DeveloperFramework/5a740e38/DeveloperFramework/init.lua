local standardFramework = {
	ContextServices = require(script.ContextServices),
	-- Reference Dash installed as a peer package to DF. Type cast silence the error
	Dash = require(script.Parent.Dash :: unknown),
	DeveloperTools = if script.Parent:FindFirstChild("DeveloperTools")
		then require((script.Parent :: any)["DeveloperTools"])
		else nil,
	Http = require(script.Http),
	Resources = require(script.Resources),
	RobloxAPI = require(script.RobloxAPI),
	SharedFlags = require(script.SharedFlags),
	Style = require(script.Style),
	Styling = require(script.Styling),
	TestHelpers = require(script.TestHelpers),
	UI = require(script.UI),
	Url = require(script.RobloxAPI.Url),
	Util = require(script.Util),
	UIData = require(script.UI.Components.UIFolderData),
	Wrappers = require(script.Wrappers),
}

type FrameworkType = typeof(standardFramework)

-- Check if DeveloperFramework is being loaded internally to a plugin and use the SDK copy if available
if
	game:GetFastFlag("DebugDeveloperFrameworkSdk")
	and not script.Parent:FindFirstChild("DeveloperFramework_Replaced")
	and game:GetService("StudioService"):HasInternalPermission()
then
	local StudioSdkService = game:GetService("StudioSdkService")
	-- StudioSdkService can't be called inside the game, e.g. for embedded storybook
	local ok, Sdk = pcall(function()
		return StudioSdkService:GetSdk() :: FrameworkType
	end)
	if ok and Sdk then
		local SdkDevFramework = Sdk:FindFirstChild("DeveloperFramework")
		-- Replace the plugin's copy
		if SdkDevFramework then
			script.Name = "DeveloperFramework_Replaced"
			SdkDevFramework.Parent = script.Parent
			local Plugin = script:FindFirstAncestorWhichIsA("Plugin")
			if Plugin then
				print(`[DebugDeveloperFrameworkSdk] Hot loading DeveloperFramework for plugin {Plugin.Name}`)
			else
				print("[DebugDeveloperFrameworkSdk] Hot loading DeveloperFramework")
			end
			return require(SdkDevFramework) :: FrameworkType
		end
	end
end

local strict = require(script.Util.strict)

return strict(standardFramework) :: FrameworkType
