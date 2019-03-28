local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent
local EmotesMenu = Components.Parent

local Actions = EmotesMenu.Actions
local Thunks = EmotesMenu.Thunks

local Constants = require(EmotesMenu.Constants)

local FocusSegment = require(Actions.FocusSegment)
local PlayEmote = require(Thunks.PlayEmote)

local EmotesButtons = Roact.PureComponent:extend("EmotesButtons")

function EmotesButtons:render()
    local emotesInfoTable = self.props.emotesPage.emotesList
    local emoteButtons = {}

    for segmentIndex = 1, #emotesInfoTable do
        if segmentIndex > Constants.EmotesPerPage then
            warn("EmotesMenu: Number of emotes in page exceeds max emotes per page")
            break
        end

        local angle = (360/Constants.EmotesPerPage)*(segmentIndex - 1) + Constants.SegmentsStartRotation
        local radius = Constants.SegmentedCircleDiameter/2

        local imageSize = (1 - Constants.SegmentedCircleDiameter)/2
        local imagePadding = imageSize/2 + Constants.SlotNumberSize

        local cos = math.cos(math.rad(angle))
        local xRadiusPos = radius * cos

        local xPadding = imagePadding * cos
        local xPos = 0.5 + xRadiusPos + xPadding

        local sin = math.sin(math.rad(angle))
        local yRadiusPos = radius * sin

        local yPadding = imagePadding * sin
        local yPos = 0.5 + yRadiusPos + yPadding

        local emoteInfo = emotesInfoTable[segmentIndex]
        emoteButtons[emoteInfo.name] = Roact.createElement("ImageButton", {
            Image = emoteInfo.image,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Position = UDim2.new(xPos, 0, yPos, 0),
            Size = UDim2.new(imageSize, 0, imageSize, 0),
            BackgroundTransparency = 1,

            [Roact.Event.MouseEnter] = function()
                self.props.focusSegment(segmentIndex)
            end,

            [Roact.Event.MouseLeave] = function()
                self.props.focusSegment(0)
            end,

            [Roact.Event.Activated] = function()
                self.props.playEmote(emoteInfo.name)
            end,
        }, {
            AsspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
                AspectRatio = 1,
            }),
        })
    end

    return Roact.createElement("Frame", {
        Position = UDim2.new(0, 0, 0, 0),
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
    }, emoteButtons)
end

local function mapStateToProps(state)
    return {
        displayOptions = state.displayOptions,
        emotesPage = state.emotesPage,
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