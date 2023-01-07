local GameProtocol = require(script.GameProtocol)
local Types = require(script.GameProtocolTypes)

local FFlagExperienceJoinAttemptId = require(script.Flags.FFlagExperienceJoinAttemptId)

export type LaunchParams = Types.LaunchParams
export type GameProtocol = Types.GameProtocol

return {
	GameProtocol = GameProtocol,
	GameParams = require(script.GameParams),

	Flags = {
		FFlagExperienceJoinAttemptId = FFlagExperienceJoinAttemptId,
	},
}
