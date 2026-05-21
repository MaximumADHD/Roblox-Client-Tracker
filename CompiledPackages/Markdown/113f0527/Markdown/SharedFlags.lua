local SharedFlags = {
	FFlagDebugMarkdown = false,
	-- Flag from DF https://github.com/Roblox/DeveloperFramework/blob/main/src/SharedFlags/getFFlagDevFrameworkMarkdownCodeBackgroundStyles.lua
	FFlagMarkdownCodeBackgroundStyles = false,
}

function SharedFlags.get(flag)
	return SharedFlags[flag]
end

function SharedFlags.set(flag, value)
	SharedFlags[flag] = value
end

return SharedFlags
