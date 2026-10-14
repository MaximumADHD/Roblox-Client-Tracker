-- DataSource<T> owns ordered data and stable identity. Mutable factories
-- emit one change batch after each public operation; transaction()
-- batches nested operations and rolls back the whole batch on error.
local Src = script:FindFirstAncestor("ViewRecycler")

local Types = require(Src.Core.Types)

local ReconcileSnapshot = require(script.ReconcileSnapshot)
local createArrayDataSource = require(script.ArrayDataSource)
local createConcatDataSource = require(script.ConcatDataSource)
local createDequeDataSource = require(script.DequeDataSource)
local createMapDataSource = require(script.MapDataSource)
local createReverseDataSource = require(script.ReverseDataSource)
local createRingBufferDataSource = require(script.RingBufferDataSource)
local createSequenceDataSource = require(script.SequenceDataSource)

export type GetItemKey<T> = (value: T, index: number) -> string
export type ChangeBatch = Types.DataSourceChangeBatch

export type DataSource<T> = {
	getItemCount: () -> number,
	getItem: (index: number) -> T,
	getItemKey: (index: number) -> string,
	getItems: (firstIndex: number, lastIndex: number) -> { T },
	subscribe: (callback: (changeBatch: ChangeBatch) -> ()) -> () -> (),
}

export type MutableSequence<T> = DataSource<T> & {
	append: (value: T) -> (),
	prepend: (value: T) -> (),
	insert: (index: number, value: T) -> (),
	remove: (index: number, count: number?) -> (),
	setItem: (index: number, value: T) -> (),
	moveItem: (fromIndex: number, toIndex: number) -> (),
	reorder: (orderedKeys: { string }) -> (),
	replaceItems: (firstIndex: number, lastIndex: number, values: { T }) -> (),
	reset: (values: { T }) -> (),
	transaction: (callback: () -> ()) -> (),
}

export type Deque<T> = DataSource<T> & {
	pushFront: (value: T) -> (),
	pushBack: (value: T) -> (),
	popFront: () -> T?,
	popBack: () -> T?,
	transaction: (callback: () -> ()) -> (),
}

export type RingBuffer<T> = DataSource<T> & {
	push: (value: T) -> (),
	clear: () -> (),
	transaction: (callback: () -> ()) -> (),
}

local DataSource = {}

function DataSource.snapshot<T>(items: { T }, getItemKey: GetItemKey<T>?): DataSource<T>
	return createArrayDataSource(items, getItemKey)
end

function DataSource.sequence<T>(initial: { T }?, getItemKey: GetItemKey<T>?): MutableSequence<T>
	return createSequenceDataSource(initial, getItemKey)
end

function DataSource.deque<T>(initial: { T }?, getItemKey: GetItemKey<T>?): Deque<T>
	return createDequeDataSource(initial, getItemKey)
end

function DataSource.ringBuffer<T>(capacity: number, initial: { T }?, getItemKey: GetItemKey<T>?): RingBuffer<T>
	return createRingBufferDataSource(capacity, initial, getItemKey)
end

function DataSource.map<T, U>(child: DataSource<T>, mapper: (value: T, index: number) -> U): DataSource<U>
	return createMapDataSource(child, mapper)
end

function DataSource.concat<T>(...: DataSource<T>): DataSource<T>
	return createConcatDataSource(...)
end

function DataSource.reverse<T>(child: DataSource<T>): DataSource<T>
	return createReverseDataSource(child)
end

function DataSource.reconcileSnapshot<T>(
	dataSource: MutableSequence<T>,
	previousItems: { T },
	nextItems: { T },
	getItemKey: GetItemKey<T>
)
	ReconcileSnapshot(dataSource, previousItems, nextItems, getItemKey)
end

return DataSource
