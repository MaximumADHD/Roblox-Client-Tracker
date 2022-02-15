local isCli, _ = pcall(function()
	return game:GetService("ProcessService")
end)

-- Return true if Toolbox is running in roblox-cli
return function()
	return isCli
end
