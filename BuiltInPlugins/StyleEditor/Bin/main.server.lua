if not plugin then
	return
end

require(script.Parent.defineLuaFlags)

local commonInit = require(script.Parent.commonInit)
commonInit()

local main = script.Parent.Parent

local TestLoader = require(main.Packages.TestLoader)

TestLoader.launch("StyleEditor", main.Src)
if TestLoader.isCli() or not TestLoader.hasInternalPermission() then
	return
end

if not game:GetFastFlag("EnableStyleEditor") then
	return
end

local React = require(main.Packages.React)
local ReactRoblox = require(main.Packages.ReactRoblox)
local Framework = require(main.Packages.Framework)

local MainPlugin = require(main.Src.MainPlugin)
local root

-- Allows connecton to the Developer Inspector for internal engineers
local inspector
if TestLoader.hasInternalPermission() then
	inspector = Framework.DeveloperTools.forPlugin(main.Name, plugin)
end

local function init()
	plugin.Name = main.Name

	local mainPlugin = React.createElement(MainPlugin, {
		Plugin = plugin,
	})

	root = ReactRoblox.createRoot(Instance.new("Frame"))
	root:render(mainPlugin)

	if inspector then
		inspector:addRoactTree("Roact tree", root)
	end
end

plugin.Unloading:Connect(function()
	if inspector then
		inspector:destroy()
	end

	if root then
		root:render(nil)
	end
end)

init()
