local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent
local EmotesMenu = Components.Parent

local Constants = require(EmotesMenu.Constants)

local WheelText = Roact.PureComponent:extend("WheelText")

function WheelText:getWheelText()
    local emotesList = self.props.emotesPage.emotesList
    if #emotesList == 0 then
        return Constants.MainTextNoEmotesEquipped
    end

    local focusedSlot = self.props.emotesWheel.focusedSegmentIndex
    local emoteInfo = emotesList[focusedSlot]

    if emoteInfo then
        return emoteInfo.name
    else
        return Constants.MainTextDefault
    end
end

function WheelText:render()
    local LayoutConstants = Constants.Layouts[self.props.layout]

    return Roact.createElement("TextLabel", {
        AnchorPoint = Vector2.new(0.5, 0.5),
        Size = UDim2.new(Constants.SegmentedCircleDiameter, -Constants.TextPadding,
                         Constants.SegmentedCircleDiameter, -Constants.TextPadding),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        BackgroundTransparency = 1,
        Text = self:getWheelText(),
        TextScaled = true,
        TextSize = LayoutConstants.MiddleTextSize,
        TextColor3 = Constants.Colors.White,
        Font = LayoutConstants.MiddleTextFont,
        ZIndex = 3, -- TODO: Remove when CoreGui uses Sibling ZIndex behavior
    }, {
        TextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
            MaxTextSize = LayoutConstants.MiddleTextSize,
        }),
    })
end

local function mapStateToProps(state)
    return {
        emotesWheel = state.emotesWheel,
        emotesPage = state.emotesPage,
        layout = state.layout,
    }
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(WheelText)