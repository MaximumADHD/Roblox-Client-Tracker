-- Internal weighted AVL order-statistic tree.
--
-- Logical rank is the sum of each node's itemCount. AVL balance uses node
-- height. This module is not ISizeTree: adapters own estimate policy, run
-- collapsing, and the public query surface.
local WeightedOrderStatisticTree = {}

export type NodeSpec = {
	itemCount: number,
	measuredSize: number?,
}

export type Node = {
	itemCount: number,
	measuredSize: number?,
	subtreeItemCount: number,
	subtreeMeasuredCount: number,
	subtreeMeasuredSum: number,
	subtreeNodeCount: number,
	height: number,
	left: Node?,
	right: Node?,
}

local function nodeHeight(node: Node?): number
	return if node == nil then 0 else node.height
end

local function nodeItemCount(node: Node?): number
	return if node == nil then 0 else node.subtreeItemCount
end

local function nodeMeasuredCount(node: Node?): number
	return if node == nil then 0 else node.subtreeMeasuredCount
end

local function nodeMeasuredSum(node: Node?): number
	return if node == nil then 0 else node.subtreeMeasuredSum
end

local function nodeCount(node: Node?): number
	return if node == nil then 0 else node.subtreeNodeCount
end

local function nodeEffectiveSum(node: Node?, estimatedItemLength: number): number
	if node == nil then
		return 0
	end
	return node.subtreeMeasuredSum + (node.subtreeItemCount - node.subtreeMeasuredCount) * estimatedItemLength
end

local function ownEffectiveSum(node: Node, estimatedItemLength: number): number
	return if node.measuredSize == nil then node.itemCount * estimatedItemLength else node.measuredSize
end

local function refresh(node: Node)
	assert(node.itemCount >= 1, "WeightedOrderStatisticTree: node itemCount must be positive")
	assert(
		node.measuredSize == nil or node.itemCount == 1,
		"WeightedOrderStatisticTree: measured nodes must represent exactly one item"
	)
	node.subtreeItemCount = nodeItemCount(node.left) + node.itemCount + nodeItemCount(node.right)
	node.subtreeMeasuredCount = nodeMeasuredCount(node.left)
		+ (if node.measuredSize == nil then 0 else 1)
		+ nodeMeasuredCount(node.right)
	node.subtreeMeasuredSum = nodeMeasuredSum(node.left) + (node.measuredSize or 0) + nodeMeasuredSum(node.right)
	node.subtreeNodeCount = nodeCount(node.left) + 1 + nodeCount(node.right)
	node.height = 1 + math.max(nodeHeight(node.left), nodeHeight(node.right))
end

local function newNode(itemCount: number, measuredSize: number?): Node
	local node: Node = {
		itemCount = itemCount,
		measuredSize = measuredSize,
		subtreeItemCount = itemCount,
		subtreeMeasuredCount = if measuredSize == nil then 0 else 1,
		subtreeMeasuredSum = measuredSize or 0,
		subtreeNodeCount = 1,
		height = 1,
		left = nil,
		right = nil,
	}
	refresh(node)
	return node
end

local function rotateRight(root: Node): Node
	local nextRoot = root.left :: Node
	root.left = nextRoot.right
	nextRoot.right = root
	refresh(root)
	refresh(nextRoot)
	return nextRoot
end

local function rotateLeft(root: Node): Node
	local nextRoot = root.right :: Node
	root.right = nextRoot.left
	nextRoot.left = root
	refresh(root)
	refresh(nextRoot)
	return nextRoot
end

local function balance(node: Node): Node
	refresh(node)
	local balanceFactor = nodeHeight(node.left) - nodeHeight(node.right)
	if balanceFactor > 1 then
		local left = node.left :: Node
		if nodeHeight(left.left) < nodeHeight(left.right) then
			node.left = rotateLeft(left)
		end
		return rotateRight(node)
	elseif balanceFactor < -1 then
		local right = node.right :: Node
		if nodeHeight(right.right) < nodeHeight(right.left) then
			node.right = rotateRight(right)
		end
		return rotateLeft(node)
	end
	return node
end

local function join(left: Node?, middle: Node, right: Node?): Node
	if nodeHeight(left) > nodeHeight(right) + 1 then
		local leftRoot = left :: Node
		leftRoot.right = join(leftRoot.right, middle, right)
		return balance(leftRoot)
	elseif nodeHeight(right) > nodeHeight(left) + 1 then
		local rightRoot = right :: Node
		rightRoot.left = join(left, middle, rightRoot.left)
		return balance(rightRoot)
	end
	middle.left = left
	middle.right = right
	return balance(middle)
end

local function popMinimum(root: Node): (Node?, Node)
	if root.left == nil then
		local remainder = root.right
		root.left = nil
		root.right = nil
		refresh(root)
		return remainder, root
	end
	local remainder, minimum = popMinimum(root.left)
	root.left = remainder
	return balance(root), minimum
end

local function popMaximum(root: Node): (Node?, Node)
	if root.right == nil then
		local remainder = root.left
		root.left = nil
		root.right = nil
		refresh(root)
		return remainder, root
	end
	local remainder, maximum = popMaximum(root.right)
	root.right = remainder
	return balance(root), maximum
