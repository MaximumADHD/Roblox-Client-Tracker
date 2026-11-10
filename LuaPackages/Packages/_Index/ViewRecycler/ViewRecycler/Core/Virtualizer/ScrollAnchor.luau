-- Decides where the viewport stays while geometry changes. In precedence
-- order it holds a Programmatic item target, then an edge (the initial edge,
-- a followed edge, or one the app scrolled to), then the viewport position
-- the reader reached. `preserve` wraps one geometry mutation and returns the
-- correction that restores an item target or the viewport position; `settle`
-- moves the viewport to a held edge, the initial edge, or Start for a
-- replacement, at most once per transaction.
local FFlagViewRecyclerReact08 = require(script:FindFirstAncestor("ViewRecycler").Flags).FFlagViewRecyclerReact08
local Src = script:FindFirstAncestor("ViewRecycler")

local AutoScrollPolicy = require(Src.Core.Enums.AutoScrollPolicy)
local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local Diagnostics = require(Src.Core.Diagnostics)
local ItemSequence = require(Src.Core.Virtualizer.ItemSequence)

local ReachedThreshold = require(Src.Core.ViewportBehavior.ReachedThreshold)
local ScrollAlignment = require(Src.Core.Enums.ScrollAlignment)
local Types = require(Src.Core.Types)
local createViewport = require(Src.Core.Virtualizer.Viewport)

export type Edge = ScrollAlignment.InitialScrollAlignment

export type Correction = {
	delta: number,
	source: Diagnostics.ScrollCorrectionSource,
}

export type Snapshot = {
	anchorKey: string?,
	anchorIndex: number?,
	offsetWithinItem: number,
	fallbackScrollOffset: number,
}

-- The Item whose `alignment` edge Anchor correction keeps still.
export type AnchoredItem = {
	index: number,
	alignment: ScrollAlignment.ScrollAlignment,
}

export type Change = {
	source: Diagnostics.ScrollCorrectionSource,
	dataSourceChange: Types.DataSourceChangeBatch?,
	startInsetDelta: number?,
	preserveStartAnchor: boolean?,
}

export type Config = {
	preserveScrollPositionOnChange: boolean,
	initialScrollAlignment: Edge?,
	autoScrollOnChange: AutoScrollPolicy.AutoScrollPolicy?,
	autoScrollThreshold: ReachedThreshold.ReachedThreshold?,
}

-- What one transaction did, read when it settles.
export type SettleFacts = {
	dataChange: Types.DataSourceChangeBatch?,
	replaced: boolean,
	viewportChanged: boolean,
	contentLengthChanged: boolean,
	-- A User or Programmatic scroll moved the position.
	scrollMoved: boolean,
	-- Set when a viewport length change should keep End-aligned Content this
	-- far from End.
	keptDistanceFromEnd: number?,
}

export type Options = {
	viewport: createViewport.Viewport,
	getItemSequence: () -> ItemSequence.ItemSequence,
	-- False before activation, or while Layout has no Content for its Items.
	isLaidOut: () -> boolean,
	config: Config,

	shouldPreserveUserPosition: (() -> boolean)?,
}

export type ScrollAnchor = {
	configure: (config: Config) -> (),
	setItemTarget: (index: number, alignment: ScrollAlignment.ScrollAlignment?) -> (),
	setViewport: (offset: number) -> (),
	observeHost: (offset: number) -> (),
	-- A Programmatic scroll states where the list should be, so it replaces a
	-- pending initial alignment. A scroll to an edge also pins that edge.
	scrolledProgrammatically: (pinnedEdge: Edge?) -> (),
	restore: (snapshot: Snapshot, offset: number) -> (),
	snapshotOffset: (snapshot: Snapshot) -> number,
	preserve: (change: Change, mutate: () -> ()) -> Correction?,
	settle: (facts: SettleFacts, move: (offset: number) -> ()) -> (),
	getAnchoredItem: () -> AnchoredItem?,
	-- Forgets the position, held edge, and initial alignment of the previous
	-- DataSource.
	dataSourceReplaced: () -> (),
	-- Forgets the position only.
	reset: () -> (),

	allowsPolicyOffset: (() -> boolean)?,
}

type ItemTarget = {
	kind: "itemTarget",
	key: string,
	indexHint: number?,
	alignment: ScrollAlignment.ScrollAlignment,
}

type ViewportAnchor = {
	kind: "viewport",
	key: string,
	indexHint: number?,
	viewportCoordinate: number,
	itemLength: number,
	scrollOffset: number,
	viewportLength: number,
}

