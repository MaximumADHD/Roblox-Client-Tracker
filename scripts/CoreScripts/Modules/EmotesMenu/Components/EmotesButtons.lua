local ContentProvider = game:GetService("ContentProvider")
local CorePackages = game:GetService("CorePackages")

local FFlagCoreScriptEmotesMenuBetterMouseBehavior = settings():GetFFlag("CoreScriptEmotesMenuBetterMouseBehavior")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent
local EmotesMenu = Components.Parent

local Actions = EmotesMenu.Actions
local Thunks = EmotesMenu.Thunks
local Utility = EmotesMenu.Utility

local Constants = require(EmotesMenu.Constants)

local GetSegmentFromPosition = require(Utility.GetSegmentFromPosition)

local FocusSegment = require(Actions.FocusSegment)
local HideMenu = require(Actions.HideMenu)
local PlayEmote = require(Thunks.PlayEmote)

local EmotesButtons = Roact.PureComponent:extend("EmotesButtons")

local function positionInsideOuterCircle(frame, centerRelativePos)
    local outerCircleRadius = frame.AbsoluteSize.X / 2
    local innerCircleRadius = outerCircleRadius * Constants.InnerCircleSizeRatio

    return centerRelativePos.Magnitude > innerCircleRadius and centerRelativePos.Magnitude < outerCircleRadius
end

local function getSegmentFromInput(frame, input)
    local position = Vector2.new(input.Position.X, input.Position.Y)
    position = position - frame.AbsolutePosition
    position = position - frame.AbsoluteSize / 2

    -- Invert Y position
    -- If the Y value is negative then the position is above the center of the emotes wheel
    position = Vector2.new(position.X, -position.Y)

    if not positionInsideOuterCircle(frame, position) then
        return 0
    end

    return GetSegmentFromPosition(position)
end

local function getRandomAssetId(emotesAssetIds)
    if #emotesAssetIds == 0 then
        return
    end

    local rand = math.random(1, #emotesAssetIds)
    return emotesAssetIds[rand]
end

local function getEmoteImage(assetId)
    return ContentProvider.BaseUrl.. Constants.EmotesImageApi:format(assetId)
end

function EmotesButtons:render()
    local emotesPage = self.props.emotesPage.currentEmotes
    local emotesInfoTable = self.props.emotesPage.emotesInfo
    local emoteButtons = {}

    for segmentIndex, emoteName in pairs(emotesPage) do
        local emoteAssetIds = emotesInfoTable[emoteName]

        if segmentIndex > Constants.EmotesPerPage then
            warn("EmotesMenu: Number of emotes in page exceeds max emotes per page")
            break
        end

        local angle = (360 / Constants.EmotesPerPage) * (segmentIndex - 1) + Constants.SegmentsStartRotation
        local radius = Constants.InnerCircleSizeRatio / 2

        local spaceAvailable = (1 - Constants.InnerCircleSizeRatio) / 2
        local imageSize = spaceAvailable - Constants.SlotNumberSize - Constants.ImageOutsidePadding

        local imagePadding = imageSize / 2 + Constants.SlotNumberSize - Constants.ImageOutsidePadding / 2

        local cos = math.cos(math.rad(angle))
        local xRadiusPos = radius * cos

        local xPadding = imagePadding * cos
        local xPos = 0.5 + xRadiusPos + xPadding

        local sin = math.sin(math.rad(angle))
        local yRadiusPos = radius * sin

        local yPadding = imagePadding * sin
        local yPos = 0.5 + yRadiusPos + yPadding

        local assetId = getRandomAssetId(emoteAssetIds)
        local emoteImage = getEmoteImage(assetId)

        emoteButtons[segmentIndex] = Roact.createElement("ImageLabel", {
            Image = emoteImage,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Position = UDim2.new(xPos, 0, yPos, 0),
            Size = UDim2.new(imageSize, 0, imageSize, 0),
            BackgroundTransparency = 1,
            ZIndex = 2, -- TODO: Remove with sibling Zindex
        }, {
            AsspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
                AspectRatio = 1,
            }),
        })
    end

    return Roact.createElement("TextButton", {
        AnchorPoint = Vector2.new(0.5, 0.5),
        Size = UDim2.new(1, 0, 1, 0),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        BackgroundTransparency = 1,
        Text = "",

        [Roact.Event.InputChanged] = function(frame, input)
            local inputType = input.UserInputType

            if inputType == Enum.UserInputType.MouseMovement or inputType == Enum.UserInputType.Touch then
                local segmentIndex = getSegmentFromInput(frame, input)

                if segmentIndex == self.props.emotesWheel.focusedSegmentIndex then
                    return
                end

                if self.props.emotesPage.currentEmotes[segmentIndex] then
                    self.props.focusSegment(segmentIndex)
                else
                    self.props.focusSegment(0)
                end
            end
        end,

        [Roact.Event.Activated] = function(frame, input)
            local segmentIndex = getSegmentFromInput(frame, input)
            if FFlagCoreScriptEmotesMenuBetterMouseBehavior then
                if segmentIndex == 0 then
                    self.props.hideMenu()
                    return
                end
            end

            local emoteName = self.props.emotesPage.currentEmotes[segmentIndex]
            if not emoteName then
                return
            end

            local emoteAssetIds = self.props.emotesPage.emotesInfo[emoteName]
            if not emoteAssetIds then
                return
            end

            local assetId = getRandomAssetId(emoteAssetIds)
            self.props.playEmote(emoteName, segmentIndex, assetId)
        end,

        [Roact.Event.MouseLeave] = function()
            self.props.focusSegment(0)
        end,
    }, emoteButtons)
end

local function mapStateToProps(state)
    return {
        displayOptions = state.displayOptions,
        emotesPage = state.emotesPage,
        emotesWheel = state.emotesWheel,
    }
end

local function mapDispatchToProps(dispatch)
    return {
        playEmote = function(emoteName, slotNumber, assetId)
            return dispatch(PlayEmote(emoteName, slotNumber, assetId))
        end,

        focusSegment = function(segmentIndex)
            return dispatch(FocusSegment(segmentIndex))
        end,

        hideMenu = function()
            return dispatch(HideMenu())
        end,
    }
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(EmotesButtons)