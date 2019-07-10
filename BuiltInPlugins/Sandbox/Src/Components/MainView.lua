--[[
	The main view.

    For now it will only contain the list view. We will most likely later add
    buttons below the list view.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local SandboxListView = require(Plugin.Src.Components.SandboxListView)

local MainView = Roact.Component:extend("MainView")

function MainView:render()
    return Roact.createElement(SandboxListView, {
    })
end

return MainView