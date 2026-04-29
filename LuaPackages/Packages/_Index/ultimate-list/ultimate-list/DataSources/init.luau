local DataSources = {}

export type DataSource<T> =
	{
		type: "array",
		array: { T },
	}
	| {
		type: "mutableSource",
		methods: MutableDataSourceMethods<T>,
	}

export type MutableDataSourceMethods<T> = {
	-- Get a cursor to the nth element
	get: (startIndex: number) -> DataSourceCursor<T>?,

	-- Get the total length of the data source
	length: () -> number,

	-- Is given a callback to run when the data source changes.
	-- Returns a destructor to disconnect the function.
	bindToChanged: (callback: () -> ()) -> () -> (),

	-- The following have default definitions, but can be specialized to be more efficient.

	-- Get the final element (defaults to get(length()))
	back: (() -> T?)?,

	-- Get the elements from startIndex to and including endIndex.
	-- Defaults to using the `after` in your cursors.
	getByRange: ((startIndex: number, endIndex: number) -> { T })?,
}

export type DataSourceCursor<T> = {
	before: () -> DataSourceCursor<T>?,
	value: T,
	after: () -> DataSourceCursor<T>?,
}

function DataSources.array<T>(array: { T }): DataSource<T>
	return {
		type = "array",
		array = array,
	}
end

function DataSources.mutableSource<T>(methods: MutableDataSourceMethods<T>): DataSource<T>
	return {
		type = "mutableSource",
		methods = methods,
	}
end

DataSources.utilities = {}

-- Creates a wrapper around a simple `(index: number) -> T?` to get
-- a function that returns a DataStoreCursor<T>? for use in `get`.
function DataSources.utilities.createGetSimpleCursor<T>(
	-- Intentionally not `T?` because we expect length to be correct
	get: (index: number) -> T,
	getLength: () -> number
): (startIndex: number) -> DataSourceCursor<T>?
	return function(startIndex: number)
		local length = getLength()

		local function getWithCursor(index: number): DataSourceCursor<T>?
			if index < 1 or index > length then
				return nil
			end

			return {
				before = function()
					return getWithCursor(index - 1)
				end,

				value = get(index),

				after = function()
					return getWithCursor(index + 1)
				end,
			}
		end

		return getWithCursor(startIndex)
	end
end

return DataSources
