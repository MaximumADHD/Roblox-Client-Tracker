local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local t = dependencies.t

return t.interface({
	id = t.string,
	username = t.string,
	displayName = t.string,
	thumbnail = t.string,
	isPremium = t.boolean,
	userPresenceType = t.optional(t.userdata),
	lastLocation = t.optional(t.string),
})
