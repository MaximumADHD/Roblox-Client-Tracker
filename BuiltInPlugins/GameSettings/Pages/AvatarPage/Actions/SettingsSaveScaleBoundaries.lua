local Plugin = script.Parent.Parent.Parent.Parent
local Action = require(Plugin.Framework.Util).Action

return Action(script.Name, function(avatarRules)
	return {
		rulesData = avatarRules
	}
end)