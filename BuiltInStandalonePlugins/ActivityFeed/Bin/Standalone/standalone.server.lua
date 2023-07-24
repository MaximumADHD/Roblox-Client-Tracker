--[[
	Entry point for the plugin instance created in the "standalone" datamodel:
	eg. Edit, Play (Client), and Play (Server).

	For plugins with UI instances, state, or cross-dm functions, those instances
	should be created here.

	New Plugin Setup: Change all instances of "ActivityFeed" to the
		name of your plugin (incl. csv, .config, and rbxp file)

	**** NOTE: In the rbxp file, the name of the rbxm that is defined in
		"projectFileMap" must be the same as the name of the folder
--]]

-- TODO New Plugin Setup: Uncomment this line if the plugin is meant to be internal-only
--[[
if not game:GetService("StudioService"):HasInternalPermission() then
	return
end
]]

local Common = script.Parent.Parent.Common
require(Common.defineLuaFlags)

if not plugin then
	return
end

local main = script.Parent.Parent.Parent

local commonInit = require(Common.commonInit)
commonInit()

local TestLoader = require(main.Packages.TestLoader)
if TestLoader.isCli() then
	return
end

if not game:GetFastFlag("COLLAB4260ActivityFeed") then
	return
end

local handle = Instance.new("Frame")
local inspector = nil
-- Uncomment to debug your plugin with Developer Inspector
--[[
if TestLoader.hasInternalPermission() then
	-- local DeveloperTools = require(Main.Packages.Dev.DeveloperTools)
	-- local ReactDevtoolsExtensions = require(Main.Packages.Dev.ReactDevtoolsExtensions)
	-- inspector = DeveloperTools.forStandalonePlugin("ActivityFeed", plugin, {
			rootInstance = handle,
			rootPrefix = { "ActivityFeedGui" },
		})
	-- inspector:initRoact(ReactDevtoolsExtensions)
end
]]

local React = require(main.Packages.React)
local ReactRoblox = require(main.Packages.ReactRoblox)

local MainPlugin = require(main.Src.MainPlugin)

local root

local function init()
	plugin.Name = main.Name

	local mainPlugin = React.createElement(MainPlugin, {
		Plugin = plugin,
	})
	root = ReactRoblox.createRoot(handle)
	root:render(mainPlugin)
end

plugin.Unloading:Connect(function()
	if inspector then
		inspector:destroy()
	end

	if root then
		root:render(nil)
		root = nil
	end
end)

init()
