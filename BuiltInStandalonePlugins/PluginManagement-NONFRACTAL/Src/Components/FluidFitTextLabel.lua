local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local FitFrame = require(Plugin.Packages.FitFrame)

local FitFrameVertical = FitFrame.FitFrameVertical
local FitTextLabel = FitFrame.FitTextLabel

local FluidFitTextLabel = Roact.Component:extend("FluidFitTextLabel")

function FluidFitTextLabel:init()
    self.state = {
        frameWidth = 0,
    }

    self.resizeContainer = function(rbx)
        if self.state.frameWidth ~= rbx.AbsoluteSize.X then
            self:setState({
                frameWidth = rbx.AbsoluteSize.X,
            })
        end
    end
end

function FluidFitTextLabel:render()
    local layoutOrder = self.props.LayoutOrder

    local props = Cryo.Dictionary.join(self.props, {
        maximumWidth = self.state.frameWidth,
        width = UDim.new(1, 0),
    })

    return Roact.createElement(FitFrameVertical, {
        BackgroundTransparency = 1,
        LayoutOrder = layoutOrder,
        width = UDim.new(1, 0),
        [Roact.Change.AbsoluteSize] = self.resizeContainer,
    }, {
        Text = Roact.createElement(FitTextLabel, props)
    })
end

return FluidFitTextLabel
