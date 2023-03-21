-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/common/stringifyForDisplay.ts
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array, String = LuauPolyfill.Array, LuauPolyfill.String

local HttpService = game:GetService("HttpService")

local makeUniqueId = require(script.Parent.makeUniqueId).makeUniqueId

-- ROBLOX deviation: HttpService:JSONEncode does not have a replacer function
function replaceUndefined(source, replacement)
	if not Array.isArray(source) then
		return source
	end
	local res = {}
	for i = 1, #source, 1 do
		if source[i] == nil then
			table.insert(res, replacement)
		else
			table.insert(res, source[i])
		end
	end
	return res
end

local function stringifyForDisplay(value: any): string
	local undefId = makeUniqueId("stringifyForDisplay")

	return Array.join(
		String.split(HttpService:JSONEncode(replaceUndefined(value, undefId)), HttpService:JSONEncode(undefId)),
		"<undefined>"
	)
end

exports.stringifyForDisplay = stringifyForDisplay

return exports
