--[[
	Mounts and unmounts the Roact tree.
	Listens to GuiService signal Open9SliceEditor that is sent when
	SliceCenter"..." button is pressed to open the 9SliceEditor window.
]]

if not plugin then
	return
end

-- TODO DEVTOOLS-4481: The DevFramework Flags util has a bug triggers the assert for missing
-- flags in NoOpt/Debug. When that is fixed this template should be updated to use it.
require(script.Parent.defineFlags)

local FFlagEnable9SliceEditor = game:GetFastFlag("Enable9SliceEditor")
local FFlagDevFrameworkAddEnumerateToUtil = game:GetFastFlag("DevFrameworkAddEnumerateToUtil")

local ok, hasInternalPermission = pcall(function()
	return game:GetService("StudioService"):HasInternalPermission()
end)

if not ok or not hasInternalPermission then
	return
end

if not (FFlagEnable9SliceEditor and FFlagDevFrameworkAddEnumerateToUtil) then
	return
end

local commonInit = require(script.Parent.commonInit)
commonInit()

local GuiService = game:GetService("GuiService")

local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)
local Framework = require(main.Packages.Framework)

local MouseCursorUtil = require(main.Src.Util.MouseCursorUtil)
local MainPlugin = require(main.Src.MainPlugin)

-- Allows connecton to the Developer Inspector for internal engineers
local inspector
local handle, mainPlugin

if hasInternalPermission then
	inspector = Framework.DeveloperTools.forPlugin(main.Name, plugin)
end

local function init()
	plugin.Name = "9-Slice Editor"
	MouseCursorUtil.setPluginObject(plugin)
end

local function resetPluginHandle()
	-- set mainPlugin handle back to nil to signal no window open
	mainPlugin = nil
end

local function openPluginWindow(selectedInstance, pixelSize)
	--[[
		Initializes and populates the plugin popup window
		with the selectedInstance and image size
	]]--
	if mainPlugin then
		-- if there's already a window open, do nothing
		return
	end

	mainPlugin = Roact.createElement(MainPlugin, {
		Plugin = plugin,
		selectedObject = selectedInstance,
		pixelDimensions = pixelSize,
		resetPluginHandle = resetPluginHandle,
	})
	handle = Roact.mount(mainPlugin)

	if inspector and hasInternalPermission then
		inspector:addRoactTree("Roact tree", handle)
	end

	MouseCursorUtil.resetMouseCursor() -- set mouse cursor to default arrow
end

-- listen for when SliceCenter "..." button is pressed
GuiService.Open9SliceEditor:Connect(openPluginWindow)

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
