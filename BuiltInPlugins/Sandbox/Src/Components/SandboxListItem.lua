--[[
    The sandbox list item displayed in the list view.

    Props:
    Text - text displayed in the item
    TextColor3 - text color of text in the item
    TextSize - size of text in the item
    Font - font of the text in the item
--]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local SandboxListItem = Roact.PureComponent:extend("SandboxListItem")

function SandboxListItem:render()
    local text = self.props.Text
    local textColor3 = self.props.TextColor3
    local textSize = self.props.TextSize
    local font = self.props.Font

    return Roact.createElement("TextLabel", {
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,

        Text = ".../"..text,
        TextXAlignment = Enum.TextXAlignment.Left,

        TextColor3 = textColor3,
        Font = font,
        TextSize = textSize,
    }, {
        UIPadding = Roact.createElement("UIPadding", {
            PaddingLeft = UDim.new(0, 8),
        })
    })

end

return SandboxListItem