--[[
	Translation tables for strings in Framework
]]

-- TODO STUDIOPLAT-28080: When we actually move things around, they'll all be
-- under this folder so this should be removed and the paths cleaned up
local Framework = script.Parent.Parent

return {
	LOCALIZATION_PROJECT_NAME = "Framework",
	SourceStrings = Framework.Resources.SourceStrings,
	LocalizedStrings = Framework.Resources.LocalizedStrings,
}
