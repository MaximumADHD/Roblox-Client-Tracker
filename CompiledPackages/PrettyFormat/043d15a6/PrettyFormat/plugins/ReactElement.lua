-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/pretty-format/src/plugins/ReactElement.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script.Parent.Parent
local Packages = CurrentModule.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
local exports = {}
local ReactIs = require(Packages.ReactIs)
local typesModule = require(script.Parent.Parent.Types)
type Config = typesModule.Config
type NewPlugin = typesModule.NewPlugin
type Printer = typesModule.Printer
type Refs = typesModule.Refs
local markupModule = require(script.Parent.lib.markup)
local printChildren = markupModule.printChildren
local printElement = markupModule.printElement
local printElementAsLeaf = markupModule.printElementAsLeaf
local printProps = markupModule.printProps

-- Given element.props.children, or subtree during recursive traversal,
-- return flattened array of children.
local function getChildren(arg: unknown, children_: Array<unknown>?)
	local children = children_ or {}
	if Array.isArray(arg) then
		Array.forEach(arg :: Array<unknown>, function(item)
			getChildren(item, children)
		end)
	elseif arg ~= nil and arg ~= false then
		table.insert(children, arg)
	end
	return children
end

local function getType(element: any)
	local type_ = element.type
	if typeof(type_) == "string" then
		return type_
	end
	-- ROBLOX deviation START: functions can't have properties in Lua
	if typeof(type_) == "function" then
		local typeName = debug.info(type_, "n")
		return if Boolean.toJSBoolean(typeName) then typeName else "Unknown"
	end
	if typeof(type_) == "table" then
		local metatable = getmetatable(type_)
		if metatable ~= nil and typeof(metatable.__call) == "function" then
			return if Boolean.toJSBoolean(type_.displayName)
				then type_.displayName
				elseif Boolean.toJSBoolean(type_.name) then type_.name
				else "Unknown"
		end
	end
	-- ROBLOX deviation END

	if ReactIs.isFragment(element) then
		return "React.Fragment"
	end
	if ReactIs.isSuspense(element) then
		return "React.Suspense"
	end
	if typeof(type_) == "table" and type_ ~= nil then
		if ReactIs.isContextProvider(element) then
			return "Context.Provider"
		end
		if ReactIs.isContextConsumer(element) then
			return "Context.Consumer"
		end

		if ReactIs.isForwardRef(element) then
			if Boolean.toJSBoolean(type_.displayName) then
				return type_.displayName
			end

			-- ROBLOX deviation START: check if type_.render is callable table
			local functionName = if typeof(type_.render) == "function"
					and Boolean.toJSBoolean(debug.info(type_.render, "n"))
				then debug.info(type_.render, "n")
				else if typeof(type_.render) == "table"
					then if Boolean.toJSBoolean(type_.render.displayName)
						then type_.render.displayName
						elseif Boolean.toJSBoolean(type_.render.name) then type_.render.name
						else ""
					else ""
			-- ROBLOX deviation END

			return if functionName ~= "" then "ForwardRef(" .. functionName .. ")" else "ForwardRef"
		end

		if ReactIs.isMemo(element) then
			local functionName = if Boolean.toJSBoolean(type_.displayName)
				then type_.displayName
				elseif
					typeof(type_.type) == "table" -- ROBLOX deviation: can't index functions in Lua
					and Boolean.toJSBoolean(type_.type.displayName)
				then type_.type.displayName
				elseif
					typeof(type_.type) == "function" and Boolean.toJSBoolean(debug.info(type_.type, "n"))
				then debug.info(type_.type, "n")
				else ""

			return if functionName ~= "" then "Memo(" .. functionName .. ")" else "Memo"
		end
	end
	return "UNDEFINED"
end

local function getPropKeys(element: any)
	local props = element.props

	return Array.sort(Array.filter(Object.keys(props), function(key)
		return key ~= "children" and props[key] ~= nil
	end))
end

--[[ ROBLOX TODO: Unhandled node for type: TSIndexedAccessType ]]
--[[ export const serialize: NewPlugin['serialize'] ]]
local function serialize(
	element: any,
	config: Config,
	indentation: string,
	depth: number,
	refs: Refs,
	printer: Printer
): string
	depth += 1
	return if depth > config.maxDepth
		then printElementAsLeaf(getType(element), config)
		else printElement(
			getType(element),
			printProps(getPropKeys(element), element.props, config, indentation .. config.indent, depth, refs, printer),
			printChildren(
				getChildren(element.props.children),
				config,
				indentation .. config.indent,
				depth,
				refs,
				printer
			),
			config,
			indentation
		)
end

exports.serialize = serialize
--[[ ROBLOX TODO: Unhandled node for type: TSIndexedAccessType ]]
--[[ export const test: NewPlugin['test'] ]]
local function test(val: unknown): boolean
	return val ~= nil and ReactIs.isElement(val)
end
exports.test = test

local plugin: NewPlugin = { serialize = serialize, test = test }

exports.default = plugin
return exports
