-- Size tree that collapses each contiguous run of unmeasured items with the
-- same estimate into one variable-weight AVL node. Measured items remain one
-- node each.
local FFlagViewRecyclerReact084 = require(script:FindFirstAncestor("ViewRecycler").Flags).FFlagViewRecyclerReact084
local ISizeTree = require(script.Parent.ISizeTree)
local Weighted = require(script.Parent.WeightedOrderStatisticTree)

local CollapsedEstimatedTree = {}

export type CollapsedEstimatedTree = ISizeTree.ISizeTree & {
	-- Internal diagnostic used by representation tests and benchmarks.
	getNodeCount: () -> number,
}

local isSameRun
if FFlagViewRecyclerReact084 then
	function isSameRun(node: Weighted.Node, other: Weighted.Node): boolean
		return node.measuredSize == nil and other.measuredSize == nil and node.estimatedSize == other.estimatedSize
	end
end

local function concatenateMergingUnmeasured(left: Weighted.Node?, right: Weighted.Node?): Weighted.Node?
	if left == nil then
		return right
	elseif right == nil then
		return left
	end

	local leftRemainder, leftLast = Weighted.popMaximum(left)
	local rightRemainder, rightFirst = Weighted.popMinimum(right)
	if
		if FFlagViewRecyclerReact084
			then isSameRun(leftLast, rightFirst)
			else leftLast.measuredSize == nil and rightFirst.measuredSize == nil
	then
		return Weighted.join(
			leftRemainder,
			(
				if FFlagViewRecyclerReact084
					then Weighted.newNode(leftLast.itemCount + rightFirst.itemCount, nil, leftLast.estimatedSize)
					else Weighted.newNode(leftLast.itemCount + rightFirst.itemCount, nil)
			),
			rightRemainder
		)
	end
	return Weighted.concatenate(
		Weighted.join(leftRemainder, leftLast, nil),
		Weighted.join(nil, rightFirst, rightRemainder)
	)
end

local concatenatePieces, growUnmeasuredRun
if FFlagViewRecyclerReact084 then
	function concatenatePieces(
		left: Weighted.Node?,
		leftRun: number,
		middle: Weighted.Node,
		rightRun: number,
		right: Weighted.Node?,
		runEstimatedSize: number?
	): Weighted.Node
		local result = left
		if leftRun > 0 then
			result = concatenateMergingUnmeasured(result, Weighted.newNode(leftRun, nil, runEstimatedSize))
		end
		result = concatenateMergingUnmeasured(result, middle)
		if rightRun > 0 then
			result = concatenateMergingUnmeasured(result, Weighted.newNode(rightRun, nil, runEstimatedSize))
		end
		return concatenateMergingUnmeasured(result, right) :: Weighted.Node
	end

	function growUnmeasuredRun(node: Weighted.Node?, index: number, estimatedSize: number?): (Weighted.Node?, boolean)
		if node == nil then
			return nil, false
		end

		local leftCount = Weighted.nodeItemCount(node.left)
		if index <= leftCount then
			local left, grown = growUnmeasuredRun(node.left, index, estimatedSize)
			node.left = left
			if grown then
				Weighted.refresh(node)
			end
			return node, grown
		elseif index > leftCount + node.itemCount then
			local right, grown = growUnmeasuredRun(node.right, index - leftCount - node.itemCount, estimatedSize)
			node.right = right
			if grown then
				Weighted.refresh(node)
			end
			return node, grown
		elseif node.measuredSize == nil and node.estimatedSize == estimatedSize then
			node.itemCount += 1
			Weighted.refresh(node)
			return node, true
		end

		return node, false
	end
