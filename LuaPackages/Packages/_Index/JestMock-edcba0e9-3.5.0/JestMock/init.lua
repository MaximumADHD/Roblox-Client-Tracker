--!nonstrict
-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-mock/src/index.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  *
--  */

-- ROBLOX deviation: Currently we have translated a limited subset of the jest-mock
-- functionality just to bootstrap the development of the spyMatchers. As we have
-- a need for more functionality, we will revisit this file and continue the translation
-- efforts.

local CurrentModule = script
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Set = LuauPolyfill.Set
local Symbol = LuauPolyfill.Symbol

type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object

local exports = {}

local ModuleMockerClass = {}

-- ROBLOX TODO: Uncomment this type once Luau has supported ... syntax
-- type Function = (...) -> any;
-- ROBLOX TODO: Fix once Luau has support for default type arguments
type MockDefaultY = Array<any>
type MockFunctionState<T, Y> = {
	calls: Array<Y>,
	instances: Array<T>,
	contexts: Array<T>,
	invocationCallOrder: Array<number>,
	lastCall: Array<T>?,
	results: Array<MockFunctionResult>,
}

--[[
	ROBLOX deviation: skipped code
	original code lines 35 - 67
]]

--[[
	ROBLOX deviation START: skipped unsupported TS functionality
	original code:
	export type MaybeMockedDeep<T> = T extends MockableFunction
	  ? MockedFunctionDeep<T>
	  : T extends object
	  ? MockedObjectDeep<T>
	  : T;

	export type MaybeMocked<T> = T extends MockableFunction
	  ? MockedFunction<T>
	  : T extends object
	  ? MockedObject<T>
	  : T;
	]]
export type MaybeMockedDeep<T> = T
export type MaybeMocked<T> = T
-- ROBLOX deviation END

--[[
	ROBLOX deviation: skipped code
	original code lines 81 - 103
]]

-- ROBLOX TODO: Uncomment this type and use it once Luau has supported it
-- ROBLOX TODO: Un in-line the MockInstance type declaration once we have "extends" syntax in Luau
-- type Mock<T, Y> = {
-- 	_isMockFunction: boolean,
-- 	_protImpl: Function,
--     getMockName: () -> string,
--     getMockImplementation: () -> Function?,
--     mock: MockFunctionState<T, Y>,
--     mockClear: () -> Mock<T, Y>,
--     mockReset: () -> Mock<T, Y>,
--     -- ROBLOX deviation: Revisit after https://github.com/facebook/jest/issues/11244
--     mockRestore: any,
--     mockImplementation: (...) -> T) -> Mock<T, Y>,
--     mockImplementationOnce (...) -> T -> Mock<T, Y>,
--     mockName: (string) -> Mock<T, Y>,
--     mockReturnThis: () -> Mock<T, Y>,
--     mockReturnValue: (T) -> Mock<T, Y>,
--     mockReturnValueOnce: (T) -> Mock<T, Y>,
-- 	new: (...) -> T,
-- 	ROBLOX TODO: Use some form of this when Lua supports metamethod typing
-- 	__call: (...) -> T
-- };

-- ROBLOX deviation: MockFunctionResultType defined as string for now but
-- eventually should be = 'return' | 'throw' | 'incomplete';
type MockFunctionResultType = string
type MockFunctionResult = {
	type: MockFunctionResultType,
	value: any,
}
type MockFunctionConfig = {
	-- ROBLOX deviation: mockImpl defined as any for now but should be Function | nil if/when Luau supports general function type
	mockImpl: any,
	mockName: string,
	specificReturnValues: Array<any>,
	-- ROBLOX deviation: specificMockImpls defined as Array<any> for now but should be Array<Function> if/when Luau supports general function type
	specificMockImpls: Array<any>,
}

export type ModuleMocker = {
	isMockFunction: (_self: ModuleMocker, fn: any) -> boolean,
	fn: <T..., Y...>(_self: ModuleMocker, implementation: ((Y...) -> T...)?) -> (MockFn, (...any) -> ...any),
	clearAllMocks: (_self: ModuleMocker) -> (),
	resetAllMocks: (_self: ModuleMocker) -> (),
	restoreAllMocks: (_self: ModuleMocker) -> (),
	mocked: <T>(_self: ModuleMocker, item: T, _deep: boolean?) -> MaybeMocked<T> | MaybeMockedDeep<T>,
}

