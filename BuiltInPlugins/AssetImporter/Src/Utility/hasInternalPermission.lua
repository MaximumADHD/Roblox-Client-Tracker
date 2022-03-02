local ok, result = pcall(function()
	return game:GetService("StudioService"):HasInternalPermission()
end)

local hasInternalPermission = ok and result

return function(): boolean
	return hasInternalPermission
end
