--!nonstrict
-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/expect/src/asymmetricMatchers.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  *
--  */

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
local Symbol = LuauPolyfill.Symbol
local instanceof = LuauPolyfill.instanceof

type Array<T> = LuauPolyfill.Array<T>
local RegExp = require(Packages.RegExp)
type RegExp = RegExp.RegExp

local getType = require(Packages.JestGetType).getType

-- ROBLOX TODO: import jest-matcher-utils when available
-- import * as matcherUtils from 'jest-matcher-utils';
local matcherUtils = {} :: any
local pluralize = require(Packages.JestUtil).pluralize
local JasmineUtils = require(CurrentModule.jasmineUtils)
local equals = JasmineUtils.equals
local hasProperty = JasmineUtils.hasProperty
local isA = JasmineUtils.isA
local isUndefined = JasmineUtils.isUndefined

local getState = require(CurrentModule.jestMatchersObject_extracted).getState
local Types = require(CurrentModule.types)
-- ROBLOX TODO: import correct types
type AssymetricMatcherInterface = any
type MatcherState = Types.MatcherState
local Utils = require(CurrentModule.utils)
local iterableEquality = Utils.iterableEquality
local subsetEquality = Utils.subsetEquality
-- local emptyObject = require(CurrentModule.utils).emptyObject

local utils = Object.freeze(Object.assign({}, matcherUtils, {
	iterableEquality = iterableEquality,
	subsetEquality = subsetEquality,
}))

-- ROBLOX deviation START: use old class scheme
-- type AsymmetricMatcher<T> = {
-- 	getMatcherContext: (self: AsymmetricMatcher<T>) -> State_,
-- 	asymmetricMatch: (self: AsymmetricMatcher<T>, other: unknown) -> boolean,
-- 	toString: (self: AsymmetricMatcher<T>) -> string,
-- 	getExpectedType: ((self: AsymmetricMatcher<T>) -> string)?,
-- 	toAsymmetricMatcher: ((self: AsymmetricMatcher<T>) -> string)?,
-- }
-- local AsymmetricMatcher = {}
-- AsymmetricMatcher.__index = AsymmetricMatcher
-- ROBLOX deviation END

export type AsymmetricMatcher<T> = {
	-- ROBLOX deviation START: use '$' characters in typeof
	-- __typeof --[[ ROBLOX CHECK: replaced unhandled characters in identifier. Original identifier: $$typeof ]]: any,
	["$$typeof"]: any,
	-- ROBLOX deviation END
	-- ROBLOX deviation START: add missing generic parameters
	-- asymmetricMatch: (self: AsymmetricMatcher, other: unknown) -> boolean,
	-- toString: (self: AsymmetricMatcher) -> string,
	-- getExpectedType: (self: AsymmetricMatcher) -> string,
	-- toAsymmetricMatcher: (self: AsymmetricMatcher) -> string,
	asymmetricMatch: (self: AsymmetricMatcher<T>, other: unknown) -> boolean,
	toString: (self: AsymmetricMatcher<T>) -> string,
	getExpectedType: (self: AsymmetricMatcher<T>) -> string,
	toAsymmetricMatcher: (self: AsymmetricMatcher<T>) -> string,
	-- ROBLOX deviation END
}
type AsymmetricMatcher_private<T> = { --
	-- *** PUBLIC ***
	--
	-- ROBLOX deviation START: use '$' characters in typeof
	-- __typeof --[[ ROBLOX CHECK: replaced unhandled characters in identifier. Original identifier: $$typeof ]]: any,
	["$$typeof"]: any,
	-- ROBLOX deviation END

	-- ROBLOX deviation START: add missing generic parameters
	-- asymmetricMatch: (self: AsymmetricMatcher_private, other: unknown) -> boolean,
	-- toString: (self: AsymmetricMatcher_private) -> string,
	-- getExpectedType: (self: AsymmetricMatcher_private) -> string,
	-- toAsymmetricMatcher: (self: AsymmetricMatcher_private) -> string,
	asymmetricMatch: (self: AsymmetricMatcher_private<T>, other: unknown) -> boolean,
	toString: (self: AsymmetricMatcher_private<T>) -> string,
	getExpectedType: (self: AsymmetricMatcher_private<T>) -> string,
	toAsymmetricMatcher: (self: AsymmetricMatcher_private<T>) -> string,
	-- ROBLOX deviation END

	--
	-- *** PROTECTED ***
	--
	sample: T,
	inverse: boolean,

	-- ROBLOX deviation START: add missing generic parameters
	-- getMatcherContext: (self: AsymmetricMatcher_private) -> MatcherState,
	getMatcherContext: (self: AsymmetricMatcher_private<T>) -> MatcherState,
	-- ROBLOX deviation END
}
type AsymmetricMatcher_statics = { new: <T>(sample: T, inverse_: boolean?) -> AsymmetricMatcher<T> }
local AsymmetricMatcher = {} :: AsymmetricMatcher<any> & AsymmetricMatcher_statics
local AsymmetricMatcher_private = AsymmetricMatcher :: AsymmetricMatcher_private<any> & AsymmetricMatcher_statics;
(AsymmetricMatcher :: any).__index = AsymmetricMatcher

