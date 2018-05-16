--[[
		Creates a Roact component provides a left and a right view
		Props:
            Bias : number (0 - 1) - The bias for the size of left view vs the right view
            LeftView : Roact.Component - The left roact element that will be a child of the SplitView
            RightView : Roact.Component - The right roact element that will be a child of the SplitView
            Divider : Roact.Component - The divide roact element that will divide the two sides.
]]
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)


local SplitViewLR = Roact.Component:extend("SplitViewLR")

function SplitViewLR:init()
end

function SplitViewLR:render()
    local props = self.props
    local bias = props.Bias
    self.leftView = props.LeftView
    self.rightView = props.RightView
    self.divider = props.Divider

    return Roact.createElement("Frame",{
        Size = UDim2.new(1,0,1,0),
        BackgroundTransparency = 1
    },{
        LeftFrame = Roact.createElement("Frame",{
            Size = UDim2.new(bias,0,1,0),
            Position = UDim2.new(0,0,0,0),

            BackgroundTransparency = 1
        },{self.leftView}),
        Divider = Roact.createElement("Frame",{
            Size = UDim2.new(0,0,0,0),
            Position = UDim2.new(bias,0,0,0),
            BackgroundTransparency = 1
        },{self.divider}),
        RightFrame = Roact.createElement("Frame",{
            Size = UDim2.new(1-bias,0,1,0),
            Position = UDim2.new(bias,0,0,0),

            BackgroundTransparency = 1
        },{self.rightView}),
    })
end

return SplitViewLR