type Anchor = ItemTarget | ViewportAnchor

type Evidence = {
	scrollOffset: number,
	viewportLength: number,
	items: { { key: string, viewportCoordinate: number, itemLength: number } },
}

local DEFAULT_FOLLOW_THRESHOLD, followedEdge, validate
if FFlagViewRecyclerReact08 then
	DEFAULT_FOLLOW_THRESHOLD = 1

	function followedEdge(policy: AutoScrollPolicy.AutoScrollPolicy?): Edge?
		if policy == AutoScrollPolicy.WhenAtStart then
			return ScrollAlignment.Start
		elseif policy == AutoScrollPolicy.WhenAtEnd then
			return ScrollAlignment.End
		end
		return nil
	end

	function validate(config: Config)
		local initialScrollAlignment = config.initialScrollAlignment
		assert(
			initialScrollAlignment == nil
				or initialScrollAlignment == ScrollAlignment.Start
				or initialScrollAlignment == ScrollAlignment.End,
			"Virtualizer: initialScrollAlignment must be ScrollAlignment.Start or ScrollAlignment.End"
		)
		assert(
			config.autoScrollOnChange == nil or followedEdge(config.autoScrollOnChange) ~= nil,
			"Virtualizer: autoScrollOnChange must be AutoScrollPolicy.WhenAtStart or AutoScrollPolicy.WhenAtEnd"
		)
		if config.autoScrollThreshold ~= nil then
			ReachedThreshold.validate(config.autoScrollThreshold, "Virtualizer: autoScrollThreshold")
		end
	end
end

local function projectIndex(index: number?, change: Types.DataSourceChange): number?
	if index == nil or change.type == DataSourceChangeType.Reset or change.type == DataSourceChangeType.Reorder then
		return nil
	elseif change.type == DataSourceChangeType.Insert then
		local insert = change :: Types.InsertDataSourceChange
		return if insert.index <= index then index + #insert.keys else index
	elseif change.type == DataSourceChangeType.Remove then
		local remove = change :: Types.RemoveDataSourceChange
		if index < remove.index then
			return index
		elseif index >= remove.index + #remove.keys then
			return index - #remove.keys
		end
		return nil
	elseif change.type == DataSourceChangeType.Move then
		local move = change :: Types.MoveDataSourceChange
		if index == move.fromIndex then
			return move.toIndex
		elseif move.fromIndex < index and index <= move.toIndex then
			return index - 1
		elseif move.toIndex <= index and index < move.fromIndex then
			return index + 1
		end
	end
	return index
end

