--[[
	Event Emulator main script.
	Mounts and unmounts the Roact tree.
]]

if not (game:GetService("StudioService"):HasInternalPermission()) then
	return
end

require(script.Parent.defineLuaFlags)

local FFlagPluginDockWidgetsUseNonTranslatedIds = game:GetFastFlag("PluginDockWidgetsUseNonTranslatedIds")

local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)

local RefactorFlags = require(main.Packages._Index.DeveloperFramework.DeveloperFramework.Util.RefactorFlags)
RefactorFlags.THEME_REFACTOR = true

local MainPlugin = require(main.Src.MainPlugin)
local handle

local function init()
	plugin.Name = FFlagPluginDockWidgetsUseNonTranslatedIds and main.Name or "Event Emulator"

	local mainPlugin = Roact.createElement(MainPlugin, {
		Plugin = plugin,
		ClickableWhenViewportHidden = true,
	})

	handle = Roact.mount(mainPlugin)
end

plugin.Unloading:Connect(function()
	if handle then
		Roact.unmount(handle)
		handle = nil
	end
end)

init()
