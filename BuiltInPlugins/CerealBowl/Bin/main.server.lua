local Main = script.Parent.Parent

local FFlagEnableCerealBowl = game:GetFastFlag("EnableCerealBowl")

if not game:GetService("StudioService"):HasInternalPermission() then
	return
end
if not FFlagEnableCerealBowl then
	return
end

local commonInit = require(script.Parent.commonInit)
commonInit()

local Roact = require(Main.Packages.Roact)
local MainPlugin = require(Main.Src.MainPlugin)
local handle

local function init()
	plugin.Name = "Cereal Bowl"

	local mainPlugin = Roact.createElement(MainPlugin, {
		plugin = plugin,
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
