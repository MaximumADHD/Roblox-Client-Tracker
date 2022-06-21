--!strict
local SocialLibraries = script.Parent.Parent.Parent
local Enums = require(SocialLibraries.Analytics.Enums)
local ContextTypes = Enums.ContextTypes

return function(context: any)
	if context == nil then
		return nil
	end

	local contextEnum = ContextTypes[context.rawValue()]

	return contextEnum.rawValue()
end
