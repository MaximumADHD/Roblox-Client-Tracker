local FFlagDevFrameworkResponsiveGrid2 = game:GetFastFlag("DevFrameworkResponsiveGrid2")

local Framework = script.Parent.Parent.Parent
local Util = require(Framework.Util)
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

if not FFlagDevFrameworkResponsiveGrid2 then
	if THEME_REFACTOR then
		return {}
	else
		return function() end
	end
end

if THEME_REFACTOR then
	return {
		Spacing = 8,
	}
else
	return function() end
end

