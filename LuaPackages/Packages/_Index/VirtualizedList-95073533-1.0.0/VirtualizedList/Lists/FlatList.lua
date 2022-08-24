-- ROBLOX upstream: https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/Lists/FlatList.js
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
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>
type ReadonlyArray<T> = Array<T>
local Object = LuauPolyfill.Object
type Object = LuauPolyfill.Object

type mixed = any

local Platform = { OS = "roblox" }
local deepDiffer = require(srcWorkspace.Utilities.differ.deepDiffer)
local React = require(Packages.React)
type React_Element_Config<ItemT> = React.ElementConfig<ItemT>
type React_Node = React.React_Node

local VirtualizedList = require(srcWorkspace.Lists.VirtualizedList)

local View = require(srcWorkspace.Components.View.View)

local StyleSheet = require(srcWorkspace.StyleSheet.StyleSheet)
local invariant = require(srcWorkspace.jsUtils.invariant)

local scrollViewWorkspace = srcWorkspace.Components.ScrollView

local ScrollView = require(scrollViewWorkspace.ScrollView)

type ScrollResponderType = ScrollView.ScrollResponderType

local ScrollViewNativeComponent = require(scrollViewWorkspace.ScrollViewNativeComponent)
type ScrollViewNativeComponent = typeof(ScrollViewNativeComponent)

-- ROBLOX FIXME: use proper type when available
-- local StyleSheetModule = require(script.Parent.Parent.StyleSheet.StyleSheet)
-- type ViewStyleProp = StyleSheetModule.ViewStyleProp
type ViewStyleProp = Object

local ViewabilityHelperModule = require(srcWorkspace.Lists.ViewabilityHelper)
type ViewToken = ViewabilityHelperModule.ViewToken
type ViewabilityConfigCallbackPair = ViewabilityHelperModule.ViewabilityConfigCallbackPair

local VirtualizedListModule = require(srcWorkspace.Lists.VirtualizedList)
type RenderItemType<ItemT> = VirtualizedListModule.RenderItemType<ItemT>
type RenderItemProps<ItemT> = VirtualizedListModule.RenderItemProps<ItemT>

local defaultKeyExtractor = require(script.Parent.VirtualizeUtils).keyExtractor
type RequiredProps<ItemT> = {
	--[[
    For simplicity, data is just a plain array. If you want to use something else, like an immutable list, use the underlying `VirtualizedList` directly.
   ]]
	data: ReadonlyArray<ItemT>,
}

