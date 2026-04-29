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
local Packages = script.Parent.Parent
local ES7Types = require(Packages.ES7Types)

export type Array<T> = ES7Types.Array<T>

return {
	concat = require(script.concat),
	every = require(script.every),
	filter = require(script.filter),
	find = require(script.find),
	findIndex = require(script.findIndex),
	flat = require(script.flat),
	flatMap = require(script.flatMap),
	forEach = require(script.forEach),
	from = require(script.from),
	includes = require(script.includes),
	indexOf = require(script.indexOf),
	isArray = require(script.isArray),
	join = require(script.join),
	map = require(script.map),
	reduce = require(script.reduce),
	reverse = require(script.reverse),
	shift = require(script.shift),
	slice = require(script.slice),
	some = require(script.some),
	sort = require(script.sort),
	splice = require(script.splice),
	unshift = require(script.unshift),
}
