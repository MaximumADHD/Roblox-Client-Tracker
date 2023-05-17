--[[
	* Copyright (c) Roblox Corporation. All rights reserved.
	* Licensed under the MIT License (the "License");
	* you may not use this file except in compliance with the License.
	* You may obtain a copy of the License at
	*
	*     https://opensource.org/licenses/MIT
	*
	* Unless required by applicable law or agreed to in writing, software
	* distributed under the License is distributed on an "AS IS" BASIS,
	* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	* See the License for the specific language governing permissions and
	* limitations under the License.
]]

local srcWorkspace = script.Parent.Parent
local Packages = srcWorkspace.Parent
local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local FlatList = require(script.Parent.FlatList)
type FlatListProps<ItemT> = FlatList.Props<ItemT>

local useFocusNavigationScrolling = require(script.Parent.Hooks).useFocusNavigationScrolling

type AnimatedProps<ItemT> = {
	onSelectedIndexChanged: ((item: ItemT) -> ())?,
	viewOffset: number?,
	animated: boolean?,
	cellRendererKey: string?,
}

export type Props<ItemT> = AnimatedProps<ItemT> & FlatListProps<ItemT>

local function AnimatedFlatList<ItemT>(props: Props<ItemT>)
	local listRef = React.useRef(nil)
	local onAnimationScrollFailed = useFocusNavigationScrolling({
		listRef = listRef,
		onSelectedIndexChanged = props.onSelectedIndexChanged,
		initialIndex = props.initialScrollIndex,
		cellRendererKey = props.cellRendererKey,
		viewOffset = props.viewOffset,
		animated = props.animated,
		data = props.data,
	})

	local flatListProps = Object.assign(table.clone(props), {
		viewOffset = Object.None,
		animated = Object.None,
		onSelectedIndexChanged = Object.None,
		ref = listRef,
		onScrollToIndexFailed = if props.getItemLayout then nil else onAnimationScrollFailed,
	})

	return React.createElement(FlatList, flatListProps)
end

return AnimatedFlatList
