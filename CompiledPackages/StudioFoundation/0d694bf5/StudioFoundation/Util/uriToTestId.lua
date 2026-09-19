local StudioUri = require(script.Parent.StudioUri)

local function uriToTestId(uri: StudioUri)
	local withoutSpaces, _ = string.gsub(StudioUri.toString(uri), " ", "_")
	return withoutSpaces
end

return uriToTestId
