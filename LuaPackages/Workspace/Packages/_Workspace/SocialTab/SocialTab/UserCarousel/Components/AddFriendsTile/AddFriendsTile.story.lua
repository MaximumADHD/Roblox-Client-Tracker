local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local AddFriendsTile = require(script.Parent)

return function(props)
	return Roact.createElement(
		AddFriendsTile,
		llama.Dictionary.join({
			totalHeight = 120,
		}, props)
	)
end
