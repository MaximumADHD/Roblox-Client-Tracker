-- ROBLOX upstream: https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/Lists/VirtualizedSectionList.js
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
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object

-- ROBLOX deviation: unavailable Types
type Function = (...any) -> ...any
type ReadOnly<T> = T
type ReadOnlyArray<T> = Array<T>
type Shape<T> = any
type Diff<T, U> = Object

local invariant = require(srcWorkspace.jsUtils.invariant)
local ViewabilityHelperModule = require(script.Parent.ViewabilityHelper)
type ViewToken = ViewabilityHelperModule.ViewToken
local defaultKeyExtractor = require(script.Parent.VirtualizeUtils).keyExtractor

local View = require(srcWorkspace.Components.View.View)
local VirtualizedList = require(script.Parent.VirtualizedList)

local React = require(Packages.React)
type React_AbstractComponent<Config, Instance> = React.AbstractComponent<Config, Instance>
type React_ComponentType<P> = React.ComponentType<P>
type React_Element<Props = Object, ElementType = any> = React.ReactElement<Props, ElementType>
type React_ElementConfig<T> = React.ElementConfig<T>
type React_ElementRef<C> = React.ElementRef<C>
type React_Node = React.Node

-- ROBLOX deviation: predefine variables/functions
local ItemWithSeparator

type Item = any

export type SectionBase<SectionItemT> = {
	--[[*
   * The data for rendering items in this section.
   ]]
	data: ReadOnlyArray<SectionItemT>,
	--[[*
   * Optional key to keep track of section re-ordering. If you don't plan on re-ordering sections,
   * the array index will be used by default.
   ]]
	key: string?,
	-- Optional props will override list-wide props just for this section.
	renderItem: ((
		info: {
			item: SectionItemT,
			index: number,
			section: SectionBase<SectionItemT>,
			separators: {
				highlight: () -> (),
				unhighlight: () -> (),
				updateProps: (select: "leading" | "trailing", newProps: Object) -> (),
			},
		}?
	) -> (nil | React_Element))?,
	ItemSeparatorComponent: (React_ComponentType<any> | nil)?,
	keyExtractor: (item: SectionItemT, index: (number | nil)?) -> string,
}

-- ROBLOX FIXME Luau:  Recursive type being used with different parameters
-- type RequiredProps<SectionT: SectionBase<any>>
type RequiredProps<SectionT = Object> = {
	sections: ReadOnlyArray<SectionT>,
}

-- ROBLOX FIXME Luau:  Recursive type being used with different parameters
-- type OptionalProps<SectionT: SectionBase<any>>
type OptionalProps<SectionT = Object> = {
	--[[*
   * Default renderer for every item in every section.
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
	) -> (nil | React_Element))?,
	--[[*
   * Rendered at the top of each section. These stick to the top of the `ScrollView` by default on
   * iOS. See `stickySectionHeadersEnabled`.
   ]]
	renderSectionHeader: ((info: {
		section: SectionT,
	}) -> (nil | React_Element))?,
	--[[*
   * Rendered at the bottom of each section.
   ]]
	renderSectionFooter: ((info: {
		section: SectionT,
	}) -> (nil | React_Element))?,
	--[[*
   * Rendered at the top and bottom of each section (note this is different from
   * `ItemSeparatorComponent` which is only rendered between items). These are intended to separate
   * sections from the headers above and below and typically have the same highlight response as
   * `ItemSeparatorComponent`. Also receives `highlighted`, `[leading/trailing][Item/Separator]`,
   * and any custom props from `separators.updateProps`.
   ]]
	SectionSeparatorComponent: (React.ComponentType<any> | nil)?,

	--[[*
   * Makes section headers stick to the top of the screen until the next one pushes it off. Only
   * enabled by default on iOS because that is the platform standard there.
   ]]
	stickySectionHeadersEnabled: boolean?,
	onEndReached: (({
		distanceFromEnd: number,
	}) -> ())?,
}

type VirtualizedListProps = React_ElementConfig<typeof(VirtualizedList)>

