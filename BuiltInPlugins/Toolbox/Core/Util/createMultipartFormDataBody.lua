local Plugin = script.Parent.Parent.Parent

local AssetConfigConstants = require(Plugin.Core.Util.AssetConfigConstants)

local CRLF = "\r\n"

--[[

type MultipartFormData = {
	type: string;
	disposition: { [index: string]: string };
	value: string;
}[]

]]
local function createMultipartFormDataBody(partsArray)
	local result = ""
	for _, part in ipairs(partsArray) do
		result = result .. "--" .. AssetConfigConstants.MULTIPART_FORM_BOUNDARY .. CRLF
		if part.type then
			result = result .. "Content-Type: " .. part.type .. CRLF
		end
		if part.disposition then
			result = result .. "Content-Disposition: form-data; "
			local first = true
			for dk, dv in pairs(part.disposition) do
				if not first then
					result = result .. "; "
				end
				first = false
				result = result .. dk .. "=\"" .. dv .. "\""
			end
			result = result .. CRLF
		end
		result = result .. CRLF
		result = result .. part.value .. CRLF
	end
	result = result .. "--" .. AssetConfigConstants.MULTIPART_FORM_BOUNDARY .. "--" .. CRLF
	return result
end

return createMultipartFormDataBody
