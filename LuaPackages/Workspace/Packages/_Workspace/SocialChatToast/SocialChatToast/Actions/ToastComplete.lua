local SocialChatToast = script:FindFirstAncestor("SocialChatToast")
local Packages = SocialChatToast.Parent

local Action = require(Packages.Rodux).makeActionCreator

return Action(script.Name, function(toast)
	return {
		toast = toast,
	}
end)
