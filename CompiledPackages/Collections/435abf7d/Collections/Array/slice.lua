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
local Array = script.Parent
local Packages = Array.Parent.Parent
local types = require(Packages.ES7Types)
type Array<T> = types.Array<T>

-- Implements Javascript's `Array.prototype.slice` as defined below, but with 1-indexing
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice
return function<T>(t: Array<T>, start_idx: number?, end_idx: number?): Array<T>
	if typeof(t) ~= "table" then
		error(string.format("Array.slice called on %s", typeof(t)))
	end
	local length = #t

	local start_idx_ = start_idx or 1
	local end_idx_
	if end_idx == nil or end_idx > length + 1 then
		end_idx_ = length + 1
	else
		end_idx_ = end_idx
	end

	if start_idx_ > length + 1 then
		return {}
	end

	local slice = {}

	if start_idx_ < 1 then
		start_idx_ = math.max(length - math.abs(start_idx_), 1)
	end
	if end_idx_ < 1 then
		end_idx_ = math.max(length - math.abs(end_idx_), 1)
	end

	local idx = start_idx_
	local i = 1
	while idx < end_idx_ do
		slice[i] = t[idx]
		idx = idx + 1
		i = i + 1
	end

	return slice
end
