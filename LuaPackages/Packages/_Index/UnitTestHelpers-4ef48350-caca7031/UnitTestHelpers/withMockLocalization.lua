--[[
	Dummy implementation of withLocalization that returns the localization
	keys directly as the localized text.
]]
local function withMockLocalization(stringsToBeLocalized)
	return function(renderFunc)
		local localized = stringsToBeLocalized
		return renderFunc(localized)
	end
end

return withMockLocalization