export type Props<SectionT> = RequiredProps<SectionT> & OptionalProps<SectionT> & Diff<VirtualizedListProps, {
	renderItem: any, --[[PropertyType<VirtualizedListProps, "renderItem">]]
	data: any, --[[PropertyType<VirtualizedListProps, "data">]]
}>

export type ScrollToLocationParamsType = {
	animated: (boolean | nil)?,
	itemIndex: number,
	sectionIndex: number,
	viewOffset: number?,
	viewPosition: number?,
}

type State = {
	childProps: VirtualizedListProps,
}

-- ROBLOX FIXME Luau: recursive type error  when used with <SectionT = SectionBase<any>
export type VirtualizedSectionList<SectionT = Object> = {
	scrollToLocation: (self: VirtualizedSectionList<SectionT>, params: ScrollToLocationParamsType) -> (),
	getListRef: (self: VirtualizedSectionList<SectionT>) -> React_ElementRef<typeof(VirtualizedList)>?,
	_getItem: (
		self: VirtualizedSectionList<SectionT>,
		props: Props<SectionT>,
		sections_: ReadOnlyArray<Item>?,
		index: number
	) -> Item?,
	_keyExtractor: (item: Item, index: number) -> string,
	_subExtractor: (
		self: VirtualizedSectionList<SectionT>,
		index: number
	) -> {
		section: SectionT,
		-- Key of the section or combined key for section + item
		key: string,
		-- Relative index within the section
		index: number?,
		-- True if this is the section header
		header: boolean?,
		leadingItem: Item?,
		leadingSection: SectionT?,
		trailingItem: Item?,
		trailingSection: SectionT?,
	}?,
	_convertViewable: (viewable: ViewToken) -> ViewToken?,
	_onViewableItemsChanged: (ref: {
		viewableItems: Array<ViewToken>,
		changed: Array<ViewToken>,
	}) -> (),
	_renderItem: (listItemCount: number) -> any?,
	_updatePropsFor: (cellKey: string, value: any) -> (),
	_updateHighlightFor: (cellKey: string, value: boolean) -> (),
	_setUpdateHighlightFor: (cellKey: string, updateHighlightFn: ((boolean) -> ())?) -> (),
	_setUpdatePropsFor: (cellKey: string, updatePropsFn: ((boolean) -> ())?) -> (),
	_getSeparatorComponent: (
		self: VirtualizedSectionList<SectionT>,
		index: number,
		info_: Object?,
		listItemCount: number
	) -> React_ComponentType<any>?,
	_updateHighlightMap: Object,
	_updatePropsMap: Object,
	_listRef: React_ElementRef<typeof(VirtualizedList)>?,
	_captureRef: (ref: React_ElementRef<typeof(VirtualizedList)>?) -> (),
}

--[[*
 * Right now this just flattens everything into one list and uses VirtualizedList under the
 * hood. The only operation that might not scale well is concatting the data arrays of all the
 * sections when new props are received, which should be plenty fast for up to ~10,000 items.
 ]]
local VirtualizedSectionList = React.PureComponent:extend("VirtualizedSectionList")

