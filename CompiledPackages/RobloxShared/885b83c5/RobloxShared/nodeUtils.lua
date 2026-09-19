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
-- ROBLOX NOTE: no upstream

local WriteableModule = require(script.Parent.Writeable)
local Writeable = WriteableModule.Writeable
type Writeable = WriteableModule.Writeable
local process = {
	stdout = Writeable.new(),
	stderr = Writeable.new(),
}
local function exit(code: number)
	error(("Exited with code: %d"):format(code))
end
export type NodeJS_WriteStream = Writeable

local HttpService = game:GetService("HttpService")
local JSON = {
	stringify = function(obj: any, ...): string
		if select("#", ...) > 0 then
			warn(
				"JSON.stringify doesn't currently support more than 1 argument. All additional arguments will be ignored."
			)
		end
		return HttpService:JSONEncode(obj)
	end,
	parse = function(str: string, ...): any
		if select("#", ...) > 0 then
			warn("JSON.parse doesn't currently support more than 1 argument. All additional arguments will be ignored.")
		end
		return HttpService:JSONDecode(str)
	end,
}

return {
	process = process,
	exit = exit,
	JSON = JSON,
}