local function createScrollAnchor(options: Options): ScrollAnchor
	local viewport = options.viewport

	local isLaidOut, config
	if FFlagViewRecyclerReact08 then
		isLaidOut = options.isLaidOut
		config = options.config
		validate(config)
	end
	local anchor: Anchor? = nil

	local heldEdge: Edge?, pinned, initialPending, hasItems, distanceFrom, edgeOffset, followThreshold, hold, holdsItemTarget, edgeHolds, opensAtInitialEdge, observe
	if FFlagViewRecyclerReact08 then -- The edge the viewport stays at while Content settles. A pinned edge
		-- comes from app intent and survives data changes the follow policy
		-- declines.
		heldEdge = nil
		pinned = false
		-- One initial alignment per DataSource lifecycle, applied to the first
		-- laid-out Items unless the app scrolls first.
		initialPending = true

		function hasItems(): boolean
			return options.getItemSequence().getItemCount() > 0
		end

		function distanceFrom(edge: Edge): number
			local offset = viewport.getScrollOffset()
			if edge == ScrollAlignment.Start then
				return offset
			end
			return math.max(0, viewport.getContentLength() - viewport.getLength() - offset)
		end

		function edgeOffset(edge: Edge): number
			return if edge == ScrollAlignment.Start
				then 0
				else math.max(0, viewport.getContentLength() - viewport.getLength())
		end

		function followThreshold(): number
			return ReachedThreshold.resolve(config.autoScrollThreshold, viewport.getLength(), DEFAULT_FOLLOW_THRESHOLD)
		end

		function hold(edge: Edge?)
			pinned = pinned and edge == heldEdge
			heldEdge = edge
		end

		function holdsItemTarget(): boolean
			return anchor ~= nil and (anchor :: Anchor).kind == "itemTarget"
		end

		function edgeHolds(): boolean
			return heldEdge ~= nil and not holdsItemTarget()
		end

		-- The initial alignment takes precedence over following an edge: a list
		-- without Items reads as being at both.
		function opensAtInitialEdge(): boolean
			return initialPending and config.initialScrollAlignment ~= nil and hasItems() and isLaidOut()
		end

		function observe()
			local threshold = followThreshold()
			local edge = heldEdge
			if edge ~= nil and distanceFrom(edge) <= threshold then
				return
			end
			local followed = followedEdge(config.autoScrollOnChange)
			hold(if followed ~= nil and distanceFrom(followed) <= threshold then followed else nil)
		end
	end

	local function findKeyIndex(key: string, candidate: number?): number?
		local sequence = options.getItemSequence()
		local itemCount = sequence.getItemCount()
		if candidate ~= nil and candidate >= 1 and candidate <= itemCount and sequence.getItemKey(candidate) == key then
			return candidate
		end
		for index = 1, itemCount do
			if sequence.getItemKey(index) == key then
				return index
			end
		end
		return nil
	end

	local function captureViewport(offset: number, indexHint: number?): ViewportAnchor?
		local sequence = options.getItemSequence()
		local itemCount = sequence.getItemCount()
		local viewportLength = viewport.getLength()
		if itemCount == 0 or viewportLength <= 0 then
			return nil
		end
		local index = indexHint
		if index == nil then
			local visible = viewport.visibleRangeAt(offset, offset + viewportLength)
			if Types.isIndexRangeEmpty(visible) then
				return nil
			end
			index = visible.firstIndex
			-- An estimated Item's measurement would move every Item after it,
			-- so anchor the first visible Item whose length is final.
			local isItemMeasured = viewport.getLayout().isItemMeasured
			if isItemMeasured ~= nil then
				for candidate = visible.firstIndex, math.min(visible.lastIndex, itemCount) do
					if isItemMeasured(candidate) then
						index = candidate
						break
					end
				end
			end
		end
		local clamped = math.clamp(index :: number, 1, itemCount)
		local itemLayout = viewport.placedItemLayout(clamped)
		return {
			kind = "viewport",
			key = sequence.getItemKey(clamped),
			indexHint = clamped,
			viewportCoordinate = itemLayout.startOffset - offset,
			itemLength = itemLayout.length,
			scrollOffset = offset,
			viewportLength = viewportLength,
		}
	end

	-- The DataSource has already committed the batch, so evidence records the
	-- keys now at the previously visible indices with their prior geometry.
	local function captureEvidence(): Evidence?
		local offset = viewport.getScrollOffset()
		local viewportLength = viewport.getLength()
		local visible = viewport.getVisibleRange()
		if Types.isIndexRangeEmpty(visible) then
			return nil
		end
		local sequence = options.getItemSequence()
		local itemCount = sequence.getItemCount()
		local items = {}
		for index = visible.firstIndex, math.min(visible.lastIndex, itemCount) do
			local itemLayout = viewport.placedItemLayout(index)
			table.insert(items, {
				key = sequence.getItemKey(index),
				viewportCoordinate = itemLayout.startOffset - offset,
				itemLength = itemLayout.length,
			})
		end
		return { scrollOffset = offset, viewportLength = viewportLength, items = items }
	end

	local function prepareDataChange(changeBatch: Types.DataSourceChangeBatch, evidence: Evidence?)
		local current = anchor
		if current == nil then
			return
		end
		local projected = current.indexHint
		for _, change in changeBatch.changes do
			projected = projectIndex(projected, change)
		end
		current.indexHint = projected
		if current.kind == "itemTarget" or findKeyIndex(current.key, projected) ~= nil then
			return
		end
		-- The anchored key was removed: continue from the first visible
		-- survivor captured before the mutation.
		if evidence ~= nil and evidence.viewportLength > 0 then
			for _, item in evidence.items do
				local nextIndex = findKeyIndex(item.key, nil)
				if nextIndex ~= nil then
					anchor = {
						kind = "viewport",
						key = item.key,
						indexHint = nextIndex,
						viewportCoordinate = item.viewportCoordinate,
						itemLength = item.itemLength,
						scrollOffset = evidence.scrollOffset,
						viewportLength = evidence.viewportLength,
					}
					return
				end
			end
		end
		anchor = nil
	end

	local function resolve(change: Change): Correction?
		local current = anchor
		if current == nil then
			anchor = captureViewport(viewport.getScrollOffset(), nil)
			return nil
		end
		local index = findKeyIndex(current.key, current.indexHint)
		if index == nil then
			anchor = captureViewport(viewport.getScrollOffset(), nil)
			return nil
		end
		local source = change.source
		local offset = viewport.getScrollOffset()
		local delta
		if current.kind == "itemTarget" then
			current.indexHint = index
			source = Diagnostics.ScrollCorrectionSource.ProgrammaticScroll
			delta = viewport.offsetForItem(index, current.alignment) - offset
		elseif
			not (
				if FFlagViewRecyclerReact08
					then config.preserveScrollPositionOnChange
					else (options.shouldPreserveUserPosition :: () -> boolean)()
			)
		then
			anchor = captureViewport(offset, nil)
			return nil
		else
			current.indexHint = index
			local coordinate = viewport.placedItemLayout(index).startOffset - offset
			local startInsetDelta = change.startInsetDelta or 0
			delta = coordinate - current.viewportCoordinate - startInsetDelta
			if change.preserveStartAnchor and offset > 0 then
				delta += startInsetDelta
			end
		end
		delta = viewport.clamp(offset + delta) - offset
		if current.kind == "viewport" then
			local nextOffset = offset + (if math.abs(delta) < 1 then 0 else delta)
			local itemLayout = viewport.placedItemLayout(index)
			local coordinate = itemLayout.startOffset - nextOffset
			local viewportLength = viewport.getLength()
			if coordinate < viewportLength and coordinate + itemLayout.length > 0 then
				anchor = {
					kind = "viewport",
					key = current.key,
					indexHint = index,
					viewportCoordinate = coordinate,
					itemLength = itemLayout.length,
					scrollOffset = nextOffset,
					viewportLength = viewportLength,
				}
			else
				anchor = captureViewport(nextOffset, nil)
			end
		end
		return if math.abs(delta) < 1 then nil else { delta = delta, source = source }
	end

	local function setViewport(offset: number)
		local current = anchor
		if current ~= nil and current.kind == "viewport" then
			local coordinate = current.viewportCoordinate - (offset - current.scrollOffset)
			if coordinate < current.viewportLength and coordinate + current.itemLength > 0 then
				current.viewportCoordinate = coordinate
				current.scrollOffset = offset
				return
			end
		end
		anchor = captureViewport(offset, nil)
	end

	return {
		configure = (if FFlagViewRecyclerReact08
			then function(nextConfig)
				validate(nextConfig)
				config = nextConfig
			end
			else nil),
		setItemTarget = function(index, alignment)
			local sequence = options.getItemSequence()
			local itemCount = sequence.getItemCount()
			if itemCount == 0 then
				anchor = nil
				return
			end
			local target = math.clamp(index, 1, itemCount)
			anchor = {
				kind = "itemTarget",
				key = sequence.getItemKey(target),
				indexHint = target,
				alignment = alignment or ScrollAlignment.Start,
			}
		end,
		setViewport = setViewport,
		observeHost = function(offset)
			if
				if FFlagViewRecyclerReact08
					then not holdsItemTarget()
					else anchor == nil or (anchor :: Anchor).kind == "viewport"
			then
				setViewport(offset)
			end
		end,
		scrolledProgrammatically = (if FFlagViewRecyclerReact08
			then function(pinnedEdge)
				initialPending = false
				if pinnedEdge ~= nil then
					heldEdge = pinnedEdge
					pinned = true
				end
			end
			else nil),
		restore = function(snapshot, offset)
			local index = if snapshot.anchorKey == nil
				then nil
				else findKeyIndex(snapshot.anchorKey, snapshot.anchorIndex)
			anchor = captureViewport(offset, index)
		end,
		snapshotOffset = function(snapshot)
			if snapshot.anchorKey ~= nil then
				local index = findKeyIndex(snapshot.anchorKey, snapshot.anchorIndex)
				if index ~= nil then
					return viewport.placedItemLayout(index).startOffset + snapshot.offsetWithinItem
				end
			end
			return snapshot.fallbackScrollOffset
		end,
		preserve = function(change, mutate)
			local dataChange, followed, followsChange
			if FFlagViewRecyclerReact08 then
				dataChange = change.dataSourceChange
				followed = followedEdge(config.autoScrollOnChange)
				-- Following an edge reads where the viewport was before the change.
				followsChange = dataChange ~= nil
					and followed ~= nil
					and distanceFrom(followed :: Edge) <= followThreshold()
			end
			if (if FFlagViewRecyclerReact08 then dataChange else change.dataSourceChange) ~= nil then
				prepareDataChange(
					(if FFlagViewRecyclerReact08 then dataChange else change.dataSourceChange),
					captureEvidence()
				)
			end
			mutate()

			local correction
			if FFlagViewRecyclerReact08 then
				if dataChange ~= nil and not holdsItemTarget() and not opensAtInitialEdge() then
					if followsChange then
						hold(followed)
					elseif not pinned then
						hold(nil)
					end
				end
				correction = resolve(change)
				if correction ~= nil and (edgeHolds() or opensAtInitialEdge()) then
					-- `settle` moves to the edge instead; the viewport position
					-- stays where it was until then.
					setViewport(viewport.getScrollOffset())
					return nil
				end
				return correction
			else
				return resolve(change)
			end
		end,
		settle = (
			if FFlagViewRecyclerReact08
				then function(facts, move)
					if initialPending and hasItems() and isLaidOut() then
						initialPending = false
						-- The initial edge holds like any followed edge, so the Items it
						-- opens on can measure without leaving it.
						local edge = config.initialScrollAlignment
						if edge ~= nil then
							hold(edge)
							move(edgeOffset(edge))
							return
						end
					end
					local edge = heldEdge
					if facts.dataChange ~= nil then
						if edge ~= nil and edgeHolds() then
							move(edgeOffset(edge))
						end
						return
					end
					local laidOut = isLaidOut()
					local target: number? = nil
					if facts.contentLengthChanged and edge ~= nil and edgeHolds() then
						target = edgeOffset(edge)
					end
					if facts.replaced then
						target = 0
					end
					if facts.viewportChanged then
						local keptDistanceFromEnd = facts.keptDistanceFromEnd
						if laidOut and edge ~= nil and edgeHolds() then
							target = edgeOffset(edge)
						elseif keptDistanceFromEnd ~= nil and not holdsItemTarget() then
							target = viewport.getContentLength() - viewport.getLength() - keptDistanceFromEnd
						end
					end
					if target ~= nil then
						move(target)
					end
					if laidOut and (facts.replaced or facts.viewportChanged or facts.scrollMoved) then
						observe()
					end
				end
				else nil
		),
		getAnchoredItem = function()
			local current = anchor
			-- The index hint follows data changes without reading keys, which
			-- is close enough for placement until the anchor next resolves.
			if
				if FFlagViewRecyclerReact08
					then current ~= nil and current.kind == "itemTarget"
					else current == nil or (current.kind == "viewport" and not (
						options.shouldPreserveUserPosition :: () -> boolean
					)())
			then
				local index
				if FFlagViewRecyclerReact08 then
					index = current.indexHint
				end
				return (
					if FFlagViewRecyclerReact08
						then if index == nil
							then nil
							else table.freeze({ index = index, alignment = current.alignment })
						else nil
				)
			end

			local edge
			if FFlagViewRecyclerReact08 then
				edge = heldEdge
				-- Content that fits the viewport stays at its aligned edge, whichever
				-- edge is held.
				if viewport.getContentLength() <= viewport.getLength() then
					local contentAlignment = viewport.getContentAlignment()
					if contentAlignment == ScrollAlignment.Start then
						edge = ScrollAlignment.Start
					elseif contentAlignment == ScrollAlignment.End then
						edge = ScrollAlignment.End
					end
				end
				if edge ~= nil then
					local itemCount = options.getItemSequence().getItemCount()
					if itemCount == 0 then
						return nil
					end
					return table.freeze({
						index = if edge == ScrollAlignment.Start then 1 else itemCount,
						alignment = edge,
					})
				end
				if current == nil or not config.preserveScrollPositionOnChange then
					return nil
				end
			end
			local index = current.indexHint

			if FFlagViewRecyclerReact08 then
				return if index == nil then nil else table.freeze({ index = index, alignment = ScrollAlignment.Start })
			else
				if index == nil then
					return nil
				end
				return table.freeze({
					index = index,
					alignment = if current.kind == "itemTarget" then current.alignment else ScrollAlignment.Start,
				})
			end
		end,
		dataSourceReplaced = (if FFlagViewRecyclerReact08
			then function()
				anchor = nil
				heldEdge = nil
				pinned = false
				initialPending = true
			end
			else nil),
		reset = function()
			anchor = nil
		end,

		allowsPolicyOffset = if FFlagViewRecyclerReact08
			then nil
			else function()
				return anchor == nil or (anchor :: Anchor).kind == "viewport"
			end,
	}
end

return createScrollAnchor
