--[[
	Developer Storybook main script.
	Mounts and unmounts the Roact tree.
]]
local Main = script.Parent.Parent

require(script.Parent.defineLuaFlags)

local commonInit = require(Main.Src.Util.commonInit)
commonInit()

local TestLoader = require(Main.Packages.TestLoader)
TestLoader.launch("DeveloperStorybook", Main.Src)
if TestLoader.isCli() or not TestLoader.hasInternalPermission() then
	return
end

local Roact = require(Main.Packages.Roact)
local MainPlugin = require(Main.Src.MainPlugin)
local handle

local inspector

local function init()
	plugin.Name = Main.Name

	local mainPlugin = Roact.createElement(MainPlugin, {
		Plugin = plugin,
	})

	handle = Roact.mount(mainPlugin)

	local Framework = require(Main.Packages.Framework)
	inspector = Framework.DeveloperTools.forPlugin("DeveloperStorybook", plugin)
	inspector:addRoactTree("Roact tree", handle)
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
