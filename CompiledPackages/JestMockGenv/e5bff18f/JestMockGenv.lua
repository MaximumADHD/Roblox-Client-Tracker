--!nonstrict
-- ROBLOX NOTE: no upstream
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

local CurrentModule = script
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
type Object = LuauPolyfill.Object

local exports = {}

local GlobalMockerClass = {}

export type GlobalAutomockFn = {
	_isGlobalAutomockFn: true,
	_maybeMock: any,
	_maybeUnmocked: any,
}
export type GlobalAutomocks = { [string]: GlobalAutomockFn | GlobalAutomocks }
export type GlobalEnvLibrary = {
	_isMockGlobalLibrary: true,
	_automocksRef: GlobalAutomocks,
}
-- The GlobalEnv type should always look like the MOCKABLE_GLOBALS table;
-- users depend on GlobalEnv for autocomplete and type checking.
export type GlobalEnv = GlobalEnvLibrary & {
	print: typeof(print),
	warn: typeof(warn),
	math: GlobalEnvLibrary & {
		random: typeof(math.random),
	},
}
local MOCKABLE_GLOBALS = {
	print = print,
	warn = warn,
	math = {
		random = math.random,
	},
}

export type GlobalMocker = {
	isMockGlobalLibrary: (_self: GlobalMocker, object: any) -> boolean,
	automocks: GlobalAutomocks,
	envObject: GlobalEnv,
	currentlyMocked: boolean,
}

GlobalMockerClass.__index = GlobalMockerClass
function GlobalMockerClass.new(): GlobalMocker
	local self = setmetatable({}, GlobalMockerClass)

	self.automocks = self:_createGlobalAutomocks()
	self.envObject = self:_createGlobalEnv(self.automocks)
	self.currentlyMocked = false

	return (self :: any) :: GlobalMocker
end

function GlobalMockerClass:isMockGlobalLibrary(object: any): boolean
	return typeof(object) == "table" and object._isMockGlobalLibrary == true
end

function GlobalMockerClass:_createGlobalAutomocks(): GlobalAutomocks
	local function implement(mockableGlobals: Object, into: GlobalAutomocks)
		for name, mockableGlobal in mockableGlobals do
			if typeof(mockableGlobal) == "function" then
				into[name] = {
					_isGlobalAutomockFn = true,
					_maybeMock = nil,
					_maybeUnmocked = nil,
				}
			elseif typeof(mockableGlobal) == "table" then
				local subAutomocks = {}
				implement(mockableGlobal, subAutomocks)
				into[name] = subAutomocks
			else
				error("Unexpected mockable global type - this is an internal bug")
			end
		end
	end
	local automocks = {}
	implement(MOCKABLE_GLOBALS, automocks)
	return automocks
end

function GlobalMockerClass:_createGlobalEnv(automocks: GlobalAutomocks): GlobalEnv
	local function makeSentinelForLibrary(automocks: GlobalAutomocks, globalPath: { string })
		local library: GlobalEnvLibrary = {
			_isMockGlobalLibrary = true,
			_automocksRef = automocks,
		}

		-- Allow users to access nested libraries like `math`.
		for name, automock in automocks do
			if typeof(automock) == "table" and not automock._isGlobalAutomockFn then
				local libraryGlobalPath = table.clone(globalPath)
				table.insert(libraryGlobalPath, name)
				library[name] = makeSentinelForLibrary(automock, libraryGlobalPath)
			end
		end

		-- Users might want to mock functions that don't have an underlying
		-- implementation in Jest. Detect that and throw an error here to inform
		-- them Jest must explicitly support individual globals to be mocked.
		setmetatable(library, {
			__index = function(_, name: string)
				-- name is actually `unknown` type; the type declaration is a
				-- convenient lie so our code type checks without a fuss
				if typeof(name) ~= "string" then
					error(`Cannot index globalEnv with {name} (expected string)`)
				end

				-- Give $$ names like $$typeof a free pass, because they're used
				-- internally in some Jest/LuauPolyfill functions, and probably
				-- aren't a user accidentally misusing `globalEnv`.
				if string.sub(name, 1, 2) == "$$" then
					return nil
				end

				-- Unmocked functions aren't included in the actual object, so
				-- simulate them being included here (where we can dynamically
				-- fetch which function to actually return)
				local automock = automocks[name]
				if typeof(automock) == "table" and automock._isGlobalAutomockFn then
					return automock._maybeUnmocked or error("globalEnv has not been initialised by Jest here")
				end

				-- In theory, what we want to do is `table.concat` the global
				-- path, but including `name` at the end. Instead of doing table
				-- manipulation, just implement that with a plain loop.
				local qualifiedName = ""
				for _, parentName in globalPath do
					qualifiedName ..= parentName .. "."
				end
				qualifiedName ..= name
				error(`Jest does not yet support mocking the {qualifiedName} global.`)
			end,
		})

		return table.freeze(library)
	end

	-- This will match `GlobalEnv` in the end, but it's difficult to
	-- statically type check that, so for code cleanliness, just cast to it.
	return makeSentinelForLibrary(automocks, {}) :: any
end

exports.GlobalMocker = GlobalMockerClass
exports.MOCKABLE_GLOBALS = MOCKABLE_GLOBALS

return exports
