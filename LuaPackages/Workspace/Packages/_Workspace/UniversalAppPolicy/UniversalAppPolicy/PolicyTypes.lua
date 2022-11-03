local Root = script.Parent
local Packages = Root.Parent

local AppFeaturePolicies = require(Root.AppFeaturePolicies)

local AvatarPolicies = require(Packages.AvatarPolicies)
local SocialPolicies = require(Packages.SocialPolicies)

export type AppFeaturePolicies = AppFeaturePolicies.Type
export type AvatarPolicies = AvatarPolicies.AvatarPolicies
export type ChatPolicies = SocialPolicies.ChatPolicies
export type SharePolicies = SocialPolicies.SharePolicies
export type ShareTargetGamePolicies = SocialPolicies.ShareTargetGamePolicies

export type Policies = AppFeaturePolicies & AvatarPolicies & ChatPolicies & SharePolicies & ShareTargetGamePolicies

return {}
