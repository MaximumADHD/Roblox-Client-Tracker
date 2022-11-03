--!nonstrict
local Root = script.Parent
local Packages = Root.Parent

local Roact = require(Packages.Roact)

return function(element, mockPolicy)
	local RoactAppPolicy = require(Packages.UniversalAppPolicy).RoactAppPolicy
	local AppFeaturePolicies = require(Packages.UniversalAppPolicy).AppFeaturePolicies
	local ChatPolicies = require(Packages.SocialPolicies).ChatPolicies
	local AvatarPolicies = require(Packages.AvatarPolicies).AvatarPolicies
	local SharePolicies = require(Packages.SocialPolicies).SharePolicies
	local ShareTargetGamePolicies = require(Packages.SocialPolicies).ShareTargetGamePolicies

	local appPolicy = mockPolicy or {}

	return Roact.createElement(RoactAppPolicy.Provider, {
		policy = {
			AppFeaturePolicies,
			ChatPolicies,
			AvatarPolicies,
			SharePolicies,
			ShareTargetGamePolicies,
		},
		policyData = appPolicy,
	}, {
		Element = element,
	})
end
