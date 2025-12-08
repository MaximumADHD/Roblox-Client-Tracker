local Base = script.Parent
local Types = require(Base.types)

local Matching = {}

--[[
    Creates a PhaseState for use with BlendSpace layers for synchronizing based on a normalized time
    position for all underlying layers.
]]
function Matching.createPhaseStateForBlendSpace(normalizedTimePosition: number): Types.PhaseState
    normalizedTimePosition %= 1
    local phaseState = {
        normalizedTimePosition = normalizedTimePosition,
    } :: Types.PhaseState

    return phaseState
end

--[[
    Matches the given PhaseState to the given optional PhaseSignal and returns a normalized time
    position. If the PhaseSignal is nil, this method returns the normalized time position from
    the PhaseState.
]]
function Matching.matchPhasesToState(
    phaseState: Types.PhaseState,
    phaseSignal: Types.PhaseSignal?
): number
    if phaseState.phaseSignal == nil or phaseSignal == nil then
        return phaseState.normalizedTimePosition
    end

    -- TODO: implement actual phase matching here
    return 0
end

return Matching
