--[[
    The sandbox list item displayed in the list view.
--]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local SandboxListItem = Roact.PureComponent:extend("SandboxListItem")

function SandboxListItem:render()
    local text = self.props.Text
    local layoutOrder = self.props.LayoutOrder

    -- TODO: (mmcdonnell 6/21/2019) Add tooltips. See CLISTUDIO-19341
    -- TODO: (mmcdonnell 6/21/2019) Add status icons. See CLISTUDIO-19529
    -- TODO: (mmcdonnell 6/21/2019) Style the list item. See CLISTUDIO-19530
    return Roact.createElement("TextLabel", {
        LayoutOrder = layoutOrder,
        Size = UDim2.new(1, 0, 0, 40),
        Text = text,
    })
end

return SandboxListItem