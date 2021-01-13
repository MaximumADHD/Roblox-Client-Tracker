local Plugin = script.Parent.Parent
local DebugFlags = require(Plugin.Src.Util.DebugFlags)
local GetFFlagUseDeveloperFrameworkMigratedSrc = require(Plugin.LuaFlags.GetFFlagUseDeveloperFrameworkMigratedSrc)
local Roact = require(Plugin.Packages.Roact)
local RoactDeprecated = require(Plugin.Roact)
local AnimationClipEditorPlugin = require(Plugin.Src.Components.AnimationClipEditorPlugin)
local AnimationClipEditorPluginDeprecated =  require(Plugin.SrcDeprecated.Components.AnimationClipEditorPlugin)

-- Set THEME_REFACTOR in the DevFramework to false
local RefactorFlags = require(Plugin.Packages.Framework.Util.RefactorFlags)
RefactorFlags.THEME_REFACTOR = false


if DebugFlags.RunTests() or DebugFlags.RunRhodiumTests() then
	return
end


local handle = nil

local function init()
	if GetFFlagUseDeveloperFrameworkMigratedSrc() then 
		local mainPlugin = Roact.createElement(AnimationClipEditorPlugin, {
			plugin = plugin,
		})

		handle = Roact.mount(mainPlugin)
	else 
		local mainPlugin = RoactDeprecated.createElement(AnimationClipEditorPluginDeprecated, {
			plugin = plugin,
		})

		handle = RoactDeprecated.mount(mainPlugin)
	end

end

plugin.Unloading:Connect(function()
	if handle then
		if GetFFlagUseDeveloperFrameworkMigratedSrc() then 
			Roact.unmount(handle)
		else 
			RoactDeprecated.unmount(handle)
		end
	end
end)

init()