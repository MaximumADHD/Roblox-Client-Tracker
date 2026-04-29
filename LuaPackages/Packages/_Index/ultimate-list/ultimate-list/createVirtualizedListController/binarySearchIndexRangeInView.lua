local Src = script:FindFirstAncestor("ultimate-list")

local DataSourceMethods = require(Src.DataSources.DataSourceMethods)
local DataSources = require(Src.DataSources)
local Dimensions = require(Src.Dimensions)
local exhaustiveMatch = require(Src.Util.exhaustiveMatch)

local function binarySearchIndexRangeInView<T>(
	dataSource: DataSources.DataSource<T>,
	getUDimRect: (value: T, index: number) -> Dimensions.UDimRect,

	scrollAxis: number,
	windowAxis: number,

	direction: "x" | "y"
): Vector3
	type Comparison = "before" | "inside" | "after"
	local function compareInView(udimRect: Dimensions.UDimRect): Comparison
		local position = if direction == "x"
			then udimRect.position.X.Offset
			elseif direction == "y" then udimRect.position.Y.Offset
			else exhaustiveMatch(direction)

		local size = if direction == "x"
			then udimRect.size.X.Offset
			elseif direction == "y" then udimRect.size.Y.Offset
			else exhaustiveMatch(direction)

		if position + size < scrollAxis then
			return "before"
		elseif position > scrollAxis + windowAxis then
			return "after"
		else
			return "inside"
		end
	end

	local low = 1

	local length = DataSourceMethods.length(dataSource)
	local high = length

	while low <= high do
		local mid = (low + high) // 2

		local cursor = DataSourceMethods.get(dataSource, mid)
		assert(cursor ~= nil, "get() returned nil, meaning the length is inaccurate")

		local cursorUDimRect = getUDimRect(cursor.value, mid)
		local comparison: Comparison = compareInView(cursorUDimRect)

		if comparison == "after" then
			high = mid - 1
		elseif comparison == "before" then
			low = mid + 1
		elseif comparison == "inside" then
			local min = mid
			local minCursor = cursor

			while min > 1 do
				local nextCursor = minCursor.before()
				if nextCursor == nil then
					break
				end

				if compareInView(getUDimRect(nextCursor.value, min - 1)) ~= "inside" then
					break
				end

				min -= 1
				minCursor = nextCursor
			end

			local max = mid
			local maxCursor = cursor

			while max < length do
				local nextCursor = maxCursor.after()
				if nextCursor == nil then
					break
				end

				if compareInView(getUDimRect(nextCursor.value, max + 1)) ~= "inside" then
					break
				end

				max += 1
				maxCursor = nextCursor
			end

			return Vector3.new(min, max)
		else
			exhaustiveMatch(comparison)
		end
	end

	return Vector3.zero
end

return binarySearchIndexRangeInView
