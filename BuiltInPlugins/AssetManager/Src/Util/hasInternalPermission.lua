local ok, result = pcall(function()
	return game:GetService("StudioService"):HasInternalPermission()
end)

local FFlagStudioEnableVideoImportM0 = game:GetFastFlag("StudioEnableVideoImportM0")
local hasInternalPermission = ok and result

return function() : boolean
	return FFlagStudioEnableVideoImportM0 and hasInternalPermission
end
