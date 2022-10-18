--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/__testUtils__/inspectStr.js

local HttpService = game:GetService("HttpService")

local function replaceLeadingQuote(str)
	str = string.gsub(str, '\n"', "\n`")
	if str.sub(str, 1, 1) == '"' then
		return "`" .. string.sub(str, 2)
	end
	return str
end

local function replaceTrailingQuote(str)
	str = string.gsub(str, '"\n', "`\n")
	if str.sub(str, -1) == '"' then
		return string.sub(str, 1, -2) .. "`"
	end
	return str
end

-- /**
--  * Special inspect function to produce readable string literal for error messages in tests
--  */
local function inspectStr(str: string): string
	if str == nil then
		return "nil"
	end
	str = HttpService:JSONEncode(str)
	str = replaceTrailingQuote(replaceLeadingQuote(str))
	str = string.gsub(str, '\\"', '"')
	str = string.gsub(str, "\\\\", "\\")
	return str
end

return {
	inspectStr = inspectStr,
}
