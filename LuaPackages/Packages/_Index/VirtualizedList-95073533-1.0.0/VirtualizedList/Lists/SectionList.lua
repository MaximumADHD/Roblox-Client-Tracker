-- ROBLOX upstream: https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/Lists/SectionList.js
--[[*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @flow
 * @format
 ]]

local srcWorkspace = script.Parent.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object

-- ROBLOX deviation: missing types
type ReadOnlyArray<T> = Array<T>

local exports = {}

local Platform = {
	OS = "roblox",
}
local React = require(Packages.React)
type React_Element<P = Object, T = any> = React.ReactElement<P, T>
type React_ElementRef<C> = React.ElementRef<C>
local VirtualizedSectionList = require(script.Parent.VirtualizedSectionList)
type VirtualizedSectionList<SectionT> = VirtualizedSectionList.VirtualizedSectionList<SectionT>

local ScrollViewModule = require(srcWorkspace.Components.ScrollView.ScrollView)
type ScrollResponderType = ScrollViewModule.ScrollResponderType
type _SectionBase<SectionItemT> = VirtualizedSectionList.SectionBase<SectionItemT>
type VirtualizedSectionListProps<SectionT> = VirtualizedSectionList.Props<SectionT>
type ScrollToLocationParamsType = VirtualizedSectionList.ScrollToLocationParamsType

type Item = any

export type SectionBase<SectionItemT> = _SectionBase<SectionItemT>

