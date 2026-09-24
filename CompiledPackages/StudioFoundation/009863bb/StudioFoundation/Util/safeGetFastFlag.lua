return function(flagName: string): boolean
	local ok, value = pcall(function()
		return game:GetFastFlag(flagName)
	end)
	if not ok then
		return false
	end
	return value
end
