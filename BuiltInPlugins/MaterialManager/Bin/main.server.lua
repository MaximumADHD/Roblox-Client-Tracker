if not plugin then
	return
end

local main = script.Parent.Parent

-- TODO DEVTOOLS-4481: The DevFramework Flags util has a bug triggers the assert for missing
-- flags in NoOpt/Debug. When that is fixed this template should be updated to use it.
require(script.Parent.defineLuaFlags)

local ok, hasInternalPermission = pcall(function()
	return game:GetService("StudioService"):HasInternalPermission()
end)

local getFFlagEnableMaterialManager = require(main.Src.Flags.getFFlagEnableMaterialManager)
if not getFFlagEnableMaterialManager() then
	return
end

local commonInit = require(script.Parent.commonInit)
commonInit()

local TestLoader = require(main.Packages.TestLoader)
TestLoader.launch(main.Name, main.Src)
if TestLoader.isCli() then
     return
end

local Roact = require(main.Packages.Roact)
local Framework = require(main.Packages.Framework)

local MainPlugin = require(main.Src.MainPlugin)
local handle

-- Allows connecton to the Developer Inspector for internal engineers
local inspector
if ok and hasInternalPermission then
	inspector = Framework.DeveloperTools.forPlugin(main.Name, plugin)
end

local function init()
	plugin.Name = main.Name

	local mainPlugin = Roact.createElement(MainPlugin, {
		Plugin = plugin,
	})

	handle = Roact.mount(mainPlugin)

	if inspector then
		inspector:addRoactTree("Roact tree", handle)
	end
end

plugin.Unloading:Connect(function()
	if inspector then
		inspector:destroy()
	end

	if handle then
		Roact.unmount(handle)
		handle = nil
	end
end)

init()
