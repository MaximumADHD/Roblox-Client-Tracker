-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-each/src/table/interpolation.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 ]]

local Packages = script.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
local String = LuauPolyfill.String
type Array<T> = LuauPolyfill.Array<T>

type Record<T, U> = { [T]: U }

local exports = {}

local isPrimitive = require(Packages.JestGetType).isPrimitive

local pretty = require(Packages.PrettyFormat).format

-- ROBLOX deviation START: predefine variables
local getMatchingKeyPaths, replaceKeyPathWithValue, getPath
-- ROBLOX deviation END

export type Template = Record<string, any>
export type Templates = Array<Template>
export type Headings = Array<string>

local function interpolateVariables(title: string, template: Template, index: number): string
	return Array.reduce(
		Array.reduce(Object.keys(template), getMatchingKeyPaths(title), {}), -- aka flatMap
		replaceKeyPathWithValue(template),
		title
		-- ROBLOX deviation START: use gsub to replace variable strings
		-- ):replace("$#", ("%s"):format(tostring(index)))
	)
		:gsub("%$#", tostring(index), 1)
		:gsub("%%#", tostring(index), 1)
	-- ROBLOX deviation END
end
exports.interpolateVariables = interpolateVariables

function getMatchingKeyPaths(title: string)
	return function(matches: Headings, key: string)
		return Array.concat(
			matches,
			(function()
				local ref = {}
				for match in title:gmatch(("%%$%s[%%.%%w]*"):format(key)) do -- ROBLOX deviation: escape characters
					table.insert(ref, match)
				end
				return ref
			end)()
		)
	end
end

function replaceKeyPathWithValue(template: Template): (title: string, match: string) -> string
	return function(title: string, match: string)
		local newMatch = match:gsub("%$", "", 1) -- ROBLOX deviation: escape string
		local keyPath = String.split(newMatch, ".")
		local value = getPath(template, keyPath)
		if isPrimitive(value) then
			return title:gsub(match, tostring(value), 1)
		end
		return title:gsub(match, pretty(value, { maxDepth = 1, min = true }), 1)
	end
end

--[[ eslint import/export: 0]]
--[[ ROBLOX deviation: function overloads not handled
export function getPath<
  Obj extends Template,
  A extends keyof Obj,
  B extends keyof Obj[A],
  C extends keyof Obj[A][B],
  D extends keyof Obj[A][B][C],
  E extends keyof Obj[A][B][C][D],
>(obj: Obj, path: [A, B, C, D, E]): Obj[A][B][C][D][E];
export function getPath<
  Obj extends Template,
  A extends keyof Obj,
  B extends keyof Obj[A],
  C extends keyof Obj[A][B],
  D extends keyof Obj[A][B][C],
>(obj: Obj, path: [A, B, C, D]): Obj[A][B][C][D];
export function getPath<
  Obj extends Template,
  A extends keyof Obj,
  B extends keyof Obj[A],
  C extends keyof Obj[A][B],
>(obj: Obj, path: [A, B, C]): Obj[A][B][C];
export function getPath<
  Obj extends Template,
  A extends keyof Obj,
  B extends keyof Obj[A],
>(obj: Obj, path: [A, B]): Obj[A][B];
export function getPath<Obj extends Template, A extends keyof Obj>(
  obj: Obj,
  path: [A],
): Obj[A];
export function getPath<Obj extends Template>(
  obj: Obj,
  path: Array<string>,
): unknown;
]]

function getPath(template: Template, ref: Array<string>): any
	local head = table.unpack(ref, 1, 1)
	local tail = if #ref > 1 then { table.unpack(ref, 2) } else {}
	if not Boolean.toJSBoolean(head) or template[head] == nil then
		return template
	end
	return getPath(template[head] :: Template, tail)
end
exports.getPath = getPath

return exports
