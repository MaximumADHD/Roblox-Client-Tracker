local MovementUtils = {}
function MovementUtils.storeDesiredSpeedFactor(CCSMData, speed)
    CCSMData:SetAttribute("DesiredSpeedFactor", speed)
end

function MovementUtils.fetchDesiredSpeedFactor(CCSMData)
    return CCSMData:GetAttribute("DesiredSpeedFactor")
end

function MovementUtils.storeDesiredFacingDirection(CCSMData, facingDirection)
    CCSMData:SetAttribute("DesiredFacingDirection", facingDirection)
end

function MovementUtils.fetchDesiredFacingDirection(CCSMData)
    return CCSMData:GetAttribute("DesiredFacingDirection")
end

function MovementUtils.storeDesiredMovingDirection(CCSMData, movingDirection)
    CCSMData:SetAttribute("DesiredMovingDirection", movingDirection)
end

function MovementUtils.fetchDesiredMovingDirection(CCSMData)
    return CCSMData:GetAttribute("DesiredMovingDirection")
end

return MovementUtils