end

local function concatenate(left: Node?, right: Node?): Node?
	if left == nil then
		return right
	elseif right == nil then
		return left
	end
	local remainder, minimum = popMinimum(right)
	return join(left, minimum, remainder)
end

-- Split into the first leftItemCount logical items and the remainder. A split
-- inside an unmeasured run creates two run nodes.
local function splitByItems(root: Node?, leftItemCount: number): (Node?, Node?)
	if root == nil then
		return nil, nil
	end

	local leftCount = nodeItemCount(root.left)
	local ownEnd = leftCount + root.itemCount
	if leftItemCount < leftCount then
		local before, after = splitByItems(root.left, leftItemCount)
		root.left = after
		return before, balance(root)
	elseif leftItemCount > ownEnd then
		local before, after = splitByItems(root.right, leftItemCount - ownEnd)
		root.right = before
		return balance(root), after
	elseif leftItemCount == leftCount then
		local before = root.left
		local right = root.right
		root.left = nil
		root.right = nil
		refresh(root)
		return before, concatenate(root, right)
	elseif leftItemCount == ownEnd then
		local left = root.left
		local after = root.right
		root.left = nil
		root.right = nil
		refresh(root)
		return concatenate(left, root), after
	end

	assert(root.measuredSize == nil, "WeightedOrderStatisticTree: cannot split a measured node")
	local ownLeftCount = leftItemCount - leftCount
	local ownRightCount = root.itemCount - ownLeftCount
	return concatenate(root.left, newNode(ownLeftCount, nil)), concatenate(newNode(ownRightCount, nil), root.right)
end

local function insertUnitAt(node: Node?, rank: number, measuredSize: number?): Node
	if node == nil then
		return newNode(1, measuredSize)
	end

	local leftCount = nodeItemCount(node.left) + 1
	if rank <= leftCount then
		node.left = insertUnitAt(node.left, rank, measuredSize)
	else
		node.right = insertUnitAt(node.right, rank - leftCount, measuredSize)
	end
	return balance(node)
end

local function findMin(node: Node): Node
	return if node.left ~= nil then findMin(node.left) else node
end

local function removeUnitAt(node: Node?, rank: number): Node?
	if node == nil then
		return nil
	end

	local leftCount = nodeItemCount(node.left) + 1
	if rank < leftCount then
		node.left = removeUnitAt(node.left, rank)
	elseif rank > leftCount then
		node.right = removeUnitAt(node.right, rank - leftCount)
	elseif node.left == nil then
		return node.right
	elseif node.right == nil then
		return node.left
	else
		local successor = findMin(node.right :: Node)
		node.measuredSize = successor.measuredSize
		node.itemCount = successor.itemCount
		node.right = removeUnitAt(node.right, 1)
	end
	return balance(node)
end

local function updateUnitAt(node: Node?, rank: number, measuredSize: number?): ()
	if node == nil then
		return
	end

	local leftCount = nodeItemCount(node.left) + 1
	if rank < leftCount then
		updateUnitAt(node.left, rank, measuredSize)
	elseif rank > leftCount then
		updateUnitAt(node.right, rank - leftCount, measuredSize)
	else
		node.measuredSize = measuredSize
	end
	refresh(node)
end

local function updateAt(node: Node?, index: number, measuredSize: number?): Node?
	if node == nil then
		return nil
	end
	local leftCount = nodeItemCount(node.left)
	if index <= leftCount then
		node.left = updateAt(node.left, index, measuredSize)
	elseif index > leftCount + node.itemCount then
		node.right = updateAt(node.right, index - leftCount - node.itemCount, measuredSize)
	else
		assert(node.itemCount == 1, "WeightedOrderStatisticTree: in-place update requires a unit node")
		node.measuredSize = measuredSize
	end
	refresh(node)
	return node
end

local function measuredAt(root: Node?, index: number): number?
	if root == nil then
		return nil
	end
	local leftCount = nodeItemCount(root.left)
	if index <= leftCount then
		return measuredAt(root.left, index)
	elseif index > leftCount + root.itemCount then
		return measuredAt(root.right, index - leftCount - root.itemCount)
	end
	return root.measuredSize
end

local function prefixSumUpTo(root: Node?, itemCount: number, estimatedItemLength: number): number
	if root == nil or itemCount <= 0 then
		return 0
	end
	local leftCount = nodeItemCount(root.left)
	if itemCount <= leftCount then
		return prefixSumUpTo(root.left, itemCount, estimatedItemLength)
	end

	local includedOwnItems = math.min(root.itemCount, itemCount - leftCount)
	local ownSum = if root.measuredSize == nil then includedOwnItems * estimatedItemLength else root.measuredSize
	local sum = nodeEffectiveSum(root.left, estimatedItemLength) + ownSum
	if itemCount <= leftCount + root.itemCount then
		return sum
	end
	return sum + prefixSumUpTo(root.right, itemCount - leftCount - root.itemCount, estimatedItemLength)
end

