local Src = script:FindFirstAncestor("ultimate-list")

local DataSourceMethods = require(Src.DataSources.DataSourceMethods)
local DataSources = require(Src.DataSources)
local Dimensions = require(Src.Dimensions)
local DimensionsMethods = require(Src.Dimensions.DimensionsMethods)
local binarySearchIndexRangeInView = require(script.binarySearchIndexRangeInView)
local createDebugLogger = require(Src.Util.createDebugLogger)
local exhaustiveMatch = require(Src.Util.exhaustiveMatch)

local log = createDebugLogger("createVirtualizedListController")

export type VirtualizedListController<T> = {
	setScrollAxis: (scrollAxis: number) -> (),

	setWindowSize: (windowSize: Vector2) -> (),
	getWindowSize: () -> Vector2,

	setDataSource: (DataSources.DataSource<T>) -> (),
	setDimensions: (Dimensions.Dimensions<T>) -> (),

	-- If the view has not changed, will return the identical last result
	get: () -> { T },
	getCanvasSize: () -> UDim2,
	getRange: () -> Vector3,

	bindToUpdate: (callback: () -> ()) -> () -> (),

	destroy: () -> (),
}

type CurrentView<T> = {
	range: Vector3,
	canvasSize: UDim2,
	windowSize: Vector2,
	lastDimensions: Dimensions.Dimensions<T>,
	cachedLastResult: { T },
	offsetBoundaries: Vector3?,
	dataSource: DataSources.DataSource<T>,
}

