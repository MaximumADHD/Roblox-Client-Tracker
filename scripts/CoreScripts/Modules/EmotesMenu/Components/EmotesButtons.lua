local CorePackages = game:GetService("CorePackages")

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

function EmotesButtons:render()
    local emotesInfoTable = self.props.emotesPage.emotesList
    local emoteButtons = {}

    for segmentIndex = 1, #emotesInfoTable do
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

        local emoteInfo = emotesInfoTable[segmentIndex]
        emoteButtons[emoteInfo.name] = Roact.createElement("ImageLabel", {
            Image = emoteInfo.image,
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

    return Roact.createElement("Frame", {
        AnchorPoint = Vector2.new(0.5, 0.5),
        Size = UDim2.new(1, 0, 1, 0),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        BackgroundTransparency = 1,

        [Roact.Event.InputChanged] = function(frame, input)
            local inputType = input.UserInputType

            if inputType == Enum.UserInputType.MouseMovement or inputType == Enum.UserInputType.Touch then
                local segmentIndex = getSegmentFromInput(frame, input)

                if segmentIndex == self.props.emotesWheel.focusedSegmentIndex then
                    return
                end

                if self.props.emotesPage.emotesList[segmentIndex] then
                    self.props.focusSegment(segmentIndex)
                else
                    self.props.focusSegment(0)
                end
            end
        end,

        [Roact.Event.InputBegan] = function(frame, input)
            local inputType = input.UserInputType

            if inputType == Enum.UserInputType.MouseButton1 or inputType == Enum.UserInputType.Touch then
                local segmentIndex = getSegmentFromInput(frame, input)
                local emoteInfo = self.props.emotesPage.emotesList[segmentIndex]

                if emoteInfo then
                    self.props.playEmote(emoteInfo.name)
                end
            end
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
        playEmote = function(emoteId)
            return dispatch(PlayEmote(emoteId))
        end,

        focusSegment = function(segmentIndex)
            return dispatch(FocusSegment(segmentIndex))
        end
    }
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(EmotesButtons)