--[[
	Returns true if the current logged-in user has an internal Roblox email address
]]
local result
local function hasInternalPermission()
	-- Use the previously cached result if it exists
	if result ~= nil then
		return result
	end
	local ok, hasPermission = pcall(function()
		return game:GetService("StudioService"):HasInternalPermission()
	end)
	result = ok and hasPermission
	return result
end

return hasInternalPermission
