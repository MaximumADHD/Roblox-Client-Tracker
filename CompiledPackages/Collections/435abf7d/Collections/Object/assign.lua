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
local Object = script.Parent
local Packages = Object.Parent.Parent

local None = require(Object.None)
local types = require(Packages.ES7Types)
type Object = types.Object

--[[
	Merges values from zero or more tables onto a target table. If a value is
	set to None, it will instead be removed from the table.

	This function is identical in functionality to JavaScript's Object.assign.
]]
-- Luau TODO: no way to strongly type this accurately, it doesn't eliminate deleted keys of T, and Luau won't do intersections of type packs: <T, ...U>(T, ...: ...U): T & ...U
return function<T, U, V, W>(target: T, source0: U?, source1: V?, source2: W?, ...): T & U & V & W
	if source0 ~= nil and typeof(source0 :: any) == "table" then
		for key, value in pairs(source0 :: any) do
			if value == None then
				(target :: any)[key] = nil
			else
				(target :: any)[key] = value
			end
		end
	end

	if source1 ~= nil and typeof(source1 :: any) == "table" then
		for key, value in pairs(source1 :: any) do
			if value == None then
				(target :: any)[key] = nil
			else
				(target :: any)[key] = value
			end
		end
	end

	if source2 ~= nil and typeof(source2 :: any) == "table" then
		for key, value in pairs(source2 :: any) do
			if value == None then
				(target :: any)[key] = nil
			else
				(target :: any)[key] = value
			end
		end
	end

	for index = 1, select("#", ...) do
		local rest = select(index, ...)

		if rest ~= nil and typeof(rest) == "table" then
			for key, value in pairs(rest) do
				if value == None then
					(target :: any)[key] = nil
				else
					(target :: any)[key] = value
				end
			end
		end
	end

	-- TODO? we can add & Object to this, if needed by real-world code, once CLI-49825 is fixed
	return (target :: any) :: T & U & V & W
end
