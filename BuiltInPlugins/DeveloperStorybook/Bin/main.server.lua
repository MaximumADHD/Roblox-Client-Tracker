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

local inspector = nil
-- local DeveloperTools = require(Main.Packages.Dev.DeveloperTools)
-- local ReactDevtoolsExtensions = require(Main.Packages.Dev.ReactDevtoolsExtensions)
-- inspector = DeveloperTools.forPlugin("DeveloperStorybook", plugin)
-- inspector:initRoact(ReactDevtoolsExtensions)

local React = require(Main.Packages.React)
local ReactRoblox = require(Main.Packages.ReactRoblox)
local MainPlugin = require(Main.Src.MainPlugin)
local root

local function init()
	plugin.Name = Main.Name

	local mainPlugin = React.createElement(MainPlugin, {
		Plugin = plugin,
	})

	root = ReactRoblox.createRoot(Instance.new("Frame"))
	root:render(mainPlugin)
end

plugin.Unloading:Connect(function()
	if root then
		root:render(nil)
		root = nil
	end
	if inspector then
		inspector:destroy()
	end
end)

init()