else
	function concatenatePieces(
		left: Weighted.Node?,
		leftRun: number,
		middle: Weighted.Node,
		rightRun: number,
		right: Weighted.Node?
	): Weighted.Node
		local result = left
		if leftRun > 0 then
			result = concatenateMergingUnmeasured(result, Weighted.newNode(leftRun, nil))
		end
		result = concatenateMergingUnmeasured(result, middle)
		if rightRun > 0 then
			result = concatenateMergingUnmeasured(result, Weighted.newNode(rightRun, nil))
		end
		return concatenateMergingUnmeasured(result, right) :: Weighted.Node
	end

	function growUnmeasuredRun(node: Weighted.Node?, index: number): (Weighted.Node?, boolean)
		if node == nil then
			return nil, false
		end

		local leftCount = Weighted.nodeItemCount(node.left)
		if index <= leftCount then
			local left, grown = growUnmeasuredRun(node.left, index)
			node.left = left
			if grown then
				Weighted.refresh(node)
			end
			return node, grown
		elseif index > leftCount + node.itemCount then
			local right, grown = growUnmeasuredRun(node.right, index - leftCount - node.itemCount)
			node.right = right
			if grown then
				Weighted.refresh(node)
			end
			return node, grown
		elseif node.measuredSize == nil then
			node.itemCount += 1
			Weighted.refresh(node)
			return node, true
		end

		return node, false
	end
end

local function shrinkUnmeasuredRun(node: Weighted.Node?, index: number): (Weighted.Node?, boolean)
	if node == nil then
		return nil, false
	end

	local leftCount = Weighted.nodeItemCount(node.left)
	if index <= leftCount then
		local left, shrunk = shrinkUnmeasuredRun(node.left, index)
		node.left = left
		if shrunk then
			Weighted.refresh(node)
		end
		return node, shrunk
	elseif index > leftCount + node.itemCount then
		local right, shrunk = shrinkUnmeasuredRun(node.right, index - leftCount - node.itemCount)
		node.right = right
		if shrunk then
			Weighted.refresh(node)
		end
		return node, shrunk
	elseif node.measuredSize == nil and node.itemCount > 1 then
		node.itemCount -= 1
		Weighted.refresh(node)
		return node, true
	end

	return node, false
end

local function mergeAdjacentUnmeasured(node: Weighted.Node): Weighted.Node
	if node.measuredSize == nil then
		if node.left ~= nil then
			local remainder, last = Weighted.popMaximum(node.left)
			if if FFlagViewRecyclerReact084 then isSameRun(node, last) else last.measuredSize == nil then
				node.itemCount += last.itemCount
				node.left = remainder
			else
				node.left = Weighted.join(remainder, last, nil)
			end
		end
		if node.right ~= nil then
			local remainder, first = Weighted.popMinimum(node.right)
			if if FFlagViewRecyclerReact084 then isSameRun(node, first) else first.measuredSize == nil then
				node.itemCount += first.itemCount
				node.right = remainder
			else
				node.right = Weighted.join(nil, first, remainder)
			end
		end
	end
	return Weighted.balance(node)
end

local function measureAt(node: Weighted.Node?, index: number, measuredSize: number): Weighted.Node?
	if node == nil then
		return nil
	end

	local leftCount = Weighted.nodeItemCount(node.left)
	if index <= leftCount then
		node.left = measureAt(node.left, index, measuredSize)
		return mergeAdjacentUnmeasured(node)
	elseif index > leftCount + node.itemCount then
		node.right = measureAt(node.right, index - leftCount - node.itemCount, measuredSize)
		return mergeAdjacentUnmeasured(node)
	elseif node.itemCount == 1 then
		node.measuredSize = measuredSize
		return mergeAdjacentUnmeasured(node)
	end

	local offset = index - leftCount

	if FFlagViewRecyclerReact084 then
		return concatenatePieces(
			node.left,
			offset - 1,
			Weighted.newNode(1, measuredSize, node.estimatedSize),
			node.itemCount - offset,
			node.right,
			node.estimatedSize
		)
	else
		return concatenatePieces(
			node.left,
			offset - 1,
			Weighted.newNode(1, measuredSize),
			node.itemCount - offset,
			node.right
		)
	end
end

local function unmeasureAt(node: Weighted.Node?, index: number): Weighted.Node?
	if node == nil then
		return nil
	end

	local leftCount = Weighted.nodeItemCount(node.left)
	if index <= leftCount then
		node.left = unmeasureAt(node.left, index)
	elseif index > leftCount + node.itemCount then
		node.right = unmeasureAt(node.right, index - leftCount - node.itemCount)
	else
		assert(node.itemCount == 1, "CollapsedEstimatedTree: unmeasure requires a unit node")
		node.measuredSize = nil
	end
	return mergeAdjacentUnmeasured(node)
