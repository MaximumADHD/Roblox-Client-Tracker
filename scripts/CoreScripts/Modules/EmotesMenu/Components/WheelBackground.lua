local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent
local EmotesMenu = Components.Parent

local Constants = require(EmotesMenu.Constants)
local SelectionGradient = require(Components.SelectionGradient)
local SelectionEffect = require(Components.SelectionEffect)
local WheelText = require(Components.WheelText)

local WheelBackground = Roact.PureComponent:extend("WheelBackground")

function WheelBackground:render()
    local LayoutConstants = Constants.Layouts[self.props.layout]

    return Roact.createElement("Folder", {}, {
        BackgroundGradient = Roact.createElement("Frame", {
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 1, 0),
            ZIndex = 1,
        }, {
            SelectionGradient = Roact.createElement(SelectionGradient)
        }),

        BackgroundImage = Roact.createElement("ImageLabel", {
            AnchorPoint = Vector2.new(0.5, 0.5),
            Size = UDim2.new(1, 0, 1, 0),
            Position = UDim2.new(0.5, 0, 0.5, 0),
            BackgroundTransparency = 1,
            Image = LayoutConstants.SegmentedCircle,
            ZIndex = 2,
        }),

        Selection = Roact.createElement("Frame", {
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 1, 0),
            ZIndex = 3,
        }, {
            SelectionEffect = Roact.createElement(SelectionEffect),
        }),

        BackgroundText = Roact.createElement("Frame", {
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 1, 0),
            ZIndex = 3,
        }, {
            MiddleText = Roact.createElement(WheelText),
        }),
    })
end

local function mapStateToProps(state)
    return {
        layout = state.layout,
    }
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(WheelBackground)