export type CallStateType = "CallFinished" | "CallDeclined" | "CallMissed"

local CallState = {
	Finished = "CallFinished" :: "CallFinished",
	Declined = "CallDeclined" :: "CallDeclined",
	Missed = "CallMissed" :: "CallMissed",
}

return CallState
