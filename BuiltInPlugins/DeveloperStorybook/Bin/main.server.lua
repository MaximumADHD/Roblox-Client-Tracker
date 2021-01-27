--[[
	Developer Storybook main script.
	Mounts and unmounts the Roact tree.
]]
local Plugin = script.Parent.Parent

require(script.Parent.defineLuaFlags)
local FFlagEnableDeveloperStorybook = game:GetFastFlag("EnableDeveloperStorybook")

local DebugFlags = require(Plugin.Src.Util.DebugFlags)
if DebugFlags.RunningUnderCLI() then
	return
end

if not game:GetService("StudioService"):HasInternalPermission() then
	return
end
if not FFlagEnableDeveloperStorybook then
	return
end

local commonInit = require(Plugin.Src.Util.commonInit)
commonInit()

local Roact = require(Plugin.Packages.Roact)
local MainPlugin = require(Plugin.Src.MainPlugin)
local handle

local function init()
	plugin.Name = "Developer Storybook"
	

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
