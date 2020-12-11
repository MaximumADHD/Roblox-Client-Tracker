--[[
	Mounts and unmounts the Roact tree.
]]

-- Fast flags
require(script.Parent.defineLuaFlags)
local FFlagEnableLocalizationToolsStylizer = game:GetFastFlag("EnableLocalizationToolsStylizer")
local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)

local RefactorFlags = require(main.Packages.Framework.Util.RefactorFlags)
RefactorFlags.THEME_REFACTOR = FFlagEnableLocalizationToolsStylizer

local MainPlugin = require(main.Src.MainPlugin)
local handle

local function init()
	plugin.Name = "LocalizationTools"

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