function AsymmetricMatcher_private.new<T>(sample: T, inverse_: boolean?): AsymmetricMatcher<T>
	-- ROBLOX deviation START: define self differently so typeof can be set
	-- local self = setmetatable({}, AsymmetricMatcher)
	-- ROBLOX deviation END
	local inverse: boolean = if inverse_ ~= nil then inverse_ else false

	-- ROBLOX deviation START: define self differently so typeof can be set
	-- self.sample = sample
	-- self.inverse = inverse
	-- self.__typeof --[[ ROBLOX CHECK: replaced unhandled characters in identifier. Original identifier: $$typeof ]] =
	-- 	Symbol:for_("jest.asymmetricMatcher")
	local self = {
		sample = sample,
		inverse = if inverse == nil then false else inverse,
		["$$typeof"] = Symbol.for_("jest.asymmetricMatcher"),
	}
	setmetatable(self, AsymmetricMatcher)
	-- ROBLOX deviation END

	return (self :: any) :: AsymmetricMatcher<T>
end

function AsymmetricMatcher_private:getMatcherContext(): MatcherState
	return Object.assign({}, getState(), { equals = equals, isNot = self.inverse, utils = utils })
end

-- ROBLOX deviation START: abstract methods that cannot be implemented
-- function AsymmetricMatcher_private:asymmetricMatch(other: unknown): boolean
-- 	error("not implemented abstract method")
-- end
-- function AsymmetricMatcher_private:toString(): string
-- 	error("not implemented abstract method")
-- end
-- function AsymmetricMatcher_private:getExpectedType(): string
-- 	error("not implemented method")
-- end
-- function AsymmetricMatcher_private:toAsymmetricMatcher(): string
-- 	error("not implemented method")
-- end
-- ROBLOX deviation END

-- ROBLOX deviation: our implementation of any has significant deviations, check README for more info
-- > any("number"):asymmetricMatch(1) -- true
-- > any("number"):toAsymmetricMatcher() -- "Any<number>"
-- > any(ClassA):asymmetricMatch(ClassA.new()) -- true
-- > any(ClassA):asymmetricMatch(ClassB.new()) -- false
-- > any(ClassA):asymmetricMatch(DerivedClassA.new()) -- true
local Any = {}
Any.__index = Any
setmetatable(Any, AsymmetricMatcher)
function Any.new(sample: any)
	if typeof(sample) ~= "table" and typeof(sample) ~= "string" then
		error(
			"any() expects to be passed a typename string or a prototype class. "
				.. "Please pass one or use anything() to match any object."
		)
	end
	local self = AsymmetricMatcher.new(sample)
	setmetatable(self, Any)
	return self
end

function Any:asymmetricMatch(other: any): boolean
	-- ROBLOX deviation: simplified since this covers all the cases in Lua
	local selfType = getType(self.sample)
	local otherType = getType(other)
	-- compare metatable to check instance of Lua prototypical class
	if (selfType == "table" and otherType == "table") or (selfType == "error" and otherType == "error") then
		return instanceof(other, self.sample)
		-- check type matches type provided by string
	elseif selfType == "string" and self.sample == otherType then
		return true
	end
	return false
end

function Any:toString(): string
	return "Any"
end

function Any:getExpectedType(): string
	-- ROBLOX deviation: simplified since this already covers all the cases in Lua
	return tostring(self.sample)
end

function Any:toAsymmetricMatcher(): string
	return "Any<" .. tostring(self.sample) .. ">"
end

local Anything = {}
Anything.__index = Anything
setmetatable(Anything, AsymmetricMatcher)
function Anything.new(sample: any)
	local self = AsymmetricMatcher.new(sample)
	setmetatable(self, Anything)
	return self
end

function Anything:asymmetricMatch(other: any): boolean
	-- ROBLOX deviation: other !== null is redundant since Lua doesn't distinguish undefined/nil
	return not isUndefined(other)
end

function Anything:toString(): string
	return "Anything"
end

