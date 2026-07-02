--[[
	Returns studio settings or nil if they are not accesible
]]
local function getStudioSettings()
	local ok, _settings = pcall(function()
		return settings()
	end)
	if not ok then
		return nil
	end
	return _settings:FindFirstChild("Studio")
end

return getStudioSettings
