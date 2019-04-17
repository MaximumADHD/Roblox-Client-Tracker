local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent
local EmotesMenu = Components.Parent

local Constants = require(EmotesMenu.Constants)

local SlotNumbers = Roact.PureComponent:extend("SlotNumbers")

function SlotNumbers:render()
    local LayoutConstants = Constants.Layouts[self.props.layout]

    local slotNumbers = {}

    for slotIndex = 1, Constants.EmotesPerPage do
        local angle = (360 / Constants.EmotesPerPage) * (slotIndex - 1) + Constants.SegmentsStartRotation
        local radius = Constants.InnerCircleSizeRatio / 2

        local numberSize = Constants.SlotNumberSize
        local numberPadding = numberSize / 2

        local cos = math.cos(math.rad(angle))
        local xRadiusPos = radius * cos

        local xPadding = numberPadding * cos
        local xPos = 0.5 + xRadiusPos + xPadding

        local sin = math.sin(math.rad(angle))
        local yRadiusPos = radius * sin

        local yPadding = numberPadding * sin
        local yPos = 0.5 + yRadiusPos + yPadding

        slotNumbers[slotIndex] = Roact.createElement("TextLabel", {
            AnchorPoint = Vector2.new(0.5, 0.5),
            Position = UDim2.new(xPos, 0, yPos, 0),
            Size = UDim2.new(numberSize, 0, numberSize, 0),
            BackgroundTransparency = 1,
            TextScaled = true,
            TextSize = LayoutConstants.SlotNumberTextSize,
            TextColor3 = Constants.Colors.White,
            Text = slotIndex,
            Font = LayoutConstants.SlotNumberFont,
            ZIndex = 2, -- TODO: Remove with Sibling ZIndex
        }, {
            TextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
                MaxTextSize = LayoutConstants.SlotNumberTextSize,
            }),
        })
    end

    return Roact.createElement("Frame", {
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
    }, slotNumbers)
end

local function mapStateToProps(state)
    return {
        layout = state.layout,
    }
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(SlotNumbers)