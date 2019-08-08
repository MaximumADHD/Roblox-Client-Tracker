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

-- TODO (awarwick) 7/26/2019 Return this data from a mock SandboxService
local draftMetadata = {}
local draftList = {}
for i=1,10 do
    local id = {}

    draftMetadata[id] = { Text = "Test"..i, ClassName = "Script" }
    draftList[i] = id
end

function MainView:render()
    -- TODO (awarwick) 7/26/2019 Store this data in the rodux store
    local draftList = draftList
    local draftMetadata = draftMetadata

    return withTheme(function(theme)
        return Roact.createElement("Frame", {
            BackgroundColor3 = theme.BackgroundColor,
            Size = UDim2.new(1, 0, 1, 0),
        }, {
            ScriptList = Roact.createElement(SandboxListView, {
                Size = UDim2.new(1,0,1,0),

                DraftList = draftList,
                DraftMetadata = draftMetadata,
            }),
        })
    end)
end

return MainView