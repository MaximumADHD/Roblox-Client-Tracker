-- https://roblox.atlassian.net/browse/TXC-1672
game:DefineFastFlag("DeprecateChatAppReducerAliases", false)

return function()
	return game:GetFastFlag("DeprecateChatAppReducerAliases")
end
