--[[
	This is a temp enum for UI mode until we add the enum to the engine side
]]

--[[
    TODO: Define what actual the actual UI modes/platform types are

    Outside of TenFoot, these are all suggestions based on previous conversations
    The idea here is that we should not be concerned about device type explicitly
    in almost all cases. UI mode (and input type) are more meaningful and useful
    dimensions

    Some suggested values:
    type UiModeType = "Narrow" | "Wide" | "TenFoot" | "Immersive" | "Unknown"
]]
export type UiMode = "TenFoot" | "Unknown"

-- This enum is intentionally left sparse until we have a clearer naming convention
local UiModeEnum = {
	TenFoot = "TenFoot" :: "TenFoot",
	Unknown = "Unknown" :: "Unknown",
}

return UiModeEnum
