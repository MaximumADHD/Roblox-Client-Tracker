-- ROBLOX upstream: https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/Lists/VirtualizedListContext.js
--[[*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @flow strict-local
 * @format
 ]]
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
type Object = LuauPolyfill.Object

-- ROBLOX deviation: unavailable Types
type ReadOnly<T> = T

-- ROBLOX FIXME: use proper type when available. Circular dep maybe?
-- local VirtualizedListModule = require(script.Parent.VirtualizedList)
-- type VirtualizedList = VirtualizedListModule.VirtualizedList
type VirtualizedList = Object

local React = require(Packages.React)
local useMemo = React.useMemo
local useContext = React.useContext
type React_Node = React.Node
type React_Context<T> = React.Context<T>

local exports = {}

type Frame = ReadOnly<{
	offset: number,
	length: number,
	index: number,
	inLayout: boolean,
}>

export type ChildListState = ReadOnly<{
	first: number,
	last: number,
	frames: { [number]: Frame },
}>

-- Data propagated through nested lists (regardless of orientation) that is
-- useful for producing diagnostics for usage errors involving nesting (e.g
-- missing/duplicate keys).
export type ListDebugInfo = ReadOnly<
	{
		cellKey: string,
		listKey: string,
		parent: ListDebugInfo?,
		-- We include all ancestors regardless of orientation, so this is not always
		-- identical to the child's orientation.
		horizontal: boolean,
	}
>

type Context = ReadOnly<{
	cellKey: string?,
	getScrollMetrics: () -> {
		contentLength: number,
		dOffset: number,
		dt: number,
		offset: number,
		timestamp: number,
		velocity: number,
		visibleLength: number,
	},
	horizontal: boolean?,
	getOutermostParentListRef: () -> VirtualizedList,
	getNestedChildState: (string) -> ChildListState?,
	registerAsNestedChild: ({
		cellKey: string,
		key: string,
		ref: VirtualizedList,
		parentDebugInfo: ListDebugInfo,
	}) -> ChildListState?,
	unregisterAsNestedChild: ({
		key: string,
		state: ChildListState,
	}) -> (),
	debugInfo: ListDebugInfo,
}>

local VirtualizedListContext: React_Context<any> = React.createContext(nil)
exports.VirtualizedListContext = VirtualizedListContext

if _G.__DEV__ then
	VirtualizedListContext.displayName = "VirtualizedListContext"
end

--[[*
 * Resets the context. Intended for use by portal-like components (e.g. Modal).
 ]]
local function VirtualizedListContextResetter(ref: {
	children: React_Node,
}): React_Node
	local children = ref.children
	return React.createElement(VirtualizedListContext.Provider, {
		value = nil,
	}, children)
end
exports.VirtualizedListContextResetter = VirtualizedListContextResetter

--[[*
 * Sets the context with memoization. Intended to be used by `VirtualizedList`.
 ]]
local function VirtualizedListContextProvider(ref: {
	children: React_Node,
	value: Context,
}): React_Node
	local children, value = ref.children, ref.value
	-- Avoid setting a newly created context object if the values are identical.
	local context = useMemo(
		function()
			return {
				cellKey = nil,
				getScrollMetrics = value.getScrollMetrics,
				horizontal = value.horizontal,
				getOutermostParentListRef = value.getOutermostParentListRef,
				getNestedChildState = value.getNestedChildState,
				registerAsNestedChild = value.registerAsNestedChild,
				unregisterAsNestedChild = value.unregisterAsNestedChild,
				debugInfo = {
					cellKey = value.debugInfo.cellKey,
					horizontal = value.debugInfo.horizontal,
					listKey = value.debugInfo.listKey,
					parent = value.debugInfo.parent,
				},
			}
		end,
		-- ROBLOX FIXME Luau: can't handle array with mixed types
		{
			value.getScrollMetrics,
			value.horizontal :: any,
			value.getOutermostParentListRef,
			value.getNestedChildState :: any,
			value.registerAsNestedChild :: any,
			value.unregisterAsNestedChild :: any,
			value.debugInfo.cellKey :: any,
			value.debugInfo.horizontal :: any,
			value.debugInfo.listKey :: any,
			value.debugInfo.parent :: any,
		}
	)
	return React.createElement(VirtualizedListContext.Provider, {
		value = context,
	}, children)
end
exports.VirtualizedListContextProvider = VirtualizedListContextProvider

--[[*
 * Sets the `cellKey`. Intended to be used by `VirtualizedList` for each cell.
 ]]
local function VirtualizedListCellContextProvider(ref: {
	cellKey: string,
	children: React_Node,
}): React_Node
	local cellKey, children = ref.cellKey, ref.children
	local context = useContext(VirtualizedListContext)
	return React.createElement(VirtualizedListContext.Provider, {
		value = if context == nil then nil else Object.assign(table.clone(context), { cellKey = cellKey }),
	}, children)
end
exports.VirtualizedListCellContextProvider = VirtualizedListCellContextProvider

return exports