type OptionalProps<ItemT> = {
	--[[*
   * Takes an item from `data` and renders it into the list. Example usage:
   *
   *     <FlatList
   *       ItemSeparatorComponent={Platform.OS !== 'android' && ({highlighted}) => (
   *         <View style={[style.separator, highlighted && {marginLeft: 0}]} />
   *       )}
   *       data={[{title: 'Title Text', key: 'item1'}]}
   *       renderItem={({item, separators}) => (
   *         <TouchableHighlight
   *           onPress={() => this._onPress(item)}
   *           onShowUnderlay={separators.highlight}
   *           onHideUnderlay={separators.unhighlight}>
   *           <View style={{backgroundColor: 'white'}}>
   *             <Text>{item.title}</Text>
   *           </View>
   *         </TouchableHighlight>
   *       )}
   *     />
   *
   * Provides additional metadata like `index` if you need it, as well as a more generic
   * `separators.updateProps` function which let's you set whatever props you want to change the
   * rendering of either the leading separator or trailing separator in case the more common
   * `highlight` and `unhighlight` (which set the `highlighted: boolean` prop) are insufficient for
   * your use-case.
	]]
	renderItem: RenderItemType<ItemT>?,

	--[[*
   * Optional custom style for multi-item rows generated when numColumns > 1.
	]]
	columnWrapperStyle: ViewStyleProp?,

	--[[*
   * A marker property for telling the list to re-render (since it implements `PureComponent`). If
   * any of your `renderItem`, Header, Footer, etc. functions depend on anything outside of the
   * `data` prop, stick it here and treat it immutably.
	]]
	extraData: any?,

	--[[*
   * `getItemLayout` is an optional optimizations that let us skip measurement of dynamic content if
   * you know the height of items a priori. `getItemLayout` is the most efficient, and is easy to
   * use if you have fixed height items, for example:
   *
   *     getItemLayout={(data, index) => (
   *       {length: ITEM_HEIGHT, offset: ITEM_HEIGHT * index, index}
   *     )}
   *
   * Adding `getItemLayout` can be a great performance boost for lists of several hundred items.
   * Remember to include separator length (height or width) in your offset calculation if you
   * specify `ItemSeparatorComponent`.
	]]
	getItemLayout: (
		data: Array<ItemT>?,
		index: number
	) -> {
		length: number,
		offset: number,
		index: number,
	}?,

	--[[*
   * If true, renders items next to each other horizontally instead of stacked vertically.
	]]
	horizontal: boolean?,

	--[[*
   * How many items to render in the initial batch. This should be enough to fill the screen but not
   * much more. Note these items will never be unmounted as part of the windowed rendering in order
   * to improve perceived performance of scroll-to-top actions.
	]]
	initialNumToRender: number?,

	--[[*
   * Instead of starting at the top with the first item, start at `initialScrollIndex`. This
   * disables the "scroll to top" optimization that keeps the first `initialNumToRender` items
   * always rendered and immediately renders the items starting at this initial index. Requires
   * `getItemLayout` to be implemented.
	]]
	initialScrollIndex: number?,

	--[[*
   * Reverses the direction of scroll. Uses scale transforms of -1.
	]]
	inverted: boolean?,

	--[[*
   * Used to extract a unique key for a given item at the specified index. Key is used for caching
   * and as the react key to track item re-ordering. The default extractor checks `item.key`, then
   * falls back to using the index, like React does.
  ]]
	keyExtractor: ((item: ItemT, index: number) -> string)?,

	--[[*
   * Multiple columns can only be rendered with `horizontal={false}` and will zig-zag like a
   * `flexWrap` layout. Items should all be the same height - masonry layouts are not supported.
   *
   * The default value is 1.
	]]
	numColumns: number?,

	--[[*
   * Note: may have bugs (missing content) in some circumstances - use at your own risk.
   *
   * This may improve scroll performance for large lists.
   *
   * The default value is true for Android.
	]]
	removeClippedSubviews: boolean?,

	--[[
   * See `ScrollView` for flow type and further documentation.
	]]
	fadingEdgeLength: number?,
}

--[[*
 * Default Props Helper Functions
 * Use the following helper functions for default values
 ]]
-- removeClippedSubviewsOrDefault(this.props.removeClippedSubviews)
local function removeClippedSubviewsOrDefault(removeClippedSubviews: boolean?)
	return if removeClippedSubviews ~= nil then removeClippedSubviews else Platform.OS == "android"
end

-- numColumnsOrDefault(this.props.numColumns)
local function numColumnsOrDefault(numColumns: number?): number
	return if numColumns ~= nil then numColumns else 1
end

type FlatListProps<ItemT> = RequiredProps<ItemT> & OptionalProps<ItemT>
type VirtualizedListProps = React_Element_Config<typeof(VirtualizedList)>
type Item = any

-- ROBLOX deviation: Upstream uses flow attributes such as $Diff and $PropertyType
--[[
{
  ...$Diff<
    VirtualizedListProps,
    {
      getItem: $PropertyType<VirtualizedListProps, 'getItem'>,
      getItemCount: $PropertyType<VirtualizedListProps, 'getItemCount'>,
      getItemLayout: $PropertyType<VirtualizedListProps, 'getItemLayout'>,
      renderItem: $PropertyType<VirtualizedListProps, 'renderItem'>,
      keyExtractor: $PropertyType<VirtualizedListProps, 'keyExtractor'>,
      ...
    },
  >,
  ...FlatListProps<ItemT>,
  ...
};
]]
export type Props<ItemT> = VirtualizedListProps & FlatListProps<ItemT>

