local PolicyTypes = require(script.PolicyTypes)

export type AppFeaturePolicies = PolicyTypes.AppFeaturePolicies
export type AvatarPolicies = PolicyTypes.AvatarPolicies
export type ChatPolicies = PolicyTypes.ChatPolicies
export type SharePolicies = PolicyTypes.SharePolicies
export type ShareTargetGamePolicies = PolicyTypes.ShareTargetGamePolicies
export type Policies = PolicyTypes.Policies

return {
	AppFeaturePolicies = require(script.AppFeaturePolicies),
	RoactAppPolicy = require(script.RoactAppPolicy),
	UniversalAppPolicy = require(script.UniversalAppPolicy),
	UniversalAppGetPolicy = require(script.UniversalAppGetPolicy),
}