function VirtualizedSectionList:init()
	self._updateHighlightMap = {}
	self._updatePropsMap = {}
	self._listRef = nil :: React_ElementRef<typeof(VirtualizedList)> | nil
	self._captureRef = function(ref)
		self._listRef = ref
	end

	self._keyExtractor = function(item: Item, index: number): string
		local info = self:_subExtractor(index)
		return if info then info.key else tostring(index)
	end

	self._convertViewable = function(viewable: ViewToken): ViewToken?
		invariant(viewable.index ~= nil, "Received a broken ViewToken")
		local info = self:_subExtractor(viewable.index)
		if not info then
			return nil
		end
		local keyExtractorWithNullableIndex = info.section.keyExtractor
		local keyExtractorWithNonNullableIndex = if self.props.keyExtractor
			then self.props.keyExtractor
			else defaultKeyExtractor
		local key = if keyExtractorWithNullableIndex ~= nil
			then keyExtractorWithNullableIndex(viewable.item, info.index)
			else
				keyExtractorWithNonNullableIndex(
					viewable.item,
					if info.index == nil
						then 1 --[[ROBLOX deviation: added 1 to index]]
						else info.index
				)

		return Object.assign({}, viewable, { index = info.index, key = key, section = info.section })
	end

	self._onViewableItemsChanged = function(ref: {
		viewableItems: Array<ViewToken>,
		changed: Array<ViewToken>,
	}): ()
		local viewableItems, changed = ref.viewableItems, ref.changed
		local onViewableItemsChanged = self.props.onViewableItemsChanged
		if onViewableItemsChanged ~= nil then
			onViewableItemsChanged({
				viewableItems = Array.filter(
					Array.map(viewableItems, self._convertViewable, self),
					Boolean.toJSBoolean
				),
				changed = Array.filter(Array.map(changed, self._convertViewable, self), Boolean.toJSBoolean),
			})
		end
	end

	self._renderItem = function(listItemCount: number)
		return function(ref: { item: Item, index: number }): React_Element<any>?
			local item, index = ref.item, ref.index
			local info = self:_subExtractor(index)
			if not info then
				return nil
			end
			local infoIndex = info.index
			if infoIndex == nil then
				local section = info.section
				if info.header == true then
					local renderSectionHeader = self.props.renderSectionHeader
					return if Boolean.toJSBoolean(renderSectionHeader)
						then renderSectionHeader({ section = section })
						else nil
				else
					local renderSectionFooter = self.props.renderSectionFooter
					return if Boolean.toJSBoolean(renderSectionFooter)
						then renderSectionFooter({ section = section })
						else nil
				end
			else
				local renderItem = info.section.renderItem or self.props.renderItem
				local SeparatorComponent = self:_getSeparatorComponent(index, info, listItemCount)
				invariant(renderItem, "no renderItem!")
				return React.createElement(ItemWithSeparator, {
					SeparatorComponent = SeparatorComponent,
					LeadingSeparatorComponent = if infoIndex == 1 --[[ ROBLOX deviation: added 1 to index ]]
						then self.props.SectionSeparatorComponent
						else nil,
					cellKey = info.key,
					index = infoIndex,
					item = item,
					leadingItem = info.leadingItem,
					leadingSection = info.leadingSection,
					prevCellKey = (self:_subExtractor(index - 1) or {}).key,
					-- Callback to provide updateHighlight for this item
					setSelfHighlightCallback = self._setUpdateHighlightFor,
					setSelfUpdatePropsCallback = self._setUpdatePropsFor,
					-- Provide child ability to set highlight/updateProps for previous item using prevCellKey
					updateHighlightFor = self._updateHighlightFor,
					updatePropsFor = self._updatePropsFor,
					renderItem = renderItem,
					section = info.section,
					trailingItem = info.trailingItem,
					trailingSection = info.trailingSection,
					inverted = Boolean.toJSBoolean(self.props.inverted),
					horizontal = self.props.horizontal,
				})
			end
		end
	end

	self._updatePropsFor = function(cellKey: string, value: any): ()
		local updateProps = self._updatePropsMap[cellKey]
		if updateProps ~= nil then
			updateProps(value)
		end
	end

	self._updateHighlightFor = function(cellKey: string, value: boolean): ()
		local updateHighlight = self._updateHighlightMap[cellKey]
		if updateHighlight ~= nil then
			updateHighlight(value)
		end
	end

	self._setUpdateHighlightFor = function(cellKey: string, updateHighlightFn: ((boolean) -> ())?): ()
		if updateHighlightFn ~= nil then
			self._updateHighlightMap[cellKey] = updateHighlightFn
		else
			self._updateHighlightMap[cellKey] = nil -- ROBLOX TODO: PR upstream with fix
		end
	end

	self._setUpdatePropsFor = function(cellKey: string, updatePropsFn: ((boolean) -> ())?): ()
		if updatePropsFn ~= nil then
			self._updatePropsMap[cellKey] = updatePropsFn
		else
			self._updatePropsMap[cellKey] = nil
		end
	end
end

