-- TODO: Throughout this, assert that UDims are what is expected (scale only on opposite direction)
local Src = script:FindFirstAncestor("ultimate-list")

local DataSourceMethods = require(Src.DataSources.DataSourceMethods)
local DataSources = require(Src.DataSources)
local Dimensions = require(script.Parent)
local exhaustiveMatch = require(Src.Util.exhaustiveMatch)

local DimensionsMethods = {}

function DimensionsMethods.getCanvasSize<T>(
	dimensions: Dimensions.Dimensions<T>,
	dataSource: DataSources.DataSource<T>,
	windowSize: Vector2,
	direction: "x" | "y"
): UDim2
	local back = DataSourceMethods.back(dataSource)
	if back == nil then
		return UDim2.new()
	end

	local udimRect =
		DimensionsMethods.getUDimRect(dimensions, back, DataSourceMethods.length(dataSource), windowSize, direction)
	return if direction == "x"
		then UDim2.fromOffset(udimRect.position.X.Offset + udimRect.size.X.Offset, 0)
		elseif direction == "y" then UDim2.fromOffset(0, udimRect.position.Y.Offset + udimRect.size.Y.Offset)
		else exhaustiveMatch(direction)
end

local function getUDimSizeForConsistentSize(size: number, direction: "x" | "y"): UDim2
	if direction == "x" then
		return UDim2.new(0, size, 1, 0)
	elseif direction == "y" then
		return UDim2.new(1, 0, 0, size)
	else
		return exhaustiveMatch(direction)
	end
end

local function getPositionForConsistentSize(size: number, index: number, direction: "x" | "y"): UDim2
	if direction == "x" then
		return UDim2.fromOffset(size * (index - 1), 0)
	elseif direction == "y" then
		return UDim2.fromOffset(0, size * (index - 1))
	else
		return exhaustiveMatch(direction)
	end
end

local function getPositionForConsistentUDim2(
	udim2: UDim2,
	index: number,
	windowSize: Vector2,
	direction: "x" | "y"
): UDim2
	local amountPerNonDominant = DimensionsMethods.getAmountPerNonDominantInGrid(udim2, windowSize, direction)

	if direction == "x" then
		return UDim2.new(
			0,
			(math.ceil(index / amountPerNonDominant) - 1) * udim2.X.Offset,
			udim2.Y.Scale * ((index - 1) % amountPerNonDominant),
			udim2.Y.Offset * ((index - 1) % amountPerNonDominant)
		)
	elseif direction == "y" then
		return UDim2.new(
			udim2.X.Scale * ((index - 1) % amountPerNonDominant),
			udim2.X.Offset * ((index - 1) % amountPerNonDominant),
			0,
			(math.ceil(index / amountPerNonDominant) - 1) * udim2.Y.Offset
		)
	else
		return exhaustiveMatch(direction)
	end
end

-- If direction == x: the number of rows per column.
-- If direction == y: the number of columsn per row.
function DimensionsMethods.getAmountPerNonDominantInGrid(
	udim2: UDim2,
	windowSize: Vector2,
	direction: "x" | "y"
): number
	if direction == "x" then
		return windowSize.Y // (udim2.Y.Offset + udim2.Y.Scale * windowSize.Y)
	elseif direction == "y" then
		return windowSize.X // (udim2.X.Offset + udim2.X.Scale * windowSize.X)
	else
		return exhaustiveMatch(direction)
	end
end

function DimensionsMethods.getDominantAxis(vector: Vector2, direction: "x" | "y"): number
	if direction == "x" then
		return vector.X
	elseif direction == "y" then
		return vector.Y
	else
		return exhaustiveMatch(direction)
	end
end

