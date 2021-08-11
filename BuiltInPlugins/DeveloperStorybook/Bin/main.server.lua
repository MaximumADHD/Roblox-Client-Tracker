--[[
	Developer Storybook main script.
	Mounts and unmounts the Roact tree.
]]
local Main = script.Parent.Parent

require(script.Parent.defineLuaFlags)
local FFlagEnableRoactInspector = game:GetFastFlag("EnableRoactInspector")

local DebugFlags = require(Main.Src.Util.DebugFlags)
if DebugFlags.RunningUnderCLI() then
	return
end

if not game:GetService("StudioService"):HasInternalPermission() then	
	return
end

local commonInit = require(Main.Src.Util.commonInit)
commonInit()

local Roact = require(Main.Packages.Roact)
local MainPlugin = require(Main.Src.MainPlugin)
local handle

local inspector

local function init()
	plugin.Name = "Developer Storybook"
	
	local mainPlugin = Roact.createElement(MainPlugin, {
		Plugin = plugin,
	})

	handle = Roact.mount(mainPlugin)

	if FFlagEnableRoactInspector then
		local Framework = require(Main.Packages.Framework)
		inspector = Framework.DeveloperTools.forPlugin("DeveloperStorybook", plugin)
		inspector:addRoactTree("Roact tree", handle)
	end

end

plugin.Unloading:Connect(function()
	if handle then
		Roact.unmount(handle)
		handle = nil
	end
	if inspector then
		inspector:destroy()
	end
end)

init()