ModuleMockerClass.__index = ModuleMockerClass
function ModuleMockerClass.new(): ModuleMocker
	local self = {
		_mockState = {},
		_mockConfigRegistry = {},
		_invocationCallCounter = 1,
		_spyState = Set.new(),
	}

	setmetatable(self, ModuleMockerClass)

	return (self :: any) :: ModuleMocker
end

-- ROBLOX deviation: omitting _getSlots as it is specific to JS prototypes

function ModuleMockerClass:_ensureMockConfig(f): MockFunctionConfig
	local config = self._mockConfigRegistry[f]
	if not config then
		config = self:_defaultMockConfig()
		self._mockConfigRegistry[f] = config
	end

	return config
end

-- how to annotate this function
function ModuleMockerClass:_ensureMockState(f): MockFunctionState<any, any>
	local state = self._mockState[f]
	if not state then
		state = self:_defaultMockState()
		self._mockState[f] = state
	end

	-- ROBLOX deviation START: replace .length usages
	-- if
	-- 	state.calls.length
	-- 	> 0 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
	-- then
	-- 	state.lastCall = state.calls[tostring(state.calls.length - 1)]
	-- end
	if #state.calls > 0 then
		state.lastCall = state.calls[#state.calls]
	end
	-- ROBLOX deviation END

	return state
end

function ModuleMockerClass:_defaultMockConfig(): MockFunctionConfig
	return {
		mockImpl = nil,
		mockName = "jest.fn()",
		specificMockImpls = {},
		specificReturnValues = {},
	}
end

function ModuleMockerClass:_defaultMockState()
	return {
		calls = {},
		contexts = {},
		instances = {},
		invocationCallOrder = {},
		results = {},
	}
end

function ModuleMockerClass:_makeComponent(metadata: any, restore)
	if metadata.type == "function" then
		local mocker = self

		local mockConstructor = function(f, ...)
			local args = { ... }

			local mockState = mocker:_ensureMockState(f)
			local mockConfig = mocker:_ensureMockConfig(f)

			-- ROBLOX deviation START: upstream 'this' replaced with f and first arg
			-- table.insert(mockState.instances, self) --[[ ROBLOX CHECK: check if 'mockState.instances' is an Array ]]
			-- table.insert(mockState.contexts, self) --[[ ROBLOX CHECK: check if 'mockState.contexts' is an Array ]]
			table.insert(mockState.instances, f)
			table.insert(mockState.contexts, args[1])
			-- ROBLOX deviation END

			-- ROBLOX deviation: We use a Symbol meant to represent nil instead of
			-- actual nil values to help with handling nil values
			for i = 1, select("#", ...) do
				if args[i] == nil then
					args[i] = Symbol.for_("$$nil")
				end
			end
			table.insert(mockState.calls, args)

			-- Create and record an "incomplete" mock result immediately upon
			-- calling rather than waiting for the mock to return. This avoids
			-- issues caused by recursion where results can be recorded in the
			-- wrong order.
			local mockResult = {
				type = "incomplete",
				value = nil,
			}

			table.insert(mockState.results, mockResult)
			table.insert(mockState.invocationCallOrder, mocker._invocationCallCounter)
			mocker._invocationCallCounter = mocker._invocationCallCounter + 1

			-- ROBLOX deviation: omitted finalReturnValue, thrownError, and
			-- callDidThrowError as we get this state for free with our
			-- pcall error handling

			local ok, result = pcall(function(args_)
				-- ROBLOX deviation: omitted section of code dealing with calling
				-- function as constructor
				local specificMockImpl = Array.shift(mockConfig.specificMockImpls)
				if specificMockImpl == nil then
					specificMockImpl = mockConfig.mockImpl
				end

				if specificMockImpl then
					return specificMockImpl(unpack(args_))
				end

				-- ROBLOX deviation: omitted section on f._protoImpl
				return nil
			end, { ... })

			if not ok then
				mockResult.type = "throw"
				mockResult.value = result

				error(result)
			end

			mockResult.type = "return"
			mockResult.value = result

			return result
		end

		local f = setmetatable({}, { __call = mockConstructor })

		f._isMockFunction = true
		f.getMockImplementation = function()
			return mocker:_ensureMockConfig(f).mockImpl
		end

		if typeof(restore) == "function" then
			mocker._spyState.add(restore)
		end

		mocker._mockState[f] = mocker._defaultMockState()
		mocker._mockConfigRegistry[f] = mocker._defaultMockConfig()

		f.mock = setmetatable({}, {
			__index = function(tbl, key)
				return mocker:_ensureMockState(f)[key]
			end,
			-- ROBLOX deviation: for now we don't have newindex defined as we don't have any use cases
			-- but it should look something like the following
			-- __newindex = function(table, key, value)
			-- 		local state = self:_ensureMockState(f)
			-- 		state[key] = value
			-- 		return state
			-- 	end
		})

		f.mockClear = function()
			mocker._mockState[f] = nil
			return f
		end

		f.mockReset = function()
			f.mockClear()
			mocker._mockConfigRegistry[f] = nil
			return f
		end

		f.mockRestore = function()
			f.mockReset()
			if restore then
				return restore()
			else
				return nil
			end
		end

		-- ROBLOX deviation: omitted mockResolvedValue and mockRejectedValue

		f.mockImplementationOnce = function(fn)
			-- next function call will use this mock implementation return value
			-- or default mock implementation return value
			local mockConfig = mocker:_ensureMockConfig(f)
			table.insert(mockConfig.specificMockImpls, fn)
			return f
		end

		f.mockImplementation = function(fn)
			-- next function call will use mock implementation return value
			local mockConfig = mocker:_ensureMockConfig(f)
			mockConfig.mockImpl = fn
			return f
		end

		f.mockReturnValueOnce = function(value)
			-- next function call will return this value or default return value
			return f.mockImplementationOnce(function()
				return value
			end)
		end

		-- ROBLOX deviation: omitted mockResolvedValueOnce and mockRejectedValueOnce

		f.mockReturnValue = function(value)
			-- next function call will return specified return value or this one
			return f.mockImplementation(function()
				return value
			end)
		end

		f.mockReturnThis = function()
			return f.mockImplementation(function(this)
				return f
			end)
		end

		f.mockName = function(name)
			if name then
				local mockConfig = mocker:_ensureMockConfig(f)
				mockConfig.mockName = name
			end
			return f
		end

		f.getMockName = function()
			local mockConfig = mocker:_ensureMockConfig(f)
			return mockConfig.mockName or "jest.fn()"
		end

		-- ROBLOX deviation: Since we don't have the new keyword in Lua, we add a
		-- fn.new() function
		f.new = function(...)
			f(...)
			return f
		end

		if metadata.mockImpl then
			f.mockImplementation(metadata.mockImpl)
		end

		return f
	else
		error("Call to _makeComponent with non-function")
	end
end

function ModuleMockerClass:_createMockFunction(metadata, mockConstructor)
	local name = metadata.name
	if not name then
		return mockConstructor
	end

	-- ROBLOX TODO: Implement more advanced case for keeping name rather than just returning mockConstructor
	return mockConstructor
end

function ModuleMockerClass:isMockFunction(fn: any)
	return typeof(fn) == "table" and fn._isMockFunction == true
end

-- ROBLOX TODO: type return type as JestMock.Mock<any, any> when Mock type is implemented properly
type MockFn = any -- (...any) -> ...any
function ModuleMockerClass:fn<T..., Y...>(implementation: ((Y...) -> T...)?): (MockFn, (...any) -> ...any)
	local length = 0
	local fn = self:_makeComponent({ length = length, type = "function" })
	if implementation then
		fn.mockImplementation(implementation)
	end

	-- ROBLOX deviation: fn is a callable table,
	-- return a forwarding function as the second return value
	local function mockFn(...)
		return getmetatable(fn).__call(fn, ...)
	end

	return fn, mockFn
end

function ModuleMockerClass:clearAllMocks()
	self._mockState = {}
end

function ModuleMockerClass:resetAllMocks()
	self._mockConfigRegistry = {}
	self._mockState = {}
end

function ModuleMockerClass:restoreAllMocks()
	for key, value in ipairs(self._spyState) do
		key()
	end
	self._spyState = Set.new()
end

--[[
	ROBLOX deviation: skipped private _typeOf method
	original code:
	private _typeOf(value: any): string {
	  return value == null ? '' + value : typeof value;
	}
]]

function ModuleMockerClass:mocked<T>(item: T, _deep: boolean?): MaybeMocked<T> | MaybeMockedDeep<T>
	return item :: any
end

exports.ModuleMocker = ModuleMockerClass

local JestMock = ModuleMockerClass.new()
local fn = function<T..., Y...>(implementation: ((Y...) -> T...)?)
	return JestMock:fn(implementation)
end
exports.fn = fn
-- ROBLOX TODO: spyOn is not implemented
-- local spyOn = JestMock.spyOn
-- exports.spyOn = spyOn
local mocked = JestMock.mocked
exports.mocked = mocked

return exports