export type FlatList<ItemT> = {
	props: Props<ItemT>,
	scrollToEnd: (self: FlatList<ItemT>, params: ({ animated: boolean? })?) -> (),
	scrollToIndex: (
		self: FlatList<ItemT>,
		params: {
			animated: boolean?,
			index: number,
			viewOffset: number?,
			viewPosition: number?,
		}
	) -> (),
	scrollToItem: (
		self: FlatList<ItemT>,
		params: {
			animated: boolean?,
			item: ItemT,
			viewPosition: number?,
		}
	) -> (),
	scrollToOffset: (self: FlatList<ItemT>, params: { animated: boolean?, offset: number }) -> (),
	recordInteraction: (self: FlatList<ItemT>) -> (),
	flashScrollIndicators: (self: FlatList<ItemT>) -> (),
	getScrollResponder: (self: FlatList<ItemT>) -> ScrollResponderType?,
	getNativeScrollRef: (
		self: FlatList<ItemT>
	) -> React.ElementRef<typeof(View)>? | React.ElementRef<ScrollViewNativeComponent>?,
	getScrollableNode: (self: FlatList<ItemT>) -> any,
	setNativeProps: (self: FlatList<ItemT>, props: { [string]: mixed }) -> (),
	_listRef: React.ElementRef<typeof(VirtualizedList)>,
	_virtualizedListPairs: Array<ViewabilityConfigCallbackPair>,
	_captureRef: (ref: any) -> (),
	_checkProps: (self: FlatList<ItemT>, props: Props<ItemT>) -> (),
	_getItem: (data: Array<ItemT>, index: number) -> Array<ItemT> | ItemT,
	_getItemCount: (data: Array<ItemT>?) -> number,
	_keyExtractor: (items: ItemT | Array<ItemT>, index: number) -> string,
	_pushMultiColumnViewable: (self: FlatList<ItemT>, arr: Array<ViewToken>, v: ViewToken) -> (),
	_createOnViewableItemsChanged: (
		self: FlatList<ItemT>,
		onViewableItemsChanged: (
			info: {
				viewableItems: Array<ViewToken>,
				changed: Array<ViewToken>,
			}
		) -> ()
	) -> (),
	_renderer: () -> ({
		[string]: (info: RenderItemProps<ItemT>) -> React.Node,
	}),
}

