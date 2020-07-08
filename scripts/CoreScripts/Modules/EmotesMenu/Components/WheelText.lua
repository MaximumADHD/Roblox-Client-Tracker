local CorePackages = game:GetService("CorePackages")
local StarterPlayer = game:GetService("StarterPlayer")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent
local EmotesMenu = Components.Parent
local CoreScriptsModules = EmotesMenu.Parent

local Constants = require(EmotesMenu.Constants)
local RobloxTranslator = require(CoreScriptsModules.RobloxTranslator)

local WheelText = Roact.PureComponent:extend("WheelText")

function WheelText:getWheelText()
    local currentEmotes = self.props.emotesPage.currentEmotes
    local locale = self.props.locale
    local numberEmotesLoaded = self.props.emotesPage.numberEmotesLoaded

    if next(currentEmotes) == nil then
        if StarterPlayer.UserEmotesEnabled and numberEmotesLoaded == 0 then
            return RobloxTranslator:FormatByKeyForLocale(Constants.LocalizationKeys.NoEmotesEquipped, locale)
        else
            return RobloxTranslator:FormatByKeyForLocale(Constants.LocalizationKeys.EmotesDisabled, locale)
        end
    end

    local focusedSlot = self.props.emotesWheel.focusedSegmentIndex
    local emoteName = currentEmotes[focusedSlot]

    if emoteName then
        return emoteName
    else
        return RobloxTranslator:FormatByKeyForLocale(Constants.LocalizationKeys.SelectAnEmote, locale)
    end
end

function WheelText:render()
    local LayoutConstants = Constants.Layouts[self.props.layout]
    local wheelText = self:getWheelText()

    return Roact.createElement("TextLabel", {
        AnchorPoint = Vector2.new(0.5, 0.5),
        Size = UDim2.new(Constants.InnerCircleSizeRatio, -Constants.TextPadding,
                         Constants.InnerCircleSizeRatio, -Constants.TextPadding),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        BackgroundTransparency = 1,
        Text = wheelText,
        TextScaled = true,
        TextSize = LayoutConstants.MiddleTextSize,
        TextColor3 = Constants.Colors.White,
        Font = LayoutConstants.MiddleTextFont,
        ZIndex = 5, -- TODO: Remove when CoreGui uses Sibling ZIndex
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
        locale = state.locale,
    }
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(WheelText)