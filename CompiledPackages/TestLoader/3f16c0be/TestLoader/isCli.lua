local isCli, _ = pcall(function()
	return game:GetService("ProcessService")
end)

return function()
	return isCli
end
