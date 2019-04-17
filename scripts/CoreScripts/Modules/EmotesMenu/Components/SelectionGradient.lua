local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent
local EmotesMenu = Components.Parent

local Constants = require(EmotesMenu.Constants)

local SelectionGradient = Roact.PureComponent:extend("SelectionGradient")

function SelectionGradient:render()
    local LayoutConstants = Constants.Layouts[self.props.layout]

    local focusedIndex = self.props.emotesWheel.focusedSegmentIndex
    local angle = (360 / Constants.EmotesPerPage) * (focusedIndex - 1) + Constants.SegmentsStartRotation

    return Roact.createElement("Frame", {
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Rotation = angle,
        Visible = focusedIndex ~= 0,
    }, {
        SelectedGradient = Roact.createElement("ImageLabel", {
            AnchorPoint = Vector2.new(0, 0.5),
            Position = UDim2.new(0.5, 0, 0.5, 0),
            Size = UDim2.new(0.5, 0, 1, 0),
            BackgroundTransparency = 1,
            ImageTransparency = Constants.GradientTransparency,
            Image = LayoutConstants.SelectedGradient,
            ZIndex = 2, -- TODO: Remove when RobloxGui uses sibling ZIndex behavior
        }, {
            AsspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
                AspectRatio = LayoutConstants.SelectedGradientImageSize.X / LayoutConstants.SelectedGradientImageSize.Y,
            }),

            SizeConstraint = Roact.createElement("UISizeConstraint", {
                MaxSize = LayoutConstants.SelectedGradientImageSize,
            }),
        }),
    })
end

local function mapStateToProps(state)
    return {
        emotesWheel = state.emotesWheel,
        layout = state.layout,
    }
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(SelectionGradient)