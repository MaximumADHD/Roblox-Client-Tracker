-- Shared interface that all size-tree implementations must satisfy.
-- Measured layouts depend only on this type — never on a concrete tree.
-- Complexity uses n for logical items and r for physical tree nodes. The
-- collapsed implementation can use r << n; public worst-case bounds use n.
local ISizeTree = {}

export type ISizeTree = {
	-- O(log r), worst-case O(log n): cumulative sum of sizes for items
	-- 1..index-1 (= start offset of item at index)
	prefixSum: (index: number) -> number,

	-- O(log r), worst-case O(log n): smallest 1-based index i such that
	-- prefixSum(i+1) > offset
	-- (i.e. the item whose size-span contains `offset`). Boundary offsets
	-- prefixSum(i+1) resolve to i+1. Returns length()+1 when offset >= totalSum,
	-- and 1 when offset <= 0 or the tree is empty.
	indexAtPrefixSum: (offset: number) -> number,

	-- O(log r), worst-case O(log n): resolves the same index as
	-- indexAtPrefixSum together with
	-- that item's start offset and length in the same tree traversal.
	entryAtPrefixSum: (offset: number) -> (number, number, number),

	-- O(log r), worst-case O(log n): size stored at logical index
	getSize: (index: number) -> number,
	-- O(log n + k): materialize one contiguous range in logical order.
	fillRange: (firstIndex: number, lastIndex: number, output: { { startOffset: number, length: number } }) -> (),

	-- O(log r), worst-case O(log n): update the measured size at logical
	-- index. nil restores the global estimate.
	update: (index: number, measuredSize: number?) -> (),

	-- O(log r), worst-case O(log n): insert a new item at logical index
	insert: (index: number, measuredSize: number?) -> (),

	-- O(log r), worst-case O(log n): remove item at logical index
	remove: (index: number) -> (),

	-- O(n): rebuild the entire tree from a flat sizes array
	buildFromArray: (sizes: { number }) -> (),
	buildFromMeasurements: (itemCount: number, getMeasuredSize: (index: number) -> number?) -> (),
	-- O(n): return sizes in logical-index order.
	toArray: () -> { number },

	-- O(1): update the size used by every unmeasured item. Returns whether
	-- existing effective geometry changed.
	setEstimatedItemLength: (estimatedItemLength: number) -> boolean,
	getEstimatedItemLength: () -> number,
	getMeasuredItemCount: () -> number,

	-- Returns true when applying `changes` individual insert/remove ops is cheaper
	-- than a full O(n) rebuild. Each implementation encodes its own cost model here
	-- so measured layouts stay decoupled from data-structure internals.
	prefersIncremental: (changes: number) -> boolean,

	-- O(1)
	length: () -> number,
	totalSum: () -> number,
}

return ISizeTree