function VirtualizedSectionList:scrollToLocation(params: ScrollToLocationParamsType)
	local index = params.itemIndex
	local i = 1 -- ROBLOX deviation: added 1 to index iteration
	while i < params.sectionIndex do
		index += self.props.getItemCount(self.props.sections[i].data) + 2
		i += 1
	end
	local viewOffset = params.viewOffset or 0
	if self._listRef == nil then
		return
	end
	if
		params.itemIndex > 1 -- ROBLOX deviation: added 1 to index
		and self.props.stickySectionHeadersEnabled
	then
		local frame = self._listRef.__getFrameMetricsApprox(index - params.itemIndex)
		viewOffset += frame.length
	end
	local toIndexParams = Object.assign({}, params, { viewOffset = viewOffset, index = index })
	self._listRef:scrollToIndex(toIndexParams)
end

function VirtualizedSectionList:getListRef(): React_ElementRef<typeof(VirtualizedList)>?
	return self._listRef
end

function VirtualizedSectionList:render(): React_Node
	-- ROBLOX deviation: removed some properties from destructutring because they were not used
	local _renderItem, _sections, passThroughProps =
		self.props.renderItem, self.props.sections, Object.assign({}, self.props, {
			ItemSeparatorComponent = Object.None,
			SectionSeparatorComponent = Object.None,
			renderItem = Object.None,
			renderSectionFooter = Object.None,
			renderSectionHeader = Object.None,
			sections = Object.None,
			stickySectionHeadersEnabled = Object.None,
		})

	local listHeaderOffset = if self.props.ListHeaderComponent then 1 else 0

	local stickyHeaderIndices = if self.props.stickySectionHeadersEnabled then {} else nil

	local itemCount = 0
	for _, section in ipairs(self.props.sections) do
		-- Track the section header indices
		if stickyHeaderIndices ~= nil then
			table.insert(stickyHeaderIndices, itemCount + listHeaderOffset)
		end

		-- Add two for the section header and footer.
		itemCount += 2
		itemCount += self.props.getItemCount(section.data)
	end
	local renderItem = self._renderItem(itemCount)

	return React.createElement(
		VirtualizedList,
		Object.assign({}, passThroughProps, {
			keyExtractor = self._keyExtractor,
			stickyHeaderIndices = stickyHeaderIndices,
			renderItem = renderItem,
			data = self.props.sections,
			getItem = function(sections, index)
				return self:_getItem(self.props, sections, index)
			end,
			getItemCount = function()
				return itemCount
			end,
			onViewableItemsChanged = if self.props.onViewableItemsChanged then self._onViewableItemsChanged else nil,
			ref = self._captureRef,
		})
	)
end

function VirtualizedSectionList:_getItem<SectionT>(
	props: Props<SectionT>,
	sections_: ReadOnlyArray<Item>?,
	index: number
): Item?
	if not sections_ then
		return nil
	end
	local itemIdx = index - 1
	local i = 1
	local sections = sections_ :: ReadOnlyArray<Item>
	while i <= #sections do
		local section = sections[i]
		local sectionData = section.data
		local itemCount = props.getItemCount(sectionData)
		if itemIdx == 0 or itemIdx == itemCount + 1 then
			-- We intend for there to be overflow by one on both ends of the list.
			-- This will be for headers and footers. When returning a header or footer
			-- item the section itself is the item.
			return section
		elseif itemIdx <= itemCount then
			-- If we are in the bounds of the list's data then return the item.
			return props.getItem(sectionData, itemIdx)
		else
			itemIdx -= itemCount + 2 -- Add two for the header and footer
		end
		i += 1
	end
	return nil
end

