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
--[[
	A 'Symbol' is an opaque marker type, implemented to behave similarly to JS:
	https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol
]]
local Symbol = require(script.Symbol)
export type Symbol = Symbol.Symbol
local GlobalRegistry = require(script["Registry.global"])

local SymbolObject = setmetatable({}, {
	--[[
		Creates a new symbol, using the given name when printed. Symbols are
		opaque, so this will always create a new, unique object
	]]
	__call = function(_, name: string?): Symbol.Symbol
		return Symbol.new(name)
	end,
})

SymbolObject.for_ = GlobalRegistry.getOrInit

return SymbolObject
