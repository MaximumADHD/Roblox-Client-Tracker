local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local getDeepValue = dependencies.SocialLibraries.Dictionary.getDeepValue
local RODUX_KEY = require(ContactImporter.Common.Constants).RODUX_KEY

return function(state)
	return getDeepValue(state, RODUX_KEY .. "." .. "ShowContactImporterParams") or {}
end