function DimensionsMethods.getUDimRect<T>(
	dimensions: Dimensions.Dimensions<T>,
	item: T,
	index: number,
	windowSize: Vector2,
	direction: "x" | "y"
): Dimensions.UDimRect
	if dimensions.type == "consistentSize" then
		return {
			size = getUDimSizeForConsistentSize(dimensions.size, direction),
			position = getPositionForConsistentSize(dimensions.size, index, direction),
		}
	elseif dimensions.type == "consistentUDim2" then
		return {
			size = dimensions.udim2,
			position = getPositionForConsistentUDim2(dimensions.udim2, index, windowSize, direction),
		}
	elseif dimensions.type == "getter" then
		return dimensions.callback(item, index)
	elseif dimensions.type == "spaced" then
		if dimensions.inner.type == "consistentSize" then
			return {
				size = getUDimSizeForConsistentSize(dimensions.inner.size, direction),
				position = getPositionForConsistentSize(dimensions.inner.size + dimensions.spacing, index, direction),
			}
		elseif dimensions.inner.type == "consistentUDim2" then
			return {
				size = dimensions.inner.udim2,
				position = getPositionForConsistentUDim2(
					dimensions.inner.udim2
						+ UDim2.fromOffset(
							if direction == "x" then dimensions.spacing else 0,
							if direction == "y" then dimensions.spacing else 0
						),
					index,
					windowSize,
					direction
				),
			}
		elseif dimensions.inner.type == "getter" or dimensions.inner.type == "spaced" then
			error("Unsupported spaced dimensions")
		else
			return exhaustiveMatch(dimensions.inner.type)
		end
	else
		return exhaustiveMatch(dimensions.type)
	end
end

local function getElementsDisplayedForUDim2(udim2: UDim2, windowSize: Vector2, direction: "x" | "y"): number
	local amountPerNonDominant = DimensionsMethods.getAmountPerNonDominantInGrid(udim2, windowSize, direction)
	if direction == "x" then
		local columns = windowSize.X // udim2.Y.Offset + 2
		return amountPerNonDominant * columns
	elseif direction == "y" then
		local rows = windowSize.Y // udim2.X.Offset + 2
		return amountPerNonDominant * rows
	else
		return exhaustiveMatch(direction)
	end
end

function DimensionsMethods.elementsDisplayedHint<T>(
	dimensions: Dimensions.Dimensions<T>,
	windowSize: Vector2,
	direction: "x" | "y"
): number?
	-- Uses of +2 are for supporting top and bottom clipped off
	if dimensions.type == "consistentSize" then
		return DimensionsMethods.getDominantAxis(windowSize, direction) // dimensions.size + 2
	elseif dimensions.type == "consistentUDim2" then
		return getElementsDisplayedForUDim2(dimensions.udim2, windowSize, direction)
	elseif dimensions.type == "getter" then
		return nil
	elseif dimensions.type == "spaced" then
		if dimensions.inner.type == "consistentSize" then
			return DimensionsMethods.getDominantAxis(windowSize, direction)
					// (dimensions.inner.size + dimensions.spacing)
				+ 2
		elseif dimensions.inner.type == "consistentUDim2" then
			return getElementsDisplayedForUDim2(
				dimensions.inner.udim2
					+ UDim2.fromOffset(
						if direction == "x" then dimensions.spacing else 0,
						if direction == "y" then dimensions.spacing else 0
					),
				windowSize,
				direction
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

-- Shallow equals.
function DimensionsMethods.equals<T>(left: Dimensions.Dimensions<T>, right: Dimensions.Dimensions<T>): boolean
	if left.type ~= right.type then
		return false
	end

	if left.type == "getter" then
		assert(right.type == "getter", "Luau")
		return left.callback == right.callback
	elseif left.type == "consistentSize" then
		assert(right.type == "consistentSize", "Luau")
		return left.size == right.size
	elseif left.type == "consistentUDim2" then
		assert(right.type == "consistentUDim2", "Luau")
		return left.udim2 == right.udim2
	elseif left.type == "spaced" then
		assert(right.type == "spaced", "Luau")
		return left.spacing == right.spacing
	else
		return exhaustiveMatch(left.type)
	end
end

return DimensionsMethods
