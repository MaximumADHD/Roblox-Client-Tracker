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
-- polyfill for https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/instanceof
local __DEV__ = _G.__DEV__

-- FIXME Luau: typing class as Object gives: Type '{ @metatable {| __call: <a>(a, ...any) -> Error, __tostring: <b, c>({+ message: b, name: c +}) -> string |}, Error }' could not be converted into 'table'
local function instanceof(tbl: any, class: any): boolean
	if __DEV__ then
		assert(typeof(class) == "table", "Received a non-table as the second argument for instanceof")
	end

	if typeof(tbl) ~= "table" then
		return false
	end

	local ok, hasNew = pcall(function()
		return class.new ~= nil and tbl.new == class.new
	end)
	if ok and hasNew then
		return true
	end

	local seen = { [tbl] = true }

	while tbl and typeof(tbl) == "table" do
		tbl = getmetatable(tbl)
		if typeof(tbl) == "table" then
			tbl = tbl.__index

			if tbl == class then
				return true
			end
		end

		-- if we still have a valid table then check against seen
		if typeof(tbl) == "table" then
			if seen[tbl] then
				return false
			end
			seen[tbl] = true
		end
	end

	return false
end

return instanceof
