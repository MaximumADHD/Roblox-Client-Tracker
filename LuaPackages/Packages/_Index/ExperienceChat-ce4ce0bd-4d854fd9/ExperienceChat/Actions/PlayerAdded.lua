local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: string,
	userId: string,
	username: string,
	displayName: string,
	hasVerifiedBadge: boolean?,
}

return Rodux.makeActionCreator(
	script.Name,
	function(userId: string | number, username: string, displayName: string, hasVerifiedBadge: boolean?)
		return {
			userId = tostring(userId),
			username = username,
			displayName = displayName,
			hasVerifiedBadge = hasVerifiedBadge,
		}
	end
)
