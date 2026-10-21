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
--!strict
-- ROBLOX deviation: useMemo supports Luau multiple return values. A single
-- return value (the overwhelmingly common case) is stored as-is; any other
-- number of values is packed into a table tagged with a private metatable so it
-- can't be confused with a memoized table value.
local PackedValues = {}

local function pack(...: any): any
	if select("#", ...) == 1 then
		return (...)
	end
	return setmetatable(table.pack(...) :: any, PackedValues)
end

local function unpack(packed: any): ...any
	if type(packed) == "table" and rawequal(getmetatable(packed), PackedValues) then
		return table.unpack(packed, 1, packed.n)
	end
	return packed
end

return {
	pack = pack,
	unpack = unpack,
}