function VirtualizedSectionList:_subExtractor<SectionT>(
	index: number
): {
	section: SectionT,
	-- Key of the section or combined key for section + item
	key: string,
	-- Relative index within the section
	index: number?,
	-- True if this is the section header
	header: boolean?,
	leadingItem: Item?,
	leadingSection: SectionT?,
	trailingItem: Item?,
	trailingSection: SectionT?,
}?
	local itemIndex = index
	local getItem, getItemCount, keyExtractor, sections
	do
		local ref = self.props
		getItem, getItemCount, keyExtractor, sections = ref.getItem, ref.getItemCount, ref.keyExtractor, ref.sections
	end
	local i = 1 -- ROBLOX deviation: added 1 to iteration index
	while i <= #sections do
		local section = sections[i]
		local sectionData = section.data
		local key = if Boolean.toJSBoolean(section.key) then tostring(section.key) else tostring(i)
		itemIndex -= 1 -- The section adds an item for the header
		if itemIndex > getItemCount(sectionData) + 1 then
			itemIndex -= getItemCount(sectionData) + 1 -- The section adds an item for the footer.
		elseif itemIndex == 0 then
			return {
				section = section,
				key = key .. ":header",
				index = nil,
				header = true,
				trailingSection = sections[i + 1],
			}
		elseif itemIndex == getItemCount(sectionData) + 1 then
			return {
				section = section,
				key = key .. ":footer",
				index = nil,
				header = false,
				trailingSection = sections[i + 1],
			}
		else
			local extractor = section.keyExtractor or keyExtractor or defaultKeyExtractor
			return {
				section = section,
				key = key .. ":" .. tostring(extractor(getItem(sectionData, itemIndex), itemIndex)),
				index = itemIndex,
				leadingItem = getItem(sectionData, itemIndex - 1),
				leadingSection = sections[i - 1],
				trailingItem = getItem(sectionData, itemIndex + 1),
				trailingSection = sections[i + 1],
			}
		end
		i += 1
	end
	return nil -- ROBLOX deviation: explicit return
end

function VirtualizedSectionList:_getSeparatorComponent(
	index: number,
	info_: Object?,
	listItemCount: number
): React_ComponentType<any>?
	info_ = if info_ then info_ else self:_subExtractor(index)
	if not info_ then
		return nil
	end
	-- ROBLOX FIXME Luau: info is not nil. workaround
	local info = info_ :: Object
	local ItemSeparatorComponent = Boolean.toJSBoolean(info.section.ItemSeparatorComponent)
			and info.section.ItemSeparatorComponent
		or self.props.ItemSeparatorComponent
	local SectionSeparatorComponent = self.props.SectionSeparatorComponent
	local isLastItemInList = index == listItemCount -- ROBLOX deviation: added 1 to index
	local isLastItemInSection = info.index == self.props.getItemCount(info.section.data)
	if SectionSeparatorComponent and isLastItemInSection then
		return SectionSeparatorComponent
	end
	if ItemSeparatorComponent and not isLastItemInSection and not isLastItemInList then
		return ItemSeparatorComponent
	end
	return nil
end

type ItemWithSeparatorCommonProps = ReadOnly<{
	leadingItem: Item?,
	leadingSection: Object?,
	section: Object,
	trailingItem: Item?,
	trailingSection: Object?,
}>

type ItemWithSeparatorProps = ReadOnly<
	ItemWithSeparatorCommonProps & {
		LeadingSeparatorComponent: React.ComponentType<any> | nil,
		SeparatorComponent: React.ComponentType<any> | nil,
		cellKey: string,
		index: number,
		item: Item,
		setSelfHighlightCallback: (cellKey: string, updateFn: ((boolean) -> ())?) -> (),
		setSelfUpdatePropsCallback: (cellKey: string, updateFn: ((boolean) -> ())?) -> (),
		prevCellKey: (string | nil)?,
		updateHighlightFor: (prevCellKey: string, value: boolean) -> (),
		updatePropsFor: (prevCellKey: string, value: Object) -> (),
		renderItem: Function,
		inverted: boolean,
		horizontal: boolean?, -- ROBLOX deviation: required to layout separators
	}
>

