--[[
	Event Emulator main script.
	Mounts and unmounts the Roact tree.
]]

if not (game:GetService("StudioService"):HasInternalPermission()) then
	return
end

require(script.Parent.defineLuaFlags)
local FFlagEnableEventEmulatorStylizer = game:GetFastFlag("EnableEventEmulatorStylizer")

local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)

local RefactorFlags = require(main.Packages.Framework.Util.RefactorFlags)
RefactorFlags.THEME_REFACTOR = FFlagEnableEventEmulatorStylizer

local MainPlugin = require(main.Src.MainPlugin)
local handle

local function init()
	plugin.Name = "Event Emulator"

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
