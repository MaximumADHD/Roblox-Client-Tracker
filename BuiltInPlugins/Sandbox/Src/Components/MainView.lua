--[[
	The main view.

    For now it will only contain the list view. We will most likely later add
    buttons below the list view.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local withTheme = require(Plugin.Src.ContextServices.Theming).withTheme

local SandboxListView = require(Plugin.Src.Components.SandboxListView)

local MainView = Roact.Component:extend("MainView")

function MainView:render()
    return withTheme(function(theme)
        return Roact.createElement("Frame", {
            BackgroundColor3 = theme.BackgroundColor,
            Size = UDim2.new(1, 0, 1, 0),
        }, {
            ScriptList = Roact.createElement(SandboxListView, {

            }),
        })
    end)
end

return MainView