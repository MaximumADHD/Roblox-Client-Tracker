if game:DefineFastFlag("GetPluginParentInternalFix", false) then
	return script:FindFirstAncestorWhichIsA("Plugin"):FindFirstChild("Packages", true).Parent
else
	local Main = script.Parent
	local Plugin = Main:FindFirstAncestorWhichIsA("Plugin"):FindFirstChildWhichIsA("Folder")
	if Plugin == nil then
		-- if there is an init.lua file in the folder than it becomes a modulescript even if you `"$className": "Folder",` it in the rbxp file...
		Plugin = Main:FindFirstAncestorWhichIsA("Plugin"):FindFirstChildWhichIsA("ModuleScript")
	end
	-- MEGA HACK to handle awkward redirect in AssetSettings/test.rbxp TODO REMOVE https://roblox.atlassian.net/browse/STUDIOPLAT-39758
	if Plugin:FindFirstChild("Packages") == nil then
		Plugin = Plugin:FindFirstChild("Packages", true).Parent
	end
	return Plugin
end
