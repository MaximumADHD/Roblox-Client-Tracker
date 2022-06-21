local RoduxShareLinks = script:FindFirstAncestor("RoduxShareLinks")
local Root = RoduxShareLinks.Parent
local Rodux = require(Root.Rodux)

export type Action = {
	shareInviteLink: string,
}

return Rodux.makeActionCreator(script.Name, function(shareInviteLink: string): Action
	return {
		shareInviteLink = shareInviteLink,
	}
end)