local function entryAtPrefixSum(root: Node?, offset: number, estimatedItemLength: number): (number, number, number)
	if root == nil then
		return 0, 0, 0
	end
	local leftSum = nodeEffectiveSum(root.left, estimatedItemLength)
	if offset < leftSum then
		return entryAtPrefixSum(root.left, offset, estimatedItemLength)
	end

	local leftCount = nodeItemCount(root.left)
	local ownSum = ownEffectiveSum(root, estimatedItemLength)
	if offset < leftSum + ownSum then
		if root.measuredSize ~= nil then
			return leftCount + 1, leftSum, root.measuredSize
		end
		local itemOffset = math.floor((offset - leftSum) / estimatedItemLength)
		return leftCount + itemOffset + 1, leftSum + itemOffset * estimatedItemLength, estimatedItemLength
	end

	local rightIndex, rightStart, rightSize =
		entryAtPrefixSum(root.right, offset - leftSum - ownSum, estimatedItemLength)
	if rightIndex == 0 then
		return 0, 0, 0
	end
	return leftCount + root.itemCount + rightIndex, leftSum + ownSum + rightStart, rightSize
end

local function fillRangeFromNode(
	root: Node?,
	baseIndex: number,
	baseOffset: number,
	firstIndex: number,
	lastIndex: number,
	estimatedItemLength: number,
	output: { { startOffset: number, length: number } }
)
	if root == nil then
		return
	end
	local leftCount = nodeItemCount(root.left)
	local nodeFirstIndex = baseIndex + leftCount + 1
	local nodeLastIndex = nodeFirstIndex + root.itemCount - 1
	local nodeOffset = baseOffset + nodeEffectiveSum(root.left, estimatedItemLength)

	if firstIndex < nodeFirstIndex then
		fillRangeFromNode(root.left, baseIndex, baseOffset, firstIndex, lastIndex, estimatedItemLength, output)
	end

	local intersectionFirst = math.max(firstIndex, nodeFirstIndex)
	local intersectionLast = math.min(lastIndex, nodeLastIndex)
	if intersectionFirst <= intersectionLast then
		local itemLength = root.measuredSize or estimatedItemLength
		for itemIndex = intersectionFirst, intersectionLast do
			local outputIndex = itemIndex - firstIndex + 1
			local itemLayout = output[outputIndex]
			if itemLayout == nil then
				itemLayout = { startOffset = 0, length = 0 }
				output[outputIndex] = itemLayout
			end
			itemLayout.startOffset = nodeOffset + (itemIndex - nodeFirstIndex) * itemLength
			itemLayout.length = itemLength
		end
	end

	if lastIndex > nodeLastIndex then
		fillRangeFromNode(
			root.right,
			nodeLastIndex,
			nodeOffset + ownEffectiveSum(root, estimatedItemLength),
			firstIndex,
			lastIndex,
			estimatedItemLength,
			output
		)
	end
end

local function buildBalanced(specs: { NodeSpec }, first: number, last: number): Node?
	if first > last then
		return nil
	end
	local middle = (first + last) // 2
	local spec = specs[middle]
	local root = newNode(spec.itemCount, spec.measuredSize)
	root.left = buildBalanced(specs, first, middle - 1)
	root.right = buildBalanced(specs, middle + 1, last)
	refresh(root)
	return root
end

local function appendToArray(root: Node?, sizes: { number }, estimatedItemLength: number)
	if root == nil then
		return
	end
	appendToArray(root.left, sizes, estimatedItemLength)
	local size = root.measuredSize or estimatedItemLength
	for _ = 1, root.itemCount do
		table.insert(sizes, size)
	end
	appendToArray(root.right, sizes, estimatedItemLength)
end

WeightedOrderStatisticTree.newNode = newNode
WeightedOrderStatisticTree.refresh = refresh
WeightedOrderStatisticTree.balance = balance
WeightedOrderStatisticTree.join = join
WeightedOrderStatisticTree.popMinimum = popMinimum
WeightedOrderStatisticTree.popMaximum = popMaximum
WeightedOrderStatisticTree.concatenate = concatenate
WeightedOrderStatisticTree.splitByItems = splitByItems
WeightedOrderStatisticTree.insertUnitAt = insertUnitAt
WeightedOrderStatisticTree.removeUnitAt = removeUnitAt
WeightedOrderStatisticTree.updateUnitAt = updateUnitAt
WeightedOrderStatisticTree.updateAt = updateAt
WeightedOrderStatisticTree.measuredAt = measuredAt
WeightedOrderStatisticTree.prefixSumUpTo = prefixSumUpTo
WeightedOrderStatisticTree.entryAtPrefixSum = entryAtPrefixSum
WeightedOrderStatisticTree.fillRangeFromNode = fillRangeFromNode
WeightedOrderStatisticTree.buildBalanced = buildBalanced
WeightedOrderStatisticTree.appendToArray = appendToArray
WeightedOrderStatisticTree.nodeItemCount = nodeItemCount
WeightedOrderStatisticTree.nodeMeasuredCount = nodeMeasuredCount
WeightedOrderStatisticTree.nodeCount = nodeCount
WeightedOrderStatisticTree.nodeEffectiveSum = nodeEffectiveSum

return WeightedOrderStatisticTree
