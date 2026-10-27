--[[
	* Copyright (c) Roblox Corporation. All rights reserved.
	* Licensed under the MIT License (the "License");
	* you may not use this file except in compliance with the License.
	* You may obtain a copy of the License at
	*
	*     https://opensource.org/licenses/MIT
	*
	* Unless required by applicable law or agreed to in writing, software
	* distributed under the License is distributed on an "AS IS" BASIS,
	* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	* See the License for the specific language governing permissions and
	* limitations under the License.
]]

local TRACE_LINE = `[%w_%-]+%.[%w_%-%.]+%:%d+[%w \t_]*`
local REDACT_TRACE_WITH = ("\nRedacted.Stack.Trace:1337 function epicDuck"):rep(4):sub(2)
local LUA_ERROR_LINE = `[%w_%-]+%.[%w_%-%.]+%:%d+%:[%w \t_]*`
local REDACT_LUA_ERROR_WITH = "Redacted.Stack.Trace:1337: The epic duck is coming!"

local function redactStackTrace(str: string?): string?
	if str == nil then
		return nil
	else
		local newLines = {}
		local lastLineRedacted = false
		for _, line in (str :: string):split("\n") do
			local lineWithRedactions = line:gsub(TRACE_LINE, if lastLineRedacted then "" else REDACT_TRACE_WITH)
				:gsub(LUA_ERROR_LINE, if lastLineRedacted then "" else REDACT_LUA_ERROR_WITH)
			lastLineRedacted = line ~= lineWithRedactions
			if not lastLineRedacted or lineWithRedactions:match("%S") then
				table.insert(newLines, lineWithRedactions)
			end
		end
		return table.concat(newLines, "\n")
	end
end

return redactStackTrace