-- No getExpectedType method, because it matches either null or undefined.

function Anything:toAsymmetricMatcher(): string
	return "Anything"
end

-- ROBLOX deviation START: asymmetric matcher that matches undefined/nil
local Nothing = {}
Nothing.__index = Nothing
setmetatable(Nothing, AsymmetricMatcher)
function Nothing.new(sample: any)
	local self = AsymmetricMatcher.new(sample)
	setmetatable(self, Nothing)
	return self
end

function Nothing:asymmetricMatch(other: any): boolean
	return isUndefined(other)
end

function Nothing:toString(): string
	return "Nothing"
end

function Nothing:getExpectedType(): string
	return "nil"
end

function Nothing:toAsymmetricMatcher(): string
	return "Nothing"
end
-- ROBLOX deviation END

local ArrayContaining = {}
ArrayContaining.__index = ArrayContaining
setmetatable(ArrayContaining, AsymmetricMatcher)
function ArrayContaining.new(sample: { any }, inverse: boolean?)
	inverse = if inverse ~= nil then inverse else false
	local self = AsymmetricMatcher.new(sample, inverse)
	setmetatable(self, ArrayContaining)
	return self
end

function ArrayContaining:asymmetricMatch(other: { any })
	if not Array.isArray(self.sample) then
		error(string.format("You must provide an array to %s, not '%s'.", self:toString(), typeof(self.sample)))
	end

	local result = false
	if #self.sample == 0 then
		result = true
	elseif
		Array.isArray(other)
		and Array.every(self.sample, function(item)
			return Array.some(other, function(another)
				return equals(item, another)
			end)
		end)
	then
		result = true
	end

	if self.inverse then
		return not result
	end
	return result
end

function ArrayContaining:toString(): string
	if self.inverse then
		return "ArrayNotContaining"
	end
	return "ArrayContaining"
end

function ArrayContaining:getExpectedType(): string
	return "array"
end

local ObjectContaining = {}
ObjectContaining.__index = ObjectContaining
setmetatable(ObjectContaining, AsymmetricMatcher)
function ObjectContaining.new(sample: { any }, inverse: boolean?)
	inverse = if inverse ~= nil then inverse else false
	local self = AsymmetricMatcher.new(sample, inverse)
	setmetatable(self, ObjectContaining)
	return self
end

function ObjectContaining:asymmetricMatch(other: { any })
	-- ROBLOX deviation: check for type table instead of object
	if typeof(self.sample) ~= "table" then
		error(string.format("You must provide an object to %s, not '%s'.", self:toString(), typeof(self.sample)))
	end

	local result = true

	for property, value in pairs(self.sample) do
		if not hasProperty(other, property) or not equals(value, other[property]) then
			result = false
			break
		end
	end

	return if self.inverse then not result else result
end

function ObjectContaining:toString(): string
	if self.inverse then
		return "ObjectNotContaining"
	end
	return "ObjectContaining"
end

function ObjectContaining:getExpectedType(): string
	return "object"
end

local StringContaining = {}
StringContaining.__index = StringContaining
setmetatable(StringContaining, AsymmetricMatcher)
function StringContaining.new(sample: string, inverse: boolean?)
	inverse = if inverse ~= nil then inverse else false
	if not isA("string", sample) then
		error("Expected is not a String")
	end
	local self = AsymmetricMatcher.new(sample, inverse)
	setmetatable(self, StringContaining)
	return self
end

function StringContaining:asymmetricMatch(other: string): boolean
	local result = isA("string", other) and other:find(self.sample, 1, true)

	if self.inverse then
		return not result
	end
	return not not result
end

function StringContaining:toString(): string
	if self.inverse then
		return "StringNotContaining"
	end
	return "StringContaining"
end

function StringContaining:getExpectedType(): string
	return "string"
end

local StringMatching = {}
StringMatching.__index = StringMatching
setmetatable(StringMatching, AsymmetricMatcher)
function StringMatching.new(sample: string | RegExp, inverse: boolean?)
	inverse = if inverse ~= nil then inverse else false
	-- ROBLOX deviation: we accept matches against a Lua string pattern or RegExp polyfill
	if not isA("string", sample) and not isA("regexp", sample) then
		error("Expected is not a String")
	end
	local self = AsymmetricMatcher.new(sample, inverse)
	setmetatable(self, StringMatching)
	return self
end

function StringMatching:asymmetricMatch(other: string): boolean
	local result = false
	if isA("string", other) then
		-- Lua pattern case
		if isA("string", self.sample) then
			-- ROBLOX deviation: escape chalk sequences if necessary
			self.sample = string.gsub(self.sample, string.char(27) .. "%[", string.char(27) .. "%%[")
			result = other:find(self.sample)
			-- Regex case
		else
			result = self.sample:test(other)
		end
	end

	if self.inverse then
		return not result
	end
	return not not result
