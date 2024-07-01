-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-each/src/bind.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 ]]
local Packages = script.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
local String = LuauPolyfill.String
type Array<T> = LuauPolyfill.Array<T>

local NIL = require(script.Parent.nilPlaceholder)

local exports = {}

local typesModule = require(Packages.JestTypes)
type Global_ConcurrentTestFn = typesModule.Global_ConcurrentTestFn
type Global_EachTable = typesModule.Global_EachTable
type Global_EachTestFn<EachCallback> = typesModule.Global_EachTestFn<EachCallback>
type Global_TemplateData = typesModule.Global_TemplateData
type Global_ArrayTable = typesModule.Global_ArrayTable
type Global_DoneFn = typesModule.Global_DoneFn

local ErrorWithStack = require(Packages.JestUtil).ErrorWithStack
local convertArrayTable = require(script.Parent.table.array).default
local convertTemplateTable = require(script.Parent.table.template).default
local validationModule = require(script.Parent.validation)
local extractValidTemplateHeadings = validationModule.extractValidTemplateHeadings
local validateArrayTable = validationModule.validateArrayTable
local validateTemplateTableArguments = validationModule.validateTemplateTableArguments

-- ROBLOX deviation: add function to handle unavailable methods
local unavailableFn: GlobalCallback = function()
	error("Method unavailable")
end

-- ROBLOX deviation: predefine variables
local isArrayTable, buildArrayTests, buildTemplateTests, getHeadingKeys, applyArguments

export type EachTests = Array<{
	title: string,
	arguments: Array<any>,
}>

-- type TestFn = (done?: Global.DoneFn) => Promise<any> | void | undefined;
type GlobalCallback = (testName: string, fn: Global_ConcurrentTestFn, timeout: number?) -> ()

-- ROBLOX TODO: add type constraint <EachCallback extends Global.TestCallback>
local function default<EachCallback>(cb_: GlobalCallback?, supportsDone_: boolean?)
	local supportsDone = if supportsDone_ ~= nil then supportsDone_ else true
	local cb = cb_ or unavailableFn
	return function(
		table_: Global_EachTable,
		...: any --[[ ROBLOX comment: Upstream type: <Global.TemplateData> (Array<unknown>) ]]
	)
		local taggedTemplateData = if select("#", ...) > 0 then { ... } else {}

		local function eachBind(title: string, test: Global_EachTestFn<EachCallback>, timeout: number?): ()
			local ok, result = pcall(function()
				local tests = if isArrayTable(taggedTemplateData)
					then buildArrayTests(title, table_)
					else buildTemplateTests(title, table_, taggedTemplateData)

				return Array.forEach(tests, function(row)
					-- ROBLOX FIXME Luau: supports done is known to be a boolean at this point
					return cb(row.title, applyArguments(supportsDone, row.arguments, test), timeout)
				end) :: any
			end)

			if not ok then
				local error_ = ErrorWithStack.new(result.message, eachBind)
				return cb(title, function()
					error(error_)
				end)
			end

			return result
		end
		return eachBind
	end
end
exports.default = default

function isArrayTable(data: Global_TemplateData)
	return #data == 0
end

function buildArrayTests(title: string, table_: Global_EachTable): EachTests
	validateArrayTable(table_)
	return convertArrayTable(title, table_ :: Global_ArrayTable)
end

function buildTemplateTests(title: string, table_: Global_EachTable, taggedTemplateData: Global_TemplateData): EachTests
	local headings = getHeadingKeys((table_ :: Array<string>)[1] :: string)
	validateTemplateTableArguments(headings, taggedTemplateData)
	return convertTemplateTable(title, headings, taggedTemplateData)
end

function getHeadingKeys(headings: string): Array<string>
	return String.split(extractValidTemplateHeadings(headings):gsub("%s+", ""), "|")
end

-- ROBLOX TODO: add generic type constraints <EachCallback extends Global.TestCallback>
function applyArguments<EachCallback>(
	supportsDone: boolean,
	params: Array<any>,
	test: Global_EachTestFn<EachCallback>
): Global_EachTestFn<any>
	local argumentCount
	if typeof(test) == "function" then
		argumentCount = debug.info(test, "a")
	else
		argumentCount = 0 -- ROBLOX CHECK: jest.fn()?
	end

	-- ROBLOX deviation START: add logic to unpack and convert NIL placeholders
	local replaceNilPlaceholders
	function replaceNilPlaceholders(val: any): any
		if val == NIL then
			return nil
		elseif Array.isArray(val) then
			return Array.map(val, function(item)
				return replaceNilPlaceholders(item)
			end)
		elseif typeof(val) == "table" then
			Array.forEach(Object.keys(val), function(key)
				val[key] = replaceNilPlaceholders(val[key])
			end)
			return val
		end

		return val
	end

	local unpackTable
	function unpackTable(obj: Array<any>, i_: number?, ...: any)
		local i = if i_ ~= nil then i_ else #obj
		if i == 0 then
			return ...
		end
		return unpackTable(obj, i - 1, replaceNilPlaceholders(obj[i]), ...)
	end
	-- ROBLOX deviation END

	return if supportsDone and #params < argumentCount
		then function(done: Global_DoneFn)
			return test(unpackTable(params), done)
		end
		else function()
			return test(unpackTable(params))
		end
end
return exports