type RequiredProps<SectionT> = {

	--[[*
   * The actual data to render, akin to the `data` prop in [`<FlatList>`](https://reactnative.dev/docs/flatlist).
   *
   * General shape:
   *
   *     sections: $ReadOnlyArray<{
   *       data: $ReadOnlyArray<SectionItem>,
   *       renderItem?: ({item: SectionItem, ...}) => ?React.Element<*>,
   *       ItemSeparatorComponent?: ?ReactClass<{highlighted: boolean, ...}>,
   *     }>
   ]]
	sections: ReadOnlyArray<SectionT>,
}

type OptionalProps<SectionT> = {

	--[[*
	   * Default renderer for every item in every section. Can be over-ridden on a per-section basis.
	   ]]
	renderItem: ((
		info: {
			item: Item,
			index: number,
			section: SectionT,
			separators: {
				highlight: () -> (),
				unhighlight: () -> (),
				updateProps: (select: "leading" | "trailing", newProps: Object) -> (),
			},
		}
	) -> React_Element?)?,
	--[[*
	   * A marker property for telling the list to re-render (since it implements `PureComponent`). If
	   * any of your `renderItem`, Header, Footer, etc. functions depend on anything outside of the
	   * `data` prop, stick it here and treat it immutably.
	   ]]
	extraData: any?,
	--[[*
	   * How many items to render in the initial batch. This should be enough to fill the screen but not
	   * much more. Note these items will never be unmounted as part of the windowed rendering in order
	   * to improve perceived performance of scroll-to-top actions.
	   ]]
	initialNumToRender: number?,
	--[[*
	   * Reverses the direction of scroll. Uses scale transforms of -1.
	   ]]
	inverted: boolean?,
	--[[*
	   * Used to extract a unique key for a given item at the specified index. Key is used for caching
	   * and as the react key to track item re-ordering. The default extractor checks item.key, then
	   * falls back to using the index, like react does. Note that this sets keys for each item, but
	   * each overall section still needs its own key.
	   ]]
	keyExtractor: ((item: Item, index: number) -> string)?,
	--[[*
	   * Called once when the scroll position gets within `onEndReachedThreshold` of the rendered
	   * content.
	   ]]
	onEndReached: ((info: {
		distanceFromEnd: number,
	}) -> ())?,
	--[[*
	   * Note: may have bugs (missing content) in some circumstances - use at your own risk.
	   *
	   * This may improve scroll performance for large lists.
	   ]]
	removeClippedSubviews: boolean?,
}

--[[ ROBLOX deviation: can't express diff
	{| ...$Diff<VirtualizedSectionListProps<SectionT>, {
    	getItem: $PropertyType<VirtualizedSectionListProps<SectionT>, 'getItem'>,
    	getItemCount: $PropertyType<VirtualizedSectionListProps<SectionT>, 'getItemCount'>,
    	renderItem: $PropertyType<VirtualizedSectionListProps<SectionT>, 'renderItem'>,
    	keyExtractor: $PropertyType<VirtualizedSectionListProps<SectionT>, 'keyExtractor'>,
    	...
  	}>
]]
export type Props<SectionT> = VirtualizedSectionList<SectionT> & RequiredProps<SectionT> & OptionalProps<SectionT>

export type SectionList<SectionT> = {
	props: Props<SectionT>,
	scrollToLocation: (self: SectionList<SectionT>, params: ScrollToLocationParamsType) -> (),
	recordInteraction: (self: SectionList<SectionT>) -> (),
	flashScrollIndicators: (self: SectionList<SectionT>) -> (),
	getScrollResponder: (self: SectionList<SectionT>) -> ScrollResponderType?,
	getScrollableNode: (self: SectionList<SectionT>) -> any,
	setNativeProps: (self: SectionList<SectionT>, props: Object) -> (),
	_wrapperListRef: React_ElementRef<typeof(VirtualizedSectionList)>?,
	_captureRef: (ref: React_ElementRef<typeof(VirtualizedSectionList)>?) -> (),
}

--[[*
 * A performant interface for rendering sectioned lists, supporting the most handy features:
 *
 *  - Fully cross-platform.
 *  - Configurable viewability callbacks.
 *  - List header support.
 *  - List footer support.
 *  - Item separator support.
 *  - Section header support.
 *  - Section separator support.
 *  - Heterogeneous data and item rendering support.
 *  - Pull to Refresh.
 *  - Scroll loading.
 *
 * If you don't need section support and want a simpler interface, use
 * [`<FlatList>`](https://reactnative.dev/docs/flatlist).
 *
 * Simple Examples:
 *
 *     <SectionList
 *       renderItem={({item}) => <ListItem title={item} />}
 *       renderSectionHeader={({section}) => <Header title={section.title} />}
 *       sections={[ // homogeneous rendering between sections
 *         {data: [...], title: ...},
 *         {data: [...], title: ...},
 *         {data: [...], title: ...},
 *       ]}
 *     />
 *
 *     <SectionList
 *       sections={[ // heterogeneous rendering between sections
 *         {data: [...], renderItem: ...},
 *         {data: [...], renderItem: ...},
 *         {data: [...], renderItem: ...},
 *       ]}
 *     />
 *
 * This is a convenience wrapper around [`<VirtualizedList>`](docs/virtualizedlist),
 * and thus inherits its props (as well as those of `ScrollView`) that aren't explicitly listed
 * here, along with the following caveats:
 *
 * - Internal state is not preserved when content scrolls out of the render window. Make sure all
 *   your data is captured in the item data or external stores like Flux, Redux, or Relay.
 * - This is a `PureComponent` which means that it will not re-render if `props` remain shallow-
 *   equal. Make sure that everything your `renderItem` function depends on is passed as a prop
 *   (e.g. `extraData`) that is not `===` after updates, otherwise your UI may not update on
 *   changes. This includes the `data` prop and parent component state.
 * - In order to constrain memory and enable smooth scrolling, content is rendered asynchronously
 *   offscreen. This means it's possible to scroll faster than the fill rate and momentarily see
 *   blank content. This is a tradeoff that can be adjusted to suit the needs of each application,
 *   and we are working on improving it behind the scenes.
 * - By default, the list looks for a `key` prop on each item and uses that for the React key.
 *   Alternatively, you can provide a custom `keyExtractor` prop.
 *
 ]]
local SectionList = React.PureComponent:extend("SectionList")

function SectionList:init(props)
	self.props = props
	self._captureRef = function(ref)
		self._wrapperListRef = ref
	end
end

--[[*
 * Scrolls to the item at the specified `sectionIndex` and `itemIndex` (within the section)
 * positioned in the viewable area such that `viewPosition` 0 places it at the top (and may be
 * covered by a sticky header), 1 at the bottom, and 0.5 centered in the middle. `viewOffset` is a
 * fixed number of pixels to offset the final target position, e.g. to compensate for sticky
 * headers.
 *
 * Note: cannot scroll to locations outside the render window without specifying the
 * `getItemLayout` prop.
 ]]
function SectionList:scrollToLocation(params: ScrollToLocationParamsType): ()
	if
		self._wrapperListRef ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	then
		self._wrapperListRef:scrollToLocation(params)
	end
end

--[[*
 * Tells the list an interaction has occurred, which should trigger viewability calculations, e.g.
 * if `waitForInteractions` is true and the user has not scrolled. This is typically called by
 * taps on items or by navigation actions.
 ]]
function SectionList:recordInteraction(): ()
	local listRef = if self._wrapperListRef then self._wrapperListRef:getListRef() else self._wrapperListRef
	if listRef then
		listRef:recordInteraction()
	end
end

--[[*
 * Displays the scroll indicators momentarily.
 *
 * @platform ios
 ]]
function SectionList:flashScrollIndicators(): ()
	local listRef = if self._wrapperListRef then self._wrapperListRef:getListRef() else self._wrapperListRef
	if listRef then
		listRef:flashScrollIndicators()
	end
end

--[[*
 * Provides a handle to the underlying scroll responder.
 ]]
function SectionList:getScrollResponder(): ScrollResponderType?
	local listRef = if self._wrapperListRef then self._wrapperListRef:getListRef() else self._wrapperListRef
	if Boolean.toJSBoolean(listRef) then
		return listRef:getScrollResponder()
	end
	return nil -- ROBLOX deviation: explicit return
end

function SectionList:getScrollableNode(): any
	local listRef = if self._wrapperListRefthen then self._wrapperListRef:getListRef() else self._wrapperListRef
	if Boolean.toJSBoolean(listRef) then
		return listRef:getScrollableNode()
	end
	return nil -- ROBLOX deviation: explicit return
end

function SectionList:setNativeProps(props: Object): ()
	local listRef = if self._wrapperListRef then self._wrapperListRef:getListRef() else self._wrapperListRef
	if Boolean.toJSBoolean(listRef) then
		listRef:setNativeProps(props)
	end
end

function SectionList:render()
	local _stickySectionHeadersEnabled, restProps =
		self.props.stickySectionHeadersEnabled,
		Object.assign({}, self.props, { stickySectionHeadersEnabled = Object.None })
	local stickySectionHeadersEnabled = if _stickySectionHeadersEnabled ~= nil
		then _stickySectionHeadersEnabled
		else Platform.OS == "ios"
	return React.createElement(
		VirtualizedSectionList,
		Object.assign({}, restProps, {
			stickySectionHeadersEnabled = stickySectionHeadersEnabled,
			ref = self._captureRef,
			getItemCount = function(items)
				return #items
			end,
			getItem = function(items, index)
				return items[index]
			end,
		})
	)
end
exports.default = SectionList
return exports
