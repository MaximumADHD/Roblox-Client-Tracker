--[[
	DevFramework Companion main script.
	Mounts and unmounts the Roact tree.
]]

local FFlagDebugEnableDevFrameworkCompanion = game:DefineFastFlag("DebugEnableDevFrameworkCompanion", false)

local Plugin = script.Parent.Parent

local DebugFlags = require(Plugin.Src.Util.DebugFlags)
if DebugFlags.RunningUnderCLI() then
	return
end

if not game:GetService("StudioService"):HasInternalPermission() and not FFlagDebugEnableDevFrameworkCompanion then
	return
end

local commonInit = require(Plugin.Src.Util.commonInit)
commonInit()

local Roact = require(Plugin.Packages.Roact)
local MainPlugin = require(Plugin.Src.MainPlugin)
local handle

local function init()
	plugin.Name = "DevFramework Companion"

	local mainPlugin = Roact.createElement(MainPlugin, {
		Plugin = plugin,
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