end

function StringMatching:toString(): string
	if self.inverse then
		return "StringNotMatching"
	end
	return "StringMatching"
end

function StringMatching:getExpectedType(): string
	return "string"
end

type CloseTo = AsymmetricMatcher<number> & {
	asymmetricMatch: (self: CloseTo, other: number) -> any,
	toString: (self: CloseTo) -> any,
	getExpectedType: (self: CloseTo) -> any,
	toAsymmetricMatcher: (self: CloseTo) -> string,
}

type CloseTo_private = AsymmetricMatcher<number> & { --
	-- *** PUBLIC ***
	--
	asymmetricMatch: (self: CloseTo_private, other: number) -> any,
	toString: (self: CloseTo_private) -> any,
	getExpectedType: (self: CloseTo_private) -> any,
	toAsymmetricMatcher: (self: CloseTo_private) -> string,
	--
	-- *** PRIVATE ***
	--
	precision: number,
}

type CloseTo_statics = { new: (sample: number, precision_: number?, inverse_: boolean?) -> CloseTo }

local CloseTo = (setmetatable({}, { __index = AsymmetricMatcher }) :: any) :: CloseTo & CloseTo_statics
local CloseTo_private = CloseTo :: CloseTo_private & CloseTo_statics;
(CloseTo :: any).__index = CloseTo

function CloseTo.new(sample: number, precision_: number?, inverse_: boolean?): CloseTo
	local precision: number = if precision_ ~= nil then precision_ else 2
	local inverse: boolean = if inverse_ ~= nil then inverse_ else false
	if not Boolean.toJSBoolean(isA("number", sample)) then
		error(Error.new("Expected is not a Number"))
	end
	if not Boolean.toJSBoolean(isA("number", precision)) then
		error(Error.new("Precision is not a Number"))
	end

	local self = AsymmetricMatcher.new(sample)
	setmetatable(self, CloseTo)
	self.inverse = inverse
	self.precision = precision

	return (self :: any) :: CloseTo
end

function CloseTo_private:asymmetricMatch(other: number)
	if not Boolean.toJSBoolean(isA("number", other)) then
		return false
	end
	local result = false
	if other == math.huge and self.sample == math.huge then
		result = true -- Infinity - Infinity is NaN
	elseif other == -math.huge and self.sample == -math.huge then
		result = true -- -Infinity - -Infinity is NaN
	else
		result = math.abs(self.sample - other) < math.pow(10, -self.precision) / 2 --[[ ROBLOX CHECK: operator '<' works only if either both arguments are strings or both are a number ]]
	end
	return if Boolean.toJSBoolean(self.inverse) then not Boolean.toJSBoolean(result) else result
end

function CloseTo_private:toString()
	return ("Number%sCloseTo"):format(if Boolean.toJSBoolean(self.inverse) then "Not" else "")
end

function CloseTo_private:getExpectedType()
	return "number"
end

function CloseTo_private:toAsymmetricMatcher(): string
	return Array.join({
		self:toString(),
		self.sample,
		("(%s)"):format(tostring(pluralize("digit", self.precision))),
	}, " ")
end

return {
	AsymmetricMatcher = AsymmetricMatcher,
	any = function(expectedObject: any)
		return Any.new(expectedObject)
	end,
	anything = function()
		return Anything.new()
	end,
	nothing = function()
		return Nothing.new()
	end,
	arrayContaining = function(sample: { any })
		return ArrayContaining.new(sample)
	end,
	arrayNotContaining = function(sample: { any })
		return ArrayContaining.new(sample, true)
	end,
	objectContaining = function(sample: any)
		return ObjectContaining.new(sample)
	end,
	objectNotContaining = function(sample: any)
		return ObjectContaining.new(sample, true)
	end,
	stringContaining = function(expected: string)
		return StringContaining.new(expected)
	end,
	stringNotContaining = function(expected: string)
		return StringContaining.new(expected, true)
	end,
	stringMatching = function(expected: string | RegExp)
		return StringMatching.new(expected)
	end,
	stringNotMatching = function(expected: string | RegExp)
		return StringMatching.new(expected, true)
	end,
	closeTo = function(expected: number, precision: number?): CloseTo
		return CloseTo.new(expected, precision)
	end,
	notCloseTo = function(expected: number, precision: number?): CloseTo
		return CloseTo.new(expected, precision, true)
	end,
}
