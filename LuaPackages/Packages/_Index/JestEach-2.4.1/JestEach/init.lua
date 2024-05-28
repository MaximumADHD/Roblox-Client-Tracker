-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-each/src/index.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 ]]

local Packages = script.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
type Object = LuauPolyfill.Object

type ReturnType<T> = any

local NIL = require(script.nilPlaceholder)

local exports = {}

local typesModule = require(Packages.JestTypes)
type Global_BlockFn = typesModule.Global_BlockFn
type Global_Global = typesModule.Global_Global
type Global_EachTable = typesModule.Global_EachTable
type Global_EachTestFn<EachCallback> = typesModule.Global_EachTestFn<EachCallback>
type Global_TemplateData = typesModule.Global_TemplateData
type Global_TestFn = typesModule.Global_TestFn

local bind = require(script.bind).default

type Global = Global_Global

local function install(
	g: Global_Global,
	table_: Global_EachTable,
	...: any --[[ ROBLOX deviation: Upstream array type <Global.TemplateData>. Element type : unknown ]]
)
	local data = if select("#", ...) > 0 then { ... } else {}

	local bindingWithArray = #data == 0
	local bindingWithTemplate = Array.isArray(table_) and Boolean.toJSBoolean((table_ :: any).raw)
	if not bindingWithArray and not bindingWithTemplate then
		error(Error.new("`.each` must only be called with an Array or Tagged Template Literal."))
	end
	local test = setmetatable({}, {
		__call = function(_self, title: string, test: Global_EachTestFn<Global_TestFn>, timeout: number?)
			return bind(g.test)(table_, table.unpack(data))(title, test, timeout)
		end,
	})

	test.skip = bind(if g.test then g.test.skip else nil)(table_, table.unpack(data))
	test.only = bind(if g.test then g.test.only else nil)(table_, table.unpack(data))

	-- ROBLOX TODO: concurrent not available
	-- local testConcurrent = setmetatable({
	-- }, {
	-- 	__call = function(_self, title: string, test: Global_EachTestFn<Global_TestFn>, timeout: number?)
	-- 		return bind(g.test.concurrent)(table_, table.unpack(data))(title, test, timeout)
	-- 	end,
	-- })
	-- 	test.concurrent = testConcurrent,
	-- 	test.only = bind(g.test.concurrent.only)(table_, table.unpack(data)),
	-- 	test.skip = bind(g.test.concurrent.skip)(table_, table.unpack(data)),

	local it = setmetatable({}, {
		__call = function(_self, title: string, test: Global_EachTestFn<Global_TestFn>, timeout: number?)
			return bind(g.it)(table_, table.unpack(data))(title, test, timeout)
		end,
	})

	it.skip = bind(if g.it then g.it.skip else nil)(table_, table.unpack(data))
	it.only = bind(if g.it then g.it.only else nil)(table_, table.unpack(data))

	-- ROBLOX TODO: concurrent not available
	-- it.concurrent = testConcurrent;

	local xit = bind(g.xit)(table_, table.unpack(data))
	local fit = bind(g.fit)(table_, table.unpack(data))
	local xtest = bind(g.xtest)(table_, table.unpack(data))

	local describe = setmetatable({}, {
		__call = function(_self, title: string, suite: Global_EachTestFn<Global_BlockFn>, timeout: number?)
			return bind(g.describe, false)(table_, table.unpack(data))(title, suite, timeout)
		end,
	})

	describe.skip = bind(if g.describe then g.describe.skip else nil, false)(table_, table.unpack(data))
	describe.only = bind(if g.describe then g.describe.only else nil, false)(table_, table.unpack(data))

	local fdescribe = bind(g.fdescribe, false)(table_, table.unpack(data))
	local xdescribe = bind(g.xdescribe, false)(table_, table.unpack(data))

	-- ROBLOX deviation START: support testEZ methods
	local testSKIP = bind(g.testSKIP)(table_, table.unpack(data))
	local testFOCUS = bind(g.testFOCUS)(table_, table.unpack(data))
	local itSKIP = bind(g.itSKIP)(table_, table.unpack(data))
	local itFOCUS = bind(g.itFOCUS)(table_, table.unpack(data))
	local describeSKIP = bind(g.describeSKIP, false)(table_, table.unpack(data))
	local describeFOCUS = bind(g.describeFOCUS, false)(table_, table.unpack(data))
	-- ROBLOX deviation END

	return {
		describe = describe,
		fdescribe = fdescribe,
		fit = fit,
		it = it,
		test = test,
		xdescribe = xdescribe,
		xit = xit,
		xtest = xtest,
		-- ROBLOX deviation START: support TestEZ methods
		describeSKIP = describeSKIP,
		describeFOCUS = describeFOCUS,
		itSKIP = itSKIP,
		itFOCUS = itFOCUS,
		testSKIP = testSKIP,
		testFOCUS = testFOCUS,
		-- ROBLOX deviation END
	}
end

-- ROBLOX deviation START: handle template data
local function maybeHandleTemplateString(table_: any): Global_EachTable
	if typeof(table_) == "string" then
		local templateString = table_ :: string
		local raw = templateString
		local strings = {}
		local expressions = {}
		local startIndex = 1
		local endIndex = 1
		local expressionStarted = false
		for i = 1, #templateString do
			local current = string.sub(templateString, i, i)
			local next = if i < #templateString then string.sub(templateString, i + 1, i + 1) else nil
			if i == #templateString then
				if expressionStarted then
					error("expression not closed")
				end
				table.insert(strings, string.sub(templateString, startIndex))
			elseif not expressionStarted and current == "$" then
				if next == "{" then
					expressionStarted = true
					endIndex = i - 1
				end
			elseif expressionStarted and current == "}" then
				local str = string.sub(templateString, startIndex, endIndex)
				local exp = string.sub(templateString, endIndex + 3, i - 1)
				table.insert(strings, str)
				table.insert(expressions, exp)
				startIndex = i + 1
				expressionStarted = false
			end
		end

		return (setmetatable(strings, {
			__index = {
				raw = raw,
			},
		}) :: any) :: Global_EachTable
	else
		return table_
	end
end
-- ROBLOX deviation END

-- ROBLOX deviation: wrap in function to pass jests methods (it, describe, etc)
local each = function(jestMethods_: Object?)
	local jestMethods = (if jestMethods_ ~= nil then jestMethods_ else {}) :: Object
	--[[
		ROBLOX deviation START: TestEZ it/test/describe are functions, make them callable objects
		to handle them the same way as jest's API and support both.
	]]
	Array.forEach(Object.keys(jestMethods), function(key)
		local maybeMethod = jestMethods[key]
		jestMethods[key] = if typeof(maybeMethod) == "function"
			then setmetatable({}, {
				__call = function(_self, ...)
					return maybeMethod(...)
				end,
			})
			else maybeMethod
	end)
	-- ROBLOX deviation END
	return setmetatable({
		withGlobal = function(g: Global)
			return function(table_: Global_EachTable, ...)
				return install(g, maybeHandleTemplateString(table_), ...)
			end
		end,
	}, {
		__call = function(_self, table_: Global_EachTable, ...): ReturnType<typeof(install)>
			-- ROBLOX deviation: jestMethods, are passed as parameters, not taken from global
			return install(jestMethods :: Global, maybeHandleTemplateString(table_), ...)
		end,
	})
end

exports.bind = bind

exports.default = each

exports.NIL = NIL

return exports
