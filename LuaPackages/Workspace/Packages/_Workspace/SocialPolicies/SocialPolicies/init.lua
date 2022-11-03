local ChatPolicies = require(script.ChatPolicies)
local SharePolicies = require(script.SharePolicies)
local ShareTargetGamePolicies = require(script.ShareTargetGamePolicies)

export type ChatPolicies = ChatPolicies.Type
export type SharePolicies = SharePolicies.Type
export type ShareTargetGamePolicies = ShareTargetGamePolicies.Type

return {
	ChatPolicies = ChatPolicies,
	SharePolicies = SharePolicies,
	ShareTargetGamePolicies = ShareTargetGamePolicies,
}
