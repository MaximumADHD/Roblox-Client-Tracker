-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-each/src/table/template.ts
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
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>

local exports = {}

-- ROBLOX deviation: predefine variables
local convertRowToTable, convertTableToTemplates

local typesModule = require(Packages.JestTypes)
type Global_Row = typesModule.Global_Row
type Global_Table = typesModule.Global_Table

-- local bindModule = require(script.Parent.Parent.bind)
-- type EachTests = bindModule.EachTests
type EachTests = any
local interpolationModule = require(script.Parent.interpolation)
type Headings = interpolationModule.Headings
type Template = interpolationModule.Template
type Templates = interpolationModule.Templates
local interpolateVariables = require(script.Parent.interpolation).interpolateVariables

local function default(title: string, headings: Headings, row: Global_Row): EachTests
	local table_ = convertRowToTable(row, headings)
	local templates = convertTableToTemplates(table_, headings)
	return Array.map(templates, function(template, index)
		return {
			arguments = { Object.assign({}, template) },
			-- ROBLOX FIXME Luau: analyze should know this is Template because of the Array.map() generic's callbackFn
			title = interpolateVariables(title, template :: Template, index),
		}
	end)
end

exports.default = default

function convertRowToTable(row: Global_Row, _headings: Headings): Global_Table
	-- ROBLOX deviation: rows are already formatted as arrays (because there are no tagged templates)
	return row
end

function convertTableToTemplates(table_: Global_Table, headings: Headings): Templates
	return Array.map(table_, function(row)
		return Array.reduce(row, function(
			-- ROBLOX FIXME Luau: should be inferred from reduce's initial value
			acc: Template,
			value,
			index
		)
			return Object.assign(acc, { [headings[index]] = value })
		end, {} :: Template)
	end)
end

return exports
