local GameProtocol = require(script.GameProtocol)
local Types = require(script.GameProtocolTypes)

local FFlagExperienceJoinAttemptId = require(script.Flags.FFlagExperienceJoinAttemptId)
local GetFFlagJoinAttemptIdFromWebview = require(script.Flags.GetFFlagJoinAttemptIdFromWebview)
local GetFFlagMoveLuaExpLaunchBegin = require(script.Flags.GetFFlagMoveLuaExpLaunchBegin)

export type LaunchParams = Types.LaunchParams
export type GameProtocol = Types.GameProtocol

return {
	GameProtocol = GameProtocol,
	GameParams = require(script.GameParams),

	Flags = {
		FFlagExperienceJoinAttemptId = FFlagExperienceJoinAttemptId,
		GetFFlagJoinAttemptIdFromWebview = GetFFlagJoinAttemptIdFromWebview,
		GetFFlagMoveLuaExpLaunchBegin = GetFFlagMoveLuaExpLaunchBegin,
	},
}
