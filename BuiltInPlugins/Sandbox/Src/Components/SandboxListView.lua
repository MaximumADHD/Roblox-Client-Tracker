--[[
    The sandbox list view that displays the list items.

    Used https://roblox.github.io/roact/performance/reduce-reconciliation/ as a
    reference.
--]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local createFitToContent = require(Plugin.Packages.UILibrary.Components.createFitToContent)

local SandboxListItem = require(Plugin.Src.Components.SandboxListItem)

local SandboxListView = Roact.Component:extend("SandboxListView")

local FitToContent = createFitToContent("Frame", "UIListLayout", {
    -- TODO: (mmcdonnell 6/21/2019) Style the list. See CLISTUDIO-19530
    SortOrder = Enum.SortOrder.LayoutOrder,
    FillDirection = Enum.FillDirection.Vertical,
})

function SandboxListView:init()
    -- In init, we can use setState to set up our initial component state.
    self:setState({
        items = {}
    })
end

function SandboxListView:didMount()
    -- TODO: Connect to SandboxService and get values from it. See CLISTUDIO-19337
    self:setState(function(state)
        local items = state.items
        state.items[1] = { text = "foo" }
        state.items[2] = { text = "bar" }
        return items
    end)
end

function SandboxListView:render()
    -- The list view contains a list of items
    local items = self.state.items

    local itemList = {}
    for i, item in ipairs(items) do
        -- Add the element to our list
        itemList[i] = Roact.createElement(SandboxListItem, {
            layoutOrder = i,
            text = item.text,
        })
    end
    -- TODO: (mmcdonnell 6/21/2019) Show a label with "Empty" if there are no items. See CLISTUDIO-19329

    -- The SandboxListView renders a frame containing the list of SandboxListItem as children

    return Roact.createElement(FitToContent, {
        -- TODO: (mmcdonnell 6/21/2019) Style the list. See CLISTUDIO-19530
    }, itemList)
end

return SandboxListView