-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/pretty-format/src/plugins/ReactTestComponent.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

type unknown = any --[[ ROBLOX FIXME: adding `unknown` type alias to make it easier to use Luau unknown equivalent when supported ]]

local CurrentModule = script.Parent.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
local Symbol = LuauPolyfill.Symbol
type Array<T> = LuauPolyfill.Array<T>
type Symbol = LuauPolyfill.Symbol
type Record<K, T> = { [K]: T }

local exports = {}

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

export type ReactTestObject = {
	-- ROBLOX deviation: using number to match roact-alignment
	["$$typeof"]: number,
	type: string,
	props: Record<string, unknown>?,
	children: (nil | Array<ReactTestChild>)?,
}

-- Child can be `number` in Stack renderer but not in Fiber renderer.
type ReactTestChild = ReactTestObject | string | number

-- ROBLOX deviation: Symbol is always available in polyfills
local testSymbol = Symbol.for_("react.test.json")

local function getPropKeys(object: ReactTestObject)
	local props = object.props

	return if props ~= nil
		then Array.sort(Array.filter(Object.keys(props), function(key)
			return props[key] ~= nil
		end))
		else {}
end

-- local serialize: Function --[[ ROBLOX TODO: Unhandled node for type: TSIndexedAccessType ]] --[[ NewPlugin['serialize'] ]]
local function serialize(
	object: ReactTestObject,
	config: Config,
	indentation: string,
	depth: number,
	refs: Refs,
	printer: Printer
)
	depth += 1
	return if depth > config.maxDepth
		then printElementAsLeaf(object.type, config)
		else printElement(
			object.type,
			if object.props ~= nil
				then printProps(
					getPropKeys(object),
					object.props,
					config,
					indentation .. config.indent,
					depth,
					refs,
					printer
				)
				else "",
			if object.children ~= nil
				then printChildren(object.children, config, indentation .. config.indent, depth, refs, printer)
				else "",
			config,
			indentation
		)
end
exports.serialize = serialize

-- local test: any --[[ ROBLOX TODO: Unhandled node for type: TSIndexedAccessType ]] --[[ NewPlugin['test'] ]]
local function test(val)
	return typeof(val) == "table" and val["$$typeof"] == testSymbol
end
exports.test = test

local plugin: NewPlugin = { serialize = serialize, test = test }

exports.default = plugin

return exports
