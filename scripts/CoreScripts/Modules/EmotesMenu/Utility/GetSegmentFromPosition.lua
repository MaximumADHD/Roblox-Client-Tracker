local Utility = script.Parent
local EmotesMenu = Utility.Parent

local Constants = require(EmotesMenu.Constants)

local function GetSegmentIndexFromPosition(position)
    local angle = math.deg(math.atan2(position.X, position.Y))
    if angle < 0 then
        angle = angle + 360
    end

    local segmentAngle = 360 / Constants.EmotesPerPage
    angle = angle + math.ceil(segmentAngle / 2)
    angle = math.fmod(angle, 360)

    local segmentIndex = math.ceil(angle / segmentAngle)

    local offsetAngle = Constants.SegmentsStartRotation + 90
    local segmentOffset = offsetAngle / segmentAngle

    segmentIndex = segmentIndex + segmentOffset
    segmentIndex = math.ceil(segmentIndex)

    if segmentIndex > Constants.EmotesPerPage then
        segmentIndex = segmentIndex - Constants.EmotesPerPage
    elseif segmentIndex < 1 then
        segmentIndex = segmentIndex + Constants.EmotesPerPage
    end

    return segmentIndex
end

return GetSegmentIndexFromPosition