end

local insertMeasuredAt
if FFlagViewRecyclerReact084 then
	function insertMeasuredAt(
		node: Weighted.Node?,
		index: number,
		measuredSize: number,
		estimatedSize: number?
	): Weighted.Node
		if node == nil then
			return Weighted.newNode(1, measuredSize, estimatedSize)
		end

		local leftCount = Weighted.nodeItemCount(node.left)
		if index <= leftCount then
			node.left = insertMeasuredAt(node.left, index, measuredSize, estimatedSize)
			return mergeAdjacentUnmeasured(node)
		elseif index > leftCount + node.itemCount then
			node.right = insertMeasuredAt(node.right, index - leftCount - node.itemCount, measuredSize, estimatedSize)
			return mergeAdjacentUnmeasured(node)
		elseif node.measuredSize ~= nil then
			local left = node.left
			local right = node.right
			node.left = nil
			node.right = nil
			Weighted.refresh(node)
			return concatenatePieces(
				left,
				0,
				Weighted.newNode(1, measuredSize, estimatedSize),
				0,
				Weighted.concatenate(node, right)
			)
		end

		local offset = index - leftCount
		return concatenatePieces(
			node.left,
			offset - 1,
			Weighted.newNode(1, measuredSize, estimatedSize),
			node.itemCount - offset + 1,
			node.right,
			node.estimatedSize
		)
	end
else
	function insertMeasuredAt(node: Weighted.Node?, index: number, measuredSize: number): Weighted.Node
		if node == nil then
			return Weighted.newNode(1, measuredSize)
		end

		local leftCount = Weighted.nodeItemCount(node.left)
		if index <= leftCount then
			node.left = insertMeasuredAt(node.left, index, measuredSize)
			return mergeAdjacentUnmeasured(node)
		elseif index > leftCount + node.itemCount then
			node.right = insertMeasuredAt(node.right, index - leftCount - node.itemCount, measuredSize)
			return mergeAdjacentUnmeasured(node)
		elseif node.measuredSize ~= nil then
			local left = node.left
			local right = node.right
			node.left = nil
			node.right = nil
			Weighted.refresh(node)
			return concatenatePieces(left, 0, Weighted.newNode(1, measuredSize), 0, Weighted.concatenate(node, right))
		end

		local offset = index - leftCount
		return concatenatePieces(
			node.left,
			offset - 1,
			Weighted.newNode(1, measuredSize),
			node.itemCount - offset + 1,
			node.right
		)
	end
end

