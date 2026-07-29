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

local CurrentModule = script.Parent.Parent
local Packages = CurrentModule.Parent

local JestGetType = require(Packages.JestGetType)
local getType = JestGetType.getType

local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local Array = LuauPolyfill.Array
local instanceof = LuauPolyfill.instanceof

local redactStackTrace = require(Packages.RobloxShared).redactStackTrace

local Types = require(CurrentModule.Types)
type Config = Types.Config
type Refs = Types.Refs
type Printer = Types.Printer

local RedactStackTraces = {}

function RedactStackTraces.serialize(
	val: any,
	config: Config,
	indentation: string,
	depth: number,
	refs: Refs,
	printer: Printer
): string
	depth = depth + 1
	local ty = getType(val)
	if ty == "string" then
		local interiorConfig = table.clone(config)
		interiorConfig.plugins = table.clone(interiorConfig.plugins)
		table.remove(interiorConfig.plugins, table.find(interiorConfig.plugins, RedactStackTraces))
		local pretty = printer(val, interiorConfig, indentation, depth, refs)
		if config.redactStackTracesInStrings then
			pretty = redactStackTrace(pretty) :: string
		end
		return pretty
	elseif ty == "error" then
		local interiorConfig = table.clone(config)
		interiorConfig.plugins = table.clone(interiorConfig.plugins)
		table.remove(interiorConfig.plugins, table.find(interiorConfig.plugins, RedactStackTraces))
		local pretty = printer(val, interiorConfig, indentation, depth, refs)
		return redactStackTrace(pretty) :: string
	else
		error("not supported")
	end
end

function RedactStackTraces.test(val: any): boolean
	local ty = getType(val)
	return ty == "error" or ty == "string"
end

return RedactStackTraces