local function createVirtualizedListController<T>(
	dataSource: DataSources.DataSource<T>,
	dimensions: Dimensions.Dimensions<T>,
	direction: "x" | "y"
): VirtualizedListController<T>
	local currentView: CurrentView<T> = {
		range = Vector3.new(),
		canvasSize = UDim2.new(),
		windowSize = Vector2.new(),
		lastDimensions = dimensions,
		scrollSizeAxis = 0,
		cachedLastResult = {},
		dataSource = dataSource,
	}

	local scrollAxis = 0

	local windowAxis = 0
	local windowSize = Vector2.new()

	local function getIndexRangeInViewForSize(size: number): Vector3
		local head = 1 + scrollAxis // size
		local tail = 1 + ((scrollAxis + windowAxis) // size)

		return Vector3.new(head, tail)
	end

	local function getIndexRangeInViewForUDim2(udim2: UDim2): Vector3
		-- Amount per row if we're Y direction,
		-- amount per column if we're X.
		local amountPerNonDominant = DimensionsMethods.getAmountPerNonDominantInGrid(udim2, windowSize, direction)

		local dominantSize = if direction == "x"
			then udim2.X.Offset
			elseif direction == "y" then udim2.Y.Offset
			else exhaustiveMatch(direction)

		local head = 1 + ((scrollAxis // dominantSize) * amountPerNonDominant)
		local tail = (1 + ((scrollAxis + windowAxis) // dominantSize)) * amountPerNonDominant

		log(
			"getIndexRangeInView: amountPerNonDominant = %d, scrollAxis = %d, dominantSize = %d. Going from %d to %d",
			amountPerNonDominant,
			scrollAxis,
			dominantSize,
			head,
			tail
		)

		return Vector3.new(head, tail)
	end

	-- consistentUDim2: O(1)
	-- consistentSize: O(1)
	-- getter: O(log n) assuming getter is O(1)
	local function getIndexRangeInView(): Vector3
		if dimensions.type == "consistentUDim2" then
			return getIndexRangeInViewForUDim2(dimensions.udim2)
		elseif dimensions.type == "consistentSize" then
			return getIndexRangeInViewForSize(dimensions.size)
		elseif dimensions.type == "getter" then
			return binarySearchIndexRangeInView(dataSource, dimensions.callback, scrollAxis, windowAxis, direction)
		elseif dimensions.type == "spaced" then
			if dimensions.inner.type == "consistentSize" then
				return getIndexRangeInViewForSize(dimensions.inner.size + dimensions.spacing)
			elseif dimensions.inner.type == "consistentUDim2" then
				return getIndexRangeInViewForUDim2(
					dimensions.inner.udim2
						+ UDim2.fromOffset(
							if direction == "x" then dimensions.spacing else 0,
							if direction == "y" then dimensions.spacing else 0
						)
				)
			elseif dimensions.inner.type == "spaced" or dimensions.inner.type == "getter" then
				error("Unsupported spaced dimensions")
			else
				return exhaustiveMatch(dimensions.inner.type)
			end
		else
			return exhaustiveMatch(dimensions.type)
		end
	end

	local callbacks: { [() -> ()]: true? } = {}

	local function callUpdateCallbacks()
		for callback in callbacks do
			callback()
		end
	end

	local function update()
		-- Only re-check if we actually will see anything new
		if
			currentView.offsetBoundaries ~= nil
			and currentView.offsetBoundaries.X <= scrollAxis
			and currentView.offsetBoundaries.Y >= windowAxis + scrollAxis
			and currentView.windowSize == windowSize
			-- TODO: If append only, just check length, though make sure
			-- that it still works if the window hasn't been tall enough to
			-- scroll yet (I'm not sure if offsetBoundaries will work)
			and currentView.dataSource == dataSource
			and currentView.lastDimensions == dimensions
		then
			return
		end

		local newIndexRange = getIndexRangeInView()
		local items = DataSourceMethods.getByRange(dataSource, newIndexRange)

		if #items == 0 then
			log("View changed, but no items in list")

			currentView = {
				range = newIndexRange,
				canvasSize = UDim2.new(),
				windowSize = windowSize,
				lastDimensions = dimensions,
				cachedLastResult = {},
				offsetBoundaries = Vector3.new(scrollAxis, windowAxis + scrollAxis),
				dataSource = dataSource,
			}

			callUpdateCallbacks()

			return
		end

		local topDimensions =
			DimensionsMethods.getUDimRect(dimensions, items[1], newIndexRange.X, windowSize, direction)
		local bottomDimensions =
			DimensionsMethods.getUDimRect(dimensions, items[#items], newIndexRange.Y, windowSize, direction)

		log(
			"View changed: %d..%d (scroll axis: %d, window axis: %d, offset boundaries: %* - %*)",
			newIndexRange.X,
			newIndexRange.Y,
			scrollAxis,
			windowAxis,
			currentView.offsetBoundaries and currentView.offsetBoundaries.X,
			currentView.offsetBoundaries and currentView.offsetBoundaries.Y
		)

		currentView = {
			range = newIndexRange,
			canvasSize = DimensionsMethods.getCanvasSize(dimensions, dataSource, windowSize, direction),
			windowSize = windowSize,
			lastDimensions = dimensions,
			cachedLastResult = items,
			offsetBoundaries = Vector3.new(
				if direction == "x"
					then topDimensions.position.X.Offset
					elseif direction == "y" then topDimensions.position.Y.Offset
					else exhaustiveMatch(direction),

				if direction == "x"
					then bottomDimensions.position.X.Offset + bottomDimensions.size.X.Offset
					elseif direction == "y" then bottomDimensions.position.Y.Offset + bottomDimensions.size.Y.Offset
					else exhaustiveMatch(direction)
			),
			dataSource = dataSource,
		}

		callUpdateCallbacks()
	end

	local function setScrollAxis(newScrollAxis: number)
		scrollAxis = newScrollAxis
		update()
	end

	local function setDataSource(newDataSource: DataSources.DataSource<T>)
		assert(dataSource.type == newDataSource.type, "Data source type changed, you must keep it the same")

		if DataSourceMethods.equals(dataSource, newDataSource) then
			return
		end

		dataSource = newDataSource
		update()
	end

	local function setDimensions(newDimensions: Dimensions.Dimensions<T>)
		if DimensionsMethods.equals(dimensions, newDimensions) then
			return
		end

		dimensions = newDimensions
		update()
	end

	local function setWindowSize(newWindowSize: Vector2)
		if windowSize == newWindowSize then
			return
		end

		windowSize = newWindowSize
		windowAxis = DimensionsMethods.getDominantAxis(newWindowSize, direction)

		update()
	end

	local function getWindowSize(): Vector2
		return windowSize
	end

	local function get(): { T }
		return currentView.cachedLastResult
	end

	local function getCanvasSize(): UDim2
		return currentView.canvasSize
	end

	local function getRange(): Vector3
		return currentView.range
	end

	local function bindToUpdate(callback: () -> ()): () -> ()
		callbacks[callback] = true
		return function()
			callbacks[callback] = nil
		end
	end

	local disconnectMutableSourceUpdate: (() -> ())? = if dataSource.type == "mutableSource"
		then dataSource.methods.bindToChanged(update)
		else nil

	local function destroy()
		if disconnectMutableSourceUpdate ~= nil then
			disconnectMutableSourceUpdate()
		end
	end

	return {
		setScrollAxis = setScrollAxis,
		setDataSource = setDataSource,
		setDimensions = setDimensions,

		setWindowSize = setWindowSize,
		getWindowSize = getWindowSize,

		get = get,
		getCanvasSize = getCanvasSize,
		getRange = getRange,

		bindToUpdate = bindToUpdate,

		destroy = destroy,
	}
end

return createVirtualizedListController
