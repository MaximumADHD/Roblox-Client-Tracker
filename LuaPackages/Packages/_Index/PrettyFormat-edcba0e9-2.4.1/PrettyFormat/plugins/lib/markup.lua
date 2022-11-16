-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/pretty-format/src/plugins/lib/markup.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

type unknown = any --[[ ROBLOX FIXME: adding `unknown` type alias to make it easier to use Luau unknown equivalent when supported ]]
local CurrentModule = script.Parent.Parent.Parent
local Packages = CurrentModule.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
type Array<T> = LuauPolyfill.Array<T>
type Record<K, T> = { [K]: T }

local exports = {}

-- ROBLOX deviation START: predefine functions
local printProps
local printChildren
local printText
local printComment
local printElement
local printElementAsLeaf
-- ROBLOX deviation END

local typesModule = require(script.Parent.Parent.Parent.Types)
type Config = typesModule.Config
type Printer = typesModule.Printer
type Refs = typesModule.Refs
local escapeHTML = require(script.Parent.escapeHTML).default

-- ROBLOX deviation START: adding default colors since we don't currently support colors
type Colors = typesModule.Colors
local DEFAULT_COLORS: Colors = {
	comment = { close = "", open = "" },
	content = { close = "", open = "" },
	prop = { close = "", open = "" },
	tag = { close = "", open = "" },
	value = { close = "", open = "" },
}
-- ROBLOX deviation END

-- Return empty string if keys is empty.
function printProps(
	keys: Array<string>,
	props: Record<string, unknown>,
	config: Config,
	indentation: string,
	depth: number,
	refs: Refs,
	printer: Printer
): string
	local indentationNext = indentation .. config.indent

	-- ROBLOX deviation: adding default value as we don't support colors
	local colors = config.colors or DEFAULT_COLORS
	return Array.join(
		Array.map(keys, function(key: string)
			local value = props[key]
			local printed = printer(value, config, indentationNext, depth, refs)

			if typeof(value) ~= "string" then
				if string.find(printed, "\n") ~= nil then
					printed = config.spacingOuter .. indentationNext .. printed .. config.spacingOuter .. indentation
				end
				printed = "{" .. printed .. "}"
			end

			-- ROBLOX deviation: keys can be of type table. eg. when using ReactRoblox.Change
			local key_ = if typeof(key) == "table"
				then (if key.name then key.name else printer(key, config, indentationNext, depth, refs))
				else key

			return config.spacingInner
				.. indentation
				.. colors.prop.open
				.. colors.prop.open
				.. key_
				.. colors.prop.close
				.. "="
				.. colors.value.open
				.. printed
				.. colors.value.close
				.. colors.value.close
		end),
		""
	)
end
exports.printProps = printProps

-- Return empty string if children is empty.
function printChildren(
	children: Array<unknown>,
	config: Config,
	indentation: string,
	depth: number,
	refs: Refs,
	printer: Printer
): string
	return Array.join(
		Array.map(children, function(child)
			return config.spacingOuter
				.. indentation
				.. if typeof(child) == "string"
					then printText(child, config)
					else printer(child, config, indentation, depth, refs)
		end),
		""
	)
end
exports.printChildren = printChildren

function printText(text: string, config: Config): string
	-- ROBLOX deviation START: adding default value as we don't support colors
	local colors = config.colors or DEFAULT_COLORS
	local contentColor = colors.content
	-- ROBLOX deviation END
	return contentColor.open .. escapeHTML(text) .. contentColor.close
end
exports.printText = printText

function printComment(comment: string, config: Config): string
	-- ROBLOX deviation START: adding default value as we don't support colors
	local colors = config.colors or DEFAULT_COLORS
	local commentColor = colors.comment
	-- ROBLOX deviation END
	return commentColor.open .. "<!--" .. escapeHTML(comment) .. "-->" .. commentColor.close
end
exports.printComment = printComment

-- Separate the functions to format props, children, and element,
-- so a plugin could override a particular function, if needed.
-- Too bad, so sad: the traditional (but unnecessary) space
-- in a self-closing tagColor requires a second test of printedProps.
function printElement(
	type_: string,
	printedProps: string,
	printedChildren: string,
	config: Config,
	indentation: string
): string
	-- ROBLOX deviation START: adding default value as we don't support colors
	local colors = config.colors or DEFAULT_COLORS
	local tagColor = colors.tag
	-- ROBLOX deviation END
	return tagColor.open
		.. "<"
		.. type_
		.. (if Boolean.toJSBoolean(printedProps)
			then tagColor.close .. printedProps .. config.spacingOuter .. indentation .. tagColor.open
			else printedProps)
		.. (if Boolean.toJSBoolean(printedChildren)
			then
				">"
				.. tagColor.close
				.. printedChildren
				.. config.spacingOuter
				.. indentation
				.. tagColor.open
				.. "</"
				.. type_
			else (if Boolean.toJSBoolean(printedProps) and not Boolean.toJSBoolean(config.min) then "" else " ") .. "/")
		.. ">"
		.. tagColor.close
end
exports.printElement = printElement

function printElementAsLeaf(type_: string, config: Config): string
	-- ROBLOX deviation START: adding default value as we don't support colors
	local colors = config.colors or DEFAULT_COLORS
	local tagColor = colors.tag
	-- ROBLOX deviation END
	return tagColor.open .. "<" .. type_ .. tagColor.close .. " …" .. tagColor.open .. " />" .. tagColor.close
end
exports.printElementAsLeaf = printElementAsLeaf

return exports
