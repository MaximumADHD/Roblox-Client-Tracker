-- One-node-per-item size tree. Insert, update, and prefix walks assume every
-- node has itemCount = 1 and do not pay run-splitting costs.
local FFlagViewRecyclerReact084 = require(script:FindFirstAncestor("ViewRecycler").Flags).FFlagViewRecyclerReact084
local ISizeTree = require(script.Parent.ISizeTree)
local Weighted = require(script.Parent.WeightedOrderStatisticTree)

local OrderStatisticTree = {}

export type OrderStatisticTree = ISizeTree.ISizeTree

local function prefixSumUpTo(node: Weighted.Node?, rank: number, estimatedItemLength: number): number
	if node == nil or rank <= 0 then
		return 0
	end

	local leftCount = Weighted.nodeItemCount(node.left) + 1
	if rank < leftCount then
		return prefixSumUpTo(node.left, rank, estimatedItemLength)
	elseif rank > leftCount then
		return Weighted.nodeEffectiveSum(node.left, estimatedItemLength)
			+ ((if FFlagViewRecyclerReact084 then node.measuredSize or node.estimatedSize else node.measuredSize) or estimatedItemLength)
			+ prefixSumUpTo(node.right, rank - leftCount, estimatedItemLength)
	end
	return Weighted.nodeEffectiveSum(node.left, estimatedItemLength)
		+ (
			(if FFlagViewRecyclerReact084 then node.measuredSize or node.estimatedSize else node.measuredSize)
			or estimatedItemLength
		)
end

local function rankAtPrefixSum(node: Weighted.Node?, offset: number, estimatedItemLength: number): number
	if node == nil then
		return 0
	end

	local leftSum = Weighted.nodeEffectiveSum(node.left, estimatedItemLength)
	if offset < leftSum then
		return rankAtPrefixSum(node.left, offset, estimatedItemLength)
	end

	local leftCount = Weighted.nodeItemCount(node.left)
	local ownSize = (
		if FFlagViewRecyclerReact084
			then (node.measuredSize or node.estimatedSize or estimatedItemLength)
			else node.measuredSize or estimatedItemLength
	)
	if offset < leftSum + ownSize then
		return leftCount + 1
	end

	local rightRank = rankAtPrefixSum(node.right, offset - leftSum - ownSize, estimatedItemLength)
	if rightRank == 0 then
		return 0
	end
	return leftCount + 1 + rightRank
end

local function entryAtPrefixSum(
	node: Weighted.Node?,
	offset: number,
	estimatedItemLength: number
): (number, number, number)
	if node == nil then
		return 0, 0, 0
	end

	local leftSum = Weighted.nodeEffectiveSum(node.left, estimatedItemLength)
	if offset < leftSum then
		return entryAtPrefixSum(node.left, offset, estimatedItemLength)
	end

	local leftCount = Weighted.nodeItemCount(node.left)
	local ownSize = (
		if FFlagViewRecyclerReact084
			then (node.measuredSize or node.estimatedSize or estimatedItemLength)
			else node.measuredSize or estimatedItemLength
	)
	if offset < leftSum + ownSize then
		return leftCount + 1, leftSum, ownSize
	end

	local rightRank, rightStart, rightSize =
		entryAtPrefixSum(node.right, offset - leftSum - ownSize, estimatedItemLength)
	if rightRank == 0 then
		return 0, 0, 0
	end
	return leftCount + 1 + rightRank, leftSum + ownSize + rightStart, rightSize
end

