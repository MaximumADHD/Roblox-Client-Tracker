local SocialCommon = script:FindFirstAncestor("SocialCommon")
local Packages = SocialCommon.Parent

local Dash = require(Packages.Dash)

type User = {
	username: string,
	gameId: string?,
	presence: Enum?,
	[string]: any,
}

return function(user: User)
	return Dash.join(user, {
		name = user.username,
		gameInstanceId = user.gameId,
	})
end
