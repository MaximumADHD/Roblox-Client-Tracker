-- ROBLOX note: no upstream
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
local Components = script.Components
local Lists = script.Lists
local ScrollView = require(Components.ScrollView.ScrollView)
local VirtualizedList = require(Lists.VirtualizedList)
local SectionList = require(Lists.SectionList).default
local FlatList = require(Lists.FlatList)
local BidirectionalFlatListModule = require(Lists.BidirectionalFlatList)
local BidirectionalFlatList = BidirectionalFlatListModule.BidirectionalFlatList
local View = require(Components.View.View)
local ViewabilityHelper = require(Lists.ViewabilityHelper)
local Hooks = require(Lists.Hooks)
local AnimatedFlatList = require(Lists.AnimatedFlatList)

export type ViewabilityConfigCallbackPair = ViewabilityHelper.ViewabilityConfigCallbackPair
export type ViewabilityConfig = ViewabilityHelper.ViewabilityConfig
export type BidirectionalFlatListProps<T> = BidirectionalFlatListModule.Props<T>
export type AnimatedFlatListProps<T> = AnimatedFlatList.Props<T>
export type AnimatedScrollConfig<T> = Hooks.AnimatedScrollConfig<T>
export type VirtualizedListProps = VirtualizedList.Props
export type RenderItemProps<T> = VirtualizedList.RenderItemProps<T>

return {
	ScrollView = ScrollView,
	VirtualizedList = VirtualizedList,
	SectionList = SectionList,
	FlatList = FlatList,
	BidirectionalFlatList = BidirectionalFlatList,
	View = View,
	AnimatedFlatList = AnimatedFlatList,
	Hooks = Hooks,
}
