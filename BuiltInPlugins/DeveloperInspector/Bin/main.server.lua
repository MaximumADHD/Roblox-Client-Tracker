--[[
	Mounts and unmounts the Roact tree.
]]

if not plugin then
	return
end

require(script.Parent.defineFlags)

if not settings():GetFFlag("EnableRoactInspector") or not game:GetService("StudioService"):HasInternalPermission() then
	return
end

local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)

local DebugFlags = require(main.Src.Util.DebugFlags)
if DebugFlags.RunningUnderCLI() then
	return
end

local commonInit = require(main.Src.Util.commonInit)
commonInit()

local MainPlugin = require(main.Src.MainPlugin)
local handle

-- Better track errors in Roact components
Roact.setGlobalConfig({
	typeChecks = true,
	propValidation = true,
	elementTracing = true,
})

local function init()
	plugin.Name = "DeveloperInspector"

	local mainPlugin = Roact.createElement(MainPlugin, {
		Plugin = plugin
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