function CollapsedEstimatedTree.new(initialEstimatedItemLength: number?): CollapsedEstimatedTree
	local root: Weighted.Node? = nil
	local estimatedItemLength = initialEstimatedItemLength or 0

	local function length(): number
		return Weighted.nodeItemCount(root)
	end

	local function prefixSum(index: number): number
		return if index <= 1 then 0 else Weighted.prefixSumUpTo(root, index - 1, estimatedItemLength)
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
		local index = Weighted.entryAtPrefixSum(root, offset, estimatedItemLength)
		return index
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
		return Weighted.entryAtPrefixSum(root, offset, estimatedItemLength)
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
		if index < 1 or index > length() then
			return
		end
		local previousMeasuredSize = Weighted.measuredAt(root, index)
		if previousMeasuredSize ~= nil and measuredSize ~= nil then
			root = Weighted.updateAt(root, index, measuredSize)
		elseif previousMeasuredSize == nil and measuredSize ~= nil then
			root = measureAt(root, index, measuredSize)
		elseif previousMeasuredSize ~= nil and measuredSize == nil then
			root = unmeasureAt(root, index)
		end
	end

	local insert
	if FFlagViewRecyclerReact084 then
		function insert(index: number, measuredSize: number?, estimatedSize: number?)
			local itemCount = length()
			if itemCount == 0 then
				root = Weighted.newNode(1, measuredSize, estimatedSize)
				return
			elseif measuredSize == nil then
				if index <= itemCount then
					local grown
					root, grown = growUnmeasuredRun(root, index, estimatedSize)
					if grown then
						return
					end
				end
				if index > 1 then
					local grown
					root, grown = growUnmeasuredRun(root, index - 1, estimatedSize)
					if grown then
						return
					end
				end
				local before, after = Weighted.splitByItems(root, index - 1)
				root = concatenateMergingUnmeasured(
					concatenateMergingUnmeasured(before, Weighted.newNode(1, nil, estimatedSize)),
					after
				)
				return
			end

			root = insertMeasuredAt(root, index, measuredSize, estimatedSize)
		end
	else
		function insert(index: number, measuredSize: number?)
			local itemCount = length()
			if itemCount == 0 then
				root = Weighted.newNode(1, measuredSize)
				return
			elseif measuredSize == nil then
				if index <= itemCount then
					local grown
					root, grown = growUnmeasuredRun(root, index)
					if grown then
						return
					end
				end
				if index > 1 then
					local grown
					root, grown = growUnmeasuredRun(root, index - 1)
					if grown then
						return
					end
				end
				local before, after = Weighted.splitByItems(root, index - 1)
				root =
					concatenateMergingUnmeasured(concatenateMergingUnmeasured(before, Weighted.newNode(1, nil)), after)
				return
			end

			root = insertMeasuredAt(root, index, measuredSize)
		end
	end

	local function remove(index: number)
		if index < 1 or index > length() then
			return
		end
		local shrunk
		root, shrunk = shrinkUnmeasuredRun(root, index)
		if shrunk then
			return
		end
		local before, remaining = Weighted.splitByItems(root, index - 1)
		local _, after = Weighted.splitByItems(remaining, 1)
		root = concatenateMergingUnmeasured(before, after)
	end

	local setItemEstimate, buildFromMeasurements
	if FFlagViewRecyclerReact084 then
		function setItemEstimate(index: number, estimatedSize: number?): boolean
			if index < 1 or index > length() or Weighted.estimatedAt(root, index) == estimatedSize then
				return false
			end
			local measuredSize = Weighted.measuredAt(root, index)
			local previousSize = getSize(index)
			remove(index)
			insert(index, measuredSize, estimatedSize)
			return getSize(index) ~= previousSize
		end

		function buildFromMeasurements(
			itemCount: number,
			getMeasuredSize: (index: number) -> number?,
			getEstimatedSize: ((index: number) -> number?)?
		)
			local specs = {}
			for index = 1, itemCount do
				local measuredSize = getMeasuredSize(index)
				local estimatedSize = if getEstimatedSize == nil then nil else getEstimatedSize(index)
				local previous = specs[#specs]
				if
					measuredSize == nil
					and previous ~= nil
					and previous.measuredSize == nil
					and previous.estimatedSize == estimatedSize
				then
					previous.itemCount += 1
				else
					table.insert(specs, { itemCount = 1, measuredSize = measuredSize, estimatedSize = estimatedSize })
				end
			end
			root = Weighted.buildBalanced(specs, 1, #specs)
		end
	else
		function buildFromMeasurements(itemCount: number, getMeasuredSize: (index: number) -> number?)
			local specs = {}
			for index = 1, itemCount do
				local measuredSize = getMeasuredSize(index)
				local previous = specs[#specs]
				if measuredSize == nil and previous ~= nil and previous.measuredSize == nil then
					previous.itemCount += 1
				else
					table.insert(specs, { itemCount = 1, measuredSize = measuredSize })
				end
			end
			root = Weighted.buildBalanced(specs, 1, #specs)
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
		buildFromArray = function(sizes: { number })
			local specs = table.create(#sizes)
			for index, size in sizes do
				specs[index] = { itemCount = 1, measuredSize = size }
			end
			root = Weighted.buildBalanced(specs, 1, #specs)
		end,
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
			return changes * math.log(math.max(Weighted.nodeCount(root), 2), 2) < itemCount
		end,
		length = length,
		totalSum = function()
			return Weighted.nodeEffectiveSum(root, estimatedItemLength)
		end,
		getNodeCount = function()
			return Weighted.nodeCount(root)
		end,
	}
end

return CollapsedEstimatedTree
