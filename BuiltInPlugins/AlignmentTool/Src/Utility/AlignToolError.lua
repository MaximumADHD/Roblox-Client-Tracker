--[[
	Error codes indicating why alignment failed or could not be performed.
	Each code should have a corresponding key in the localizable strings table,
	under the ErrorMessages scope.
]]

local AlignToolError = {
	InvalidActiveObject = "InvalidActiveObject",
}

function AlignToolError.getErrorText(localization, errorCode, formatParameters)
	return localization:getText("ErrorMessages", errorCode, formatParameters)
end

return AlignToolError
