local StudioThemeFallback = require(script.Parent.StudioThemeFallback)

--[[
	Returns studio theme or StudioThemeFallback
]]
local function getStudioThemeNameOrDefault(): string
	local ok, theme = pcall(function()
		return settings().Studio.Theme.Name
	end)
	if not ok then
		return StudioThemeFallback
	else
		return theme
	end
end

return getStudioThemeNameOrDefault