--[[*
 * A performant interface for rendering simple, flat lists, supporting the most handy features:
 *
 *  - Fully cross-platform.
 *  - Optional horizontal mode.
 *  - Configurable viewability callbacks.
 *  - Header support.
 *  - Footer support.
 *  - Separator support.
 *  - Pull to Refresh.
 *  - Scroll loading.
 *  - ScrollToIndex support.
 *
 * If you need section support, use [`<SectionList>`](docs/sectionlist.html).
 *
 * Minimal Example:
 *
 *     <FlatList
 *       data={[{key: 'a'}, {key: 'b'}]}
 *       renderItem={({item}) => <Text>{item.key}</Text>}
 *     />
 *
 * More complex, multi-select example demonstrating `PureComponent` usage for perf optimization and avoiding bugs.
 *
 * - By binding the `onPressItem` handler, the props will remain `===` and `PureComponent` will
 *   prevent wasteful re-renders unless the actual `id`, `selected`, or `title` props change, even
 *   if the components rendered in `MyListItem` did not have such optimizations.
 * - By passing `extraData={this.state}` to `FlatList` we make sure `FlatList` itself will re-render
 *   when the `state.selected` changes. Without setting this prop, `FlatList` would not know it
 *   needs to re-render any items because it is also a `PureComponent` and the prop comparison will
 *   not show any changes.
 * - `keyExtractor` tells the list to use the `id`s for the react keys instead of the default `key` property.
 *
 *
 *     class MyListItem extends React.PureComponent {
 *       _onPress = () => {
 *         this.props.onPressItem(this.props.id);
 *       };
 *
 *       render() {
 *         const textColor = this.props.selected ? "red" : "black";
 *         return (
 *           <TouchableOpacity onPress={this._onPress}>
 *             <View>
 *               <Text style={{ color: textColor }}>
 *                 {this.props.title}
 *               </Text>
 *             </View>
 *           </TouchableOpacity>
 *         );
 *       }
 *     }
 *
 *     class MultiSelectList extends React.PureComponent {
 *       state = {selected: (new Map(): Map<string, boolean>)};
 *
 *       _keyExtractor = (item, index) => item.id;
 *
 *       _onPressItem = (id: string) => {
 *         // updater functions are preferred for transactional updates
 *         this.setState((state) => {
 *           // copy the map rather than modifying state.
 *           const selected = new Map(state.selected);
 *           selected.set(id, !selected.get(id)); // toggle
 *           return {selected};
 *         });
 *       };
 *
 *       _renderItem = ({item}) => (
 *         <MyListItem
 *           id={item.id}
 *           onPressItem={this._onPressItem}
 *           selected={!!this.state.selected.get(item.id)}
 *           title={item.title}
 *         />
 *       );
 *
 *       render() {
 *         return (
 *           <FlatList
 *             data={this.props.data}
 *             extraData={this.state}
 *             keyExtractor={this._keyExtractor}
 *             renderItem={this._renderItem}
 *           />
 *         );
 *       }
 *     }
 *
 * This is a convenience wrapper around [`<VirtualizedList>`](docs/virtualizedlist.html),
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
 *   offscreen. This means it's possible to scroll faster than the fill rate ands momentarily see
 *   blank content. This is a tradeoff that can be adjusted to suit the needs of each application,
 *   and we are working on improving it behind the scenes.
 * - By default, the list looks for a `key` prop on each item and uses that for the React key.
 *   Alternatively, you can provide a custom `keyExtractor` prop.
 *
 * Also inherits [ScrollView Props](docs/scrollview.html#props), unless it is nested in another FlatList of same orientation.
 ]]
local FlatList = React.PureComponent:extend("FlatList")

function FlatList:init<ItemT>(props: Props<ItemT>)
	self._virtualizedListPairs = {} :: Array<ViewabilityConfigCallbackPair>
	self._captureRef = function(ref)
		self._listRef = ref
	end

	self._getItem = function(data: Array<ItemT>, index: number): (Array<ItemT> | ItemT)
		local numColumns = numColumnsOrDefault(self.props.numColumns)
		if numColumns > 1 then
			local ret = {}
			for kk = 1, numColumns do
				local item = data[(index - 1) * numColumns + kk]
				if item ~= nil then
					table.insert(ret, item)
				end
			end
			return ret
		else
			return data[index] :: ItemT
		end
	end

	self._getItemCount = function(data: Array<ItemT>?): number
		if data ~= nil then
			local numColumns = numColumnsOrDefault(self.props.numColumns)

			return if numColumns > 1 then math.ceil(#data / numColumns) else #data
		else
			return 0
		end
	end

	self._keyExtractor = function(items: (ItemT | Array<ItemT>), index: number): string?
		local numColumns = numColumnsOrDefault(self.props.numColumns)
		local keyExtractor = if self.props.keyExtractor ~= nil then self.props.keyExtractor else defaultKeyExtractor
		if numColumns > 1 then
			if Array.isArray(items) then
				return Array.join(
					-- ROBLOX FIXME Luau: Unable to infer the type of items as Array<ItemT>, manual casting required
					Array.map(items :: Array<ItemT>, function(item, kk)
						return keyExtractor(
							--[[ ROBLOX deviation: Upstream uses $FlowFixMe to suppress type issues (item: $FlowFixMe): ItemT ]]
							item :: ItemT,
							(index - 1) * numColumns + kk
						)
					end),
					":"
				)
			else
				invariant(
					Array.isArray(items),
					"FlatList: Encountered internal consistency error, expected each item to consist of an "
						.. "array with 1-%s columns; instead, received a single item.",
					numColumns
				)
				return nil
			end
		else
			-- $FlowFixMe[incompatible-call] Can't call keyExtractor with an array
			return keyExtractor(items, index)
		end
	end

	self._renderer = function()
		local ListItemComponent, renderItem, columnWrapperStyle =
			self.props.ListItemComponent, self.props.renderItem, self.props.columnWrapperStyle

		local numColumns = numColumnsOrDefault(self.props.numColumns)
		local virtualizedListRenderKey = if ListItemComponent then "ListItemComponent" else "renderItem"
		local function renderer(props): React_Node
			if ListItemComponent then
				-- $FlowFixMe[not-a-component] Component isn't valid
				-- $FlowFixMe[incompatible-type-arg] Component isn't valid
				-- $FlowFixMe[incompatible-return] Component isn't valid
				return React.createElement(ListItemComponent, props)
			elseif renderItem then
				-- $FlowFixMe[incompatible-call]
				return renderItem(props)
			else
				return nil
			end
		end
		return {
			--[[ $FlowFixMe[invalid-computed-prop] (>=0.111.0 site=react_native_fb)
       * This comment suppresses an error found when Flow v0.111 was deployed.
       * To see the error, delete this comment and run Flow. ]]
			[virtualizedListRenderKey] = function(info: RenderItemProps<ItemT>): React_Node
				if numColumns > 1 then
					-- ROBLOX deviation: Adding this to layout the items depending on whether or not the horizontal prop is true
					local UIListLayout = React.createElement("UIListLayout", {
						key = if self.props.horizontal then "UIListVerticalLayout" else "UIListHorizontalLayout",
						Name = if self.props.horizontal then "UIListVerticalLayout" else "UIListHorizontalLayout",
						FillDirection = if self.props.horizontal
							then Enum.FillDirection.Vertical
							else Enum.FillDirection.Horizontal,
						SortOrder = Enum.SortOrder.LayoutOrder,
					})

					local item, index = info.item, info.index

					invariant(Array.isArray(item), "Expected array of items with numColumns > 1")
					return React.createElement(
						View,
						-- ROBLOX deviation: We are removing styles.row because we are using FillDirection instead for the same functionality
						{ style = StyleSheet.compose(columnWrapperStyle) },
						Array.concat(
							{
								UIListLayout,
							} :: any,
							Array.map((item :: any) :: Array<any>, function(it, kk)
								local element = renderer({
									-- ROBLOX deviation: We are passing down LayoutOrder to ensure correct rendering order of list items
									item = Object.assign({}, it, { LayoutOrder = kk }),
									index = (index - 1) * numColumns + kk,
									separators = info.separators,
								})
								return if element ~= nil
									then React.createElement(React.Fragment, { key = kk }, element)
									else nil
							end)
						)
					)
				else
					return renderer(info)
				end
			end,
		}
	end
	self:_checkProps(self.props)
	if self.props.viewabilityConfigCallbackPairs then
		self._virtualizedListPairs = Array.map(self.props.viewabilityConfigCallbackPairs, function(pair)
			return {
				viewabilityConfig = pair.viewabilityConfig,
				onViewableItemsChanged = self:_createOnViewableItemsChanged(pair.onViewableItemsChanged),
			}
		end)
	elseif self.props.onViewableItemsChanged then
		table.insert(self._virtualizedListPairs, {--[[ $FlowFixMe[incompatible-call] (>=0.63.0 site=react_native_fb) This
         * comment suppresses an error found when Flow v0.63 was deployed. To
         * see the error delete this comment and run Flow. ]]
			viewabilityConfig = self.props.viewabilityConfig,
			onViewableItemsChanged = self:_createOnViewableItemsChanged(self.props.onViewableItemsChanged),
		})
	end
end
--[[
* Scrolls to the end of the content. May be janky without `getItemLayout` prop.
]]
function FlatList:scrollToEnd(params: ({
	animated: boolean?,
})?)
	if self._listRef then
		self._listRef:scrollToEnd(params)
	end
end

--[[
* Scrolls to the item at the specified index such that it is positioned in the viewable area
* such that `viewPosition` 0 places it at the top, 1 at the bottom, and 0.5 centered in the
* middle. `viewOffset` is a fixed number of pixels to offset the final target position.
*
* Note: cannot scroll to locations outside the render window without specifying the
* `getItemLayout` prop.
]]
function FlatList:scrollToIndex(
	params: ({
		animated: boolean?,
		index: number,
		viewOffset: number?,
		viewPosition: number?,
	})
)
	if self._listRef then
		self._listRef:scrollToIndex(params)
	end
end

--[[
* Requires linear scan through data - use `scrollToIndex` instead if possible.
*
* Note: cannot scroll to locations outside the render window without specifying the
* `getItemLayout` prop.
]]
function FlatList:scrollToItem<ItemT>(params: {
	animated: boolean?,
	item: ItemT,
	viewPosition: number?,
})
	if self._listRef then
		self._listRef:scrollToItem(params)
	end
end

--[[
* Scroll to a specific content pixel offset in the list.
*
* Check out [scrollToOffset](docs/virtualizedlist.html#scrolltooffset) of VirtualizedList
]]
function FlatList:scrollToOffset(params: {
	animated: boolean?,
	offset: number,
})
	if self._listRef then
		self._listRef:scrollToOffset(params)
	end
end

--[[
* Tells the list an interaction has occurred, which should trigger viewability calculations, e.g.
* if `waitForInteractions` is true and the user has not scrolled. This is typically called by
* taps on items or by navigation actions.
*]]
function FlatList:recordInteraction()
	if self._listRef then
		self._listRef:recordInteraction()
	end
end

--[[
* Displays the scroll indicators momentarily.
*
* @platform ios
]]
function FlatList:flashScrollIndicators()
	if self._listRef then
		self._listRef:flashScrollIndicators()
	end
end

--[[
* Provides a handle to the underlying scroll responder.
]]
function FlatList:getScrollResponder()
	if self._listRef then
		return self._listRef:getScrollResponder()
	end
end

--[[
	* Provides a reference to the underlying host component
]]
function FlatList:getNativeScrollRef()
	if self._listRef then
		--[[ $FlowFixMe[incompatible-return] Suppresses errors found when fixing
       * TextInput typing ]]
		return self._listRef:getScrollRef()
	end
end
function FlatList:getScrollableNode()
	if self._listRef then
		return self._listRef:getScrollableNode()
	end
end
function FlatList:setNativeProps(props: {
	[string]: mixed,
})
	if self._listRef then
		self._listRef:setNativeProps(props)
	end
end
function FlatList:componentDidUpdate<ItemT>(prevProps: Props<ItemT>)
	invariant(
		prevProps.numColumns == self.props.numColumns,
		"Changing numColumns on the fly is not supported. Change the key prop on FlatList when "
			.. "changing the number of columns to force a fresh render of the component."
	)
	invariant(
		prevProps.onViewableItemsChanged == self.props.onViewableItemsChanged,
		"Changing onViewableItemsChanged on the fly is not supported"
	)
	invariant(
		not deepDiffer(prevProps.viewabilityConfig, self.props.viewabilityConfig),
		"Changing viewabilityConfig on the fly is not supported"
	)

	invariant(
		prevProps.viewabilityConfigCallbackPairs == self.props.viewabilityConfigCallbackPairs,
		"Changing viewabilityConfigCallbackPairs on the fly is not supported"
	)

	self:_checkProps(self.props)
end
function FlatList:_checkProps<ItemT>(props: Props<ItemT>)
	local getItem, getItemCount, horizontal, columnWrapperStyle, onViewableItemsChanged, viewabilityConfigCallbackPairs = -- $FlowFixMe[prop-missing] this prop doesn't exist, is only used for an invariant
		props.getItem, -- $FlowFixMe[prop-missing] this prop doesn't exist, is only used for an invariant
		props.getItemCount,
		props.horizontal,
		props.columnWrapperStyle,
		props.onViewableItemsChanged,
		props.viewabilityConfigCallbackPairs
	local numColumns = numColumnsOrDefault(self.props.numColumns)
	invariant(not getItem and not getItemCount, "FlatList does not support custom data formats.")
	if numColumns > 1 then
		invariant(not horizontal, "numColumns does not support horizontal.")
	else
		invariant(not columnWrapperStyle, "columnWrapperStyle not supported for single column lists")
	end
	invariant(
		not (onViewableItemsChanged and viewabilityConfigCallbackPairs),
		"FlatList does not support setting both onViewableItemsChanged and " .. "viewabilityConfigCallbackPairs."
	)
end
function FlatList:_pushMultiColumnViewable(arr: Array<ViewToken>, v: ViewToken): ()
	local numColumns = numColumnsOrDefault(self.props.numColumns)
	local keyExtractor = if self.props.keyExtractor ~= nil then self.props.keyExtractor else defaultKeyExtractor
	Array.forEach(v.item, function(item, ii)
		invariant(v.index ~= nil, "Missing index!")
		local index = (v.index - 1) * numColumns + ii
		table.insert(arr, Object.assign({}, v, { item = item, key = keyExtractor(item, index), index = index }))
	end)
end
function FlatList:_createOnViewableItemsChanged(
	onViewableItemsChanged: ((
		info: {
			viewableItems: Array<ViewToken>,
			changed: Array<ViewToken>,
		}
	) -> ())?
)
	return function(info: {
		viewableItems: Array<ViewToken>,
		changed: Array<ViewToken>,
	})
		local numColumns = numColumnsOrDefault(self.props.numColumns)
		if onViewableItemsChanged ~= nil then
			if numColumns > 1 then
				local changed = {}
				local viewableItems = {}
				Array.forEach(info.viewableItems, function(v)
					return self:_pushMultiColumnViewable(viewableItems, v)
				end)
				Array.forEach(info.changed, function(v)
					return self:_pushMultiColumnViewable(changed, v)
				end)

				onViewableItemsChanged({ viewableItems = viewableItems, changed = changed })
			else
				onViewableItemsChanged(info)
			end
		end
	end
end
function FlatList:render(): React_Node
	local ref = self.props

	local _numColumns, _columnWrapperStyle, removeClippedSubviews, restProps =
		ref.numColumns, ref.columnWrapperStyle, ref.removeClippedSubviews, Object.assign({}, ref, {
			numColumns = Object.None,
			columnWrapperStyle = Object.None,
			removeClippedSubviews = Object.None,
		})

	return React.createElement(
		VirtualizedList,
		Object.assign({}, restProps, {
			getItem = self._getItem,
			getItemCount = self._getItemCount,
			keyExtractor = self._keyExtractor,
			ref = self._captureRef,
			viewabilityConfigCallbackPairs = self._virtualizedListPairs,
			removeClippedSubviews = removeClippedSubviewsOrDefault(removeClippedSubviews),
		}, self._renderer())
	)
end

-- ROBLOX deviation: We are not actually using this
-- styles = StyleSheet.create({ row = { flexDirection = "row" } })

return FlatList