function ItemWithSeparator(props: ItemWithSeparatorProps): React_Node
	local LeadingSeparatorComponent, SeparatorComponent, cellKey, prevCellKey, setSelfHighlightCallback, updateHighlightFor, setSelfUpdatePropsCallback, updatePropsFor, item, index, section, inverted =
		props.LeadingSeparatorComponent,
		props.SeparatorComponent, -- this is the trailing separator and is associated with this item
		props.cellKey,
		props.prevCellKey,
		props.setSelfHighlightCallback,
		props.updateHighlightFor,
		props.setSelfUpdatePropsCallback,
		props.updatePropsFor,
		props.item,
		props.index,
		props.section,
		props.inverted

	-- ROBLOX deviation START: useState returns a list instead of an array
	local leadingSeparatorHiglighted, setLeadingSeparatorHighlighted = React.useState(false)

	local separatorHighlighted, setSeparatorHighlighted = React.useState(false)

	local leadingSeparatorProps, setLeadingSeparatorProps = React.useState({
		leadingItem = props.leadingItem,
		leadingSection = props.leadingSection,
		section = props.section,
		trailingItem = props.item,
		trailingSection = props.trailingSection,
		LayoutOrder = -1,
	})
	local separatorProps, setSeparatorProps = React.useState({
		leadingItem = props.item,
		leadingSection = props.leadingSection,
		section = props.section,
		trailingItem = props.trailingItem,
		trailingSection = props.trailingSection,
		LayoutOrder = 1,
	})
	-- ROBLOX deviation END

	React.useEffect(function()
		setSelfHighlightCallback(cellKey, setSeparatorHighlighted)
		setSelfUpdatePropsCallback(cellKey, setSeparatorProps :: any)
		return function()
			setSelfUpdatePropsCallback(cellKey, nil)
			setSelfHighlightCallback(cellKey, nil)
		end
	end, { cellKey, setSelfHighlightCallback :: any, setSeparatorProps :: any, setSelfUpdatePropsCallback :: any })

	local separators = {
		highlight = function()
			setLeadingSeparatorHighlighted(true)
			setSeparatorHighlighted(true)
			if prevCellKey ~= nil then
				updateHighlightFor(prevCellKey, true)
			end
		end,
		unhighlight = function()
			setLeadingSeparatorHighlighted(false)
			setSeparatorHighlighted(false)
			if prevCellKey ~= nil then
				updateHighlightFor(prevCellKey, false)
			end
		end,
		updateProps = function(select: "leading" | "trailing", newProps: Shape<ItemWithSeparatorCommonProps>)
			if select == "leading" then
				if LeadingSeparatorComponent ~= nil then
					setLeadingSeparatorProps(Object.assign({}, leadingSeparatorProps, newProps))
				elseif prevCellKey ~= nil then
					-- update the previous item's separator
					updatePropsFor(prevCellKey, Object.assign({}, leadingSeparatorProps, newProps))
				end
			elseif select == "trailing" and SeparatorComponent ~= nil then
				setSeparatorProps(Object.assign({}, separatorProps, newProps))
			end
		end,
	}
	local element = props.renderItem({
		item = item,
		index = index,
		section = section,
		separators = separators,
	})
	local leadingSeparator = LeadingSeparatorComponent ~= nil
		and React.createElement(
			LeadingSeparatorComponent,
			Object.assign({ highlighted = leadingSeparatorHiglighted }, leadingSeparatorProps)
		)
	local separator = SeparatorComponent ~= nil
		and React.createElement(
			SeparatorComponent,
			Object.assign({ highlighted = separatorHighlighted }, separatorProps)
		)
	return if leadingSeparator or separator
		then React.createElement(
			View,
			{
				Size = if props.horizontal then UDim2.new(0, 0, 1, 0) else UDim2.new(1, 0, 0, 0),
				AutomaticSize = if props.horizontal then Enum.AutomaticSize.X else Enum.AutomaticSize.Y,
			},
			React.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = if props.horizontal then Enum.FillDirection.Horizontal else Enum.FillDirection.Vertical,
			}),
			if inverted == false then leadingSeparator else separator,
			element,
			if inverted == false then separator else leadingSeparator
		)
		else element
end
--[[ $FlowFixMe[class-object-subtyping] added when improving typing for this
 * parameters ]]
-- $FlowFixMe[method-unbinding]
return VirtualizedSectionList :: React_AbstractComponent<React_ElementConfig<typeof(VirtualizedSectionList)>, ReadOnly<{
	getListRef: (self: VirtualizedSectionList) -> React_ElementRef<typeof(VirtualizedList)>?,
	scrollToLocation: (self: VirtualizedSectionList, params: ScrollToLocationParamsType) -> (),
}>>