function OrderStatisticTree.new(initialEstimatedItemLength: number?): OrderStatisticTree
	local root: Weighted.Node? = nil
	local estimatedItemLength = initialEstimatedItemLength or 0

	local function length(): number
		return Weighted.nodeItemCount(root)
	end

	local function prefixSum(index: number): number
		return if index <= 1 then 0 else prefixSumUpTo(root, index - 1, estimatedItemLength)
	end

	local function indexAtPrefixSum(offset: number): number
		local itemCount = length()
		if itemCount == 0 or offset <= 0 then
			return 1
		end
		local total = Weighted.nodeEffectiveSum(root, estimatedItemLength)
		if offset >= total then
			return itemCount + 1
		end
		return rankAtPrefixSum(root, offset, estimatedItemLength)
	end

	local function getEntryAtPrefixSum(offset: number): (number, number, number)
		local itemCount = length()
		if itemCount == 0 then
			return 1, 0, 0
		elseif offset <= 0 then
			if FFlagViewRecyclerReact084 then
				return 1, 0, Weighted.unitSizeAt(root, 1, estimatedItemLength)
			else
				return 1, 0, Weighted.measuredAt(root, 1) or estimatedItemLength
			end
		end
		local total = Weighted.nodeEffectiveSum(root, estimatedItemLength)
		if offset >= total then
			return itemCount + 1, total, 0
		end
		return entryAtPrefixSum(root, offset, estimatedItemLength)
	end

	local function getSize(index: number): number
		if index < 1 or index > length() then
			return 0
		end

		if FFlagViewRecyclerReact084 then
			return Weighted.unitSizeAt(root, index, estimatedItemLength)
		else
			return Weighted.measuredAt(root, index) or estimatedItemLength
		end
	end

	local function fillRange(firstIndex: number, lastIndex: number, output: { { startOffset: number, length: number } })
		Weighted.fillRangeFromNode(root, 0, 0, firstIndex, lastIndex, estimatedItemLength, output)
		for index = #output, lastIndex - firstIndex + 2, -1 do
			output[index] = nil
		end
	end

	local function update(index: number, measuredSize: number?)
		Weighted.updateUnitAt(root, index, measuredSize)
	end

	local insert
	if FFlagViewRecyclerReact084 then
		function insert(index: number, measuredSize: number?, estimatedSize: number?)
			root = Weighted.insertUnitAt(root, index, measuredSize, estimatedSize)
		end
	else
		function insert(index: number, measuredSize: number?)
			root = Weighted.insertUnitAt(root, index, measuredSize)
		end
	end

	local function remove(index: number)
		root = Weighted.removeUnitAt(root, index)
	end

	local function buildFromArray(sizes: { number })
		local specs = table.create(#sizes)
		for index, size in sizes do
			specs[index] = { itemCount = 1, measuredSize = size }
		end
		root = Weighted.buildBalanced(specs, 1, #specs)
	end

	local setItemEstimate, buildFromMeasurements
	if FFlagViewRecyclerReact084 then
		function setItemEstimate(index: number, estimatedSize: number?): boolean
			if index < 1 or index > length() or Weighted.estimatedAt(root, index) == estimatedSize then
				return false
			end
			local measuredSize = Weighted.measuredAt(root, index)
			local previousSize = getSize(index)
			root = Weighted.removeUnitAt(root, index)
			root = Weighted.insertUnitAt(root, index, measuredSize, estimatedSize)
			return getSize(index) ~= previousSize
		end

		function buildFromMeasurements(
			itemCount: number,
			getMeasuredSize: (index: number) -> number?,
			getEstimatedSize: ((index: number) -> number?)?
		)
			local specs = table.create(itemCount)
			for index = 1, itemCount do
				specs[index] = {
					itemCount = 1,
					measuredSize = getMeasuredSize(index),
					estimatedSize = if getEstimatedSize == nil then nil else getEstimatedSize(index),
				}
			end
			root = Weighted.buildBalanced(specs, 1, itemCount)
		end
	else
		function buildFromMeasurements(itemCount: number, getMeasuredSize: (index: number) -> number?)
			local specs = table.create(itemCount)
			for index = 1, itemCount do
				specs[index] = { itemCount = 1, measuredSize = getMeasuredSize(index) }
			end
			root = Weighted.buildBalanced(specs, 1, itemCount)
		end
	end

	return {
		prefixSum = prefixSum,
		indexAtPrefixSum = indexAtPrefixSum,
		entryAtPrefixSum = getEntryAtPrefixSum,
		getSize = getSize,
		fillRange = fillRange,
		update = update,
		insert = insert,
		remove = remove,
		setItemEstimate = (if FFlagViewRecyclerReact084 then setItemEstimate else nil),
		buildFromArray = buildFromArray,
		buildFromMeasurements = buildFromMeasurements,
		toArray = function()
			local sizes = table.create(length())
			Weighted.appendToArray(root, sizes, estimatedItemLength)
			return sizes
		end,
		setEstimatedItemLength = function(nextEstimatedItemLength: number): boolean
			local geometryChanged = estimatedItemLength ~= nextEstimatedItemLength
				and (if FFlagViewRecyclerReact084 then Weighted.nodeFixedCount else Weighted.nodeMeasuredCount)(
						root
					)
					< length()
			estimatedItemLength = nextEstimatedItemLength
			return geometryChanged
		end,
		getEstimatedItemLength = function()
			return estimatedItemLength
		end,
		getMeasuredItemCount = function()
			return Weighted.nodeMeasuredCount(root)
		end,
		prefersIncremental = function(changes: number): boolean
			local itemCount = length()
			if itemCount == 0 then
				return false
			end
			return changes < itemCount / math.log(itemCount, 2)
		end,
		length = length,
		totalSum = function()
			return Weighted.nodeEffectiveSum(root, estimatedItemLength)
		end,
	}
end

return OrderStatisticTree
