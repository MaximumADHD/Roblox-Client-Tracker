local Plugin = script.Parent.Parent.Parent
local getErrorTypes = require(Plugin.Src.Resources.Constants.getErrorTypes)
local ErrorTypes = getErrorTypes()

return function(file: File?, assetId: number?, failedError: string?, localization): ({}?, string?)
	local newState, errorMessage

	if failedError then
		if failedError == ErrorTypes.FailedToSelectFile then
			errorMessage = localization:getText("CreateDialog", "ErrorSelectMap")
		elseif failedError == ErrorTypes.FailedUrl then
			errorMessage = localization:getText("CreateDialog", "ErrorFindUrl")
		end
	else
		if assetId then
			newState = {
				assetId = assetId,
			}
		elseif file then
			local tempId = file:GetTemporaryId()
			newState = {
				file = file,
				tempId = tempId,
			}
		else
			errorMessage = localization:getText("CreateDialog", "ErrorImportMap")
		end
	end

	-- Either newState, or errorMessage will contain a value, the other will be nil
	return newState, errorMessage
end
