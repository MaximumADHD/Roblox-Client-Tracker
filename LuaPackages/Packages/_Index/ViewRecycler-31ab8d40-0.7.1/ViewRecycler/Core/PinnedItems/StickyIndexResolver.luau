local Src = script:FindFirstAncestor("ViewRecycler")

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local ItemSequence = require(Src.Core.Virtualizer.ItemSequence)
local Types = require(Src.Core.Types)

export type Predicate = (key: string) -> boolean

export type StickyIndexResolver = {
	setPredicate: (predicate: Predicate?) -> boolean,
	setItemSequence: (itemSequence: ItemSequence.ItemSequence) -> (),
	applyDataSourceChange: (changeBatch: Types.DataSourceChangeBatch) -> (),
	resolveActive: (isActive: (index: number) -> boolean) -> (number?, number?),
}

type Node = {
	index: number,
	height: number,
	lazy: number,
	left: Node?,
	right: Node?,
}

local function createStickyIndexResolver(
	initialItemSequence: ItemSequence.ItemSequence,
	initialPredicate: Predicate?
): StickyIndexResolver
	local itemSequence = initialItemSequence
	local predicate = initialPredicate
	local root: Node? = nil
	local dirty = true

	local function applyShift(node: Node?, delta: number)
		if node ~= nil then
			node.index += delta
			node.lazy += delta
		end
	end

	local function push(node: Node)
		local lazy = node.lazy
		if lazy ~= 0 then
			applyShift(node.left, lazy)
			applyShift(node.right, lazy)
			node.lazy = 0
		end
	end

	local function height(node: Node?): number
		return if node == nil then 0 else node.height
	end

	local function updateHeight(node: Node)
		node.height = math.max(height(node.left), height(node.right)) + 1
	end

	local function rotateLeft(node: Node): Node
		local right = node.right :: Node
		push(node)
		push(right)
		node.right = right.left
		right.left = node
		updateHeight(node)
		updateHeight(right)
		return right
	end

	local function rotateRight(node: Node): Node
		local left = node.left :: Node
		push(node)
		push(left)
		node.left = left.right
		left.right = node
		updateHeight(node)
		updateHeight(left)
		return left
	end

	local function balance(node: Node): Node
		updateHeight(node)
		local delta = height(node.left) - height(node.right)
		if delta > 1 then
			local left = node.left :: Node
			push(left)
			if height(left.left) < height(left.right) then
				node.left = rotateLeft(left)
			end
			return rotateRight(node)
		elseif delta < -1 then
			local right = node.right :: Node
			push(right)
			if height(right.right) < height(right.left) then
				node.right = rotateRight(right)
			end
			return rotateLeft(node)
		end
		return node
	end

	local joinWithRoot
	joinWithRoot = function(left: Node?, middle: Node, right: Node?): Node
		local leftHeight = height(left)
		local rightHeight = height(right)
		if leftHeight > rightHeight + 1 then
			local leftRoot = left :: Node
			push(leftRoot)
			leftRoot.right = joinWithRoot(leftRoot.right, middle, right)
			return balance(leftRoot)
		elseif rightHeight > leftHeight + 1 then
			local rightRoot = right :: Node
			push(rightRoot)
			rightRoot.left = joinWithRoot(left, middle, rightRoot.left)
			return balance(rightRoot)
		end
		middle.left = left
		middle.right = right
		middle.lazy = 0
		updateHeight(middle)
		return middle
	end

	local function split(node: Node?, boundary: number): (Node?, Node?)
		if node == nil then
			return nil, nil
		end
		push(node)
		if node.index < boundary then
			local middle, right = split(node.right, boundary)
			local left = node.left
			node.left = nil
			node.right = nil
			return joinWithRoot(left, node, middle), right
		end
		local left, middle = split(node.left, boundary)
		local right = node.right
		node.left = nil
		node.right = nil
		return left, joinWithRoot(middle, node, right)
	end

	local function removeFirst(node: Node): (Node?, Node)
		push(node)
		if node.left == nil then
			local right = node.right
			node.right = nil
			updateHeight(node)
			return right, node
		end
		local nextLeft, first = removeFirst(node.left)
		node.left = nextLeft
		return balance(node), first
	end

	local function join(left: Node?, right: Node?): Node?
		if left == nil then
			return right
		elseif right == nil then
			return left
		end
		local remainingRight, middle = removeFirst(right)
		return joinWithRoot(left, middle, remainingRight)
	end

	local function newNode(index: number): Node
		return {
			index = index,
			height = 1,
			lazy = 0,
			left = nil,
			right = nil,
		}
	end

	local function buildBalanced(indices: { number }, first: number, last: number): Node?
		if first > last then
			return nil
		end
		local middle = math.floor((first + last) / 2)
		local node = newNode(indices[middle])
		node.left = buildBalanced(indices, first, middle - 1)
		node.right = buildBalanced(indices, middle + 1, last)
		updateHeight(node)
		return node
	end

	local function rebuild()
		local indices = {}
		if predicate ~= nil then
			for index = 1, itemSequence.getItemCount() do
				local key = itemSequence.getItemKey(index)
				if predicate(key) then
					table.insert(indices, index)
				end
			end
		end
		root = buildBalanced(indices, 1, #indices)
		dirty = false
	end

	local function resolveActive(isActive: (index: number) -> boolean): (number?, number?)
		if dirty then
			rebuild()
		end
		local activeIndex = nil
		local nextIndex = nil
		local node = root
		while node ~= nil do
			push(node)
			if isActive(node.index) then
				activeIndex = node.index
				node = node.right
			else
				nextIndex = node.index
				node = node.left
			end
		end
		return activeIndex, nextIndex
	end

	return {
		setPredicate = function(nextPredicate)
			if predicate ~= nextPredicate then
				predicate = nextPredicate
				dirty = true
				return true
			end
			return false
		end,
		setItemSequence = function(nextItemSequence)
			if itemSequence ~= nextItemSequence then
				itemSequence = nextItemSequence
				dirty = true
			end
		end,
		applyDataSourceChange = function(changeBatch)
			if dirty or predicate == nil then
				return
			end
			for _, change in changeBatch.changes do
				if change.type == DataSourceChangeType.Reset or change.type == DataSourceChangeType.Reorder then
					dirty = true
					return
				elseif change.type == DataSourceChangeType.Insert then
					local first = change.index
					local count = #change.keys
					local before, after = split(root, first)
					applyShift(after, count)
					local insertedIndices = {}
					for offset, key in change.keys do
						if predicate(key) then
							table.insert(insertedIndices, first + offset - 1)
						end
					end
					local inserted = buildBalanced(insertedIndices, 1, #insertedIndices)
					root = join(join(before, inserted), after)
				elseif change.type == DataSourceChangeType.Remove then
					local first = change.index
					local last = first + #change.keys - 1
					local before, removedAndAfter = split(root, first)
					local _, after = split(removedAndAfter, last + 1)
					applyShift(after, -#change.keys)
					root = join(before, after)
				elseif change.type == DataSourceChangeType.Move then
					local fromIndex = change.fromIndex
					local toIndex = change.toIndex
					if fromIndex < toIndex then
						local before, movedAndAfter = split(root, fromIndex)
						local moved, throughDestination = split(movedAndAfter, fromIndex + 1)
						local shifted, after = split(throughDestination, toIndex + 1)
						applyShift(shifted, -1)
						if moved ~= nil then
							moved.index = toIndex
						end
						root = join(join(join(before, shifted), moved), after)
					else
						local before, throughMoved = split(root, toIndex)
						local shifted, movedAndAfter = split(throughMoved, fromIndex)
						local moved, after = split(movedAndAfter, fromIndex + 1)
						applyShift(shifted, 1)
						if moved ~= nil then
							moved.index = toIndex
						end
						root = join(join(join(before, moved), shifted), after)
					end
				end
				-- Stable-key classification makes Update a metadata no-op.
			end
		end,
		resolveActive = resolveActive,
	}
end

return createStickyIndexResolver
