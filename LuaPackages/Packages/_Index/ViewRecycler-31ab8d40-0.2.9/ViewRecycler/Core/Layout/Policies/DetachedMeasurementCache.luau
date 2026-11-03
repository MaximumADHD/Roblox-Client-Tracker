local DEFAULT_CAPACITY = 256

export type Capacity = number

type Node = {
	key: string,
	value: number,
	previous: Node?,
	next: Node?,
}

export type Cache = {
	put: (key: string, value: number) -> (),
	take: (key: string) -> number?,
}

local DetachedMeasurementCache = {}

local function resolveCapacity(capacity: Capacity?): number?
	if capacity == nil then
		return DEFAULT_CAPACITY
	end
	if capacity == math.huge then
		return nil
	end
	assert(
		type(capacity) == "number" and capacity >= 0 and capacity < math.huge and capacity % 1 == 0,
		"Layout.measured: detachedMeasurementCapacity must be zero, a positive integer, or math.huge"
	)
	return capacity
end

function DetachedMeasurementCache.new(capacityOption: Capacity?): Cache
	local capacity = resolveCapacity(capacityOption)
	local nodesByKey: { [string]: Node } = {}
	local oldest: Node? = nil
	local newest: Node? = nil
	local size = 0

	local function unlink(node: Node)
		if node.previous ~= nil then
			node.previous.next = node.next
		else
			oldest = node.next
		end
		if node.next ~= nil then
			node.next.previous = node.previous
		else
			newest = node.previous
		end
		node.previous = nil
		node.next = nil
	end

	local function append(node: Node)
		node.previous = newest
		if newest ~= nil then
			newest.next = node
		else
			oldest = node
		end
		newest = node
	end

	local function take(key: string): number?
		local node = nodesByKey[key]
		if node == nil then
			return nil
		end
		unlink(node)
		nodesByKey[key] = nil
		size -= 1
		return node.value
	end

	local function put(key: string, value: number)
		if capacity == 0 then
			return
		end

		local node = nodesByKey[key]
		if node ~= nil then
			node.value = value
			unlink(node)
			append(node)
			return
		end

		node = {
			key = key,
			value = value,
			previous = nil,
			next = nil,
		}
		nodesByKey[key] = node
		append(node)
		size += 1

		if capacity ~= nil and size > capacity then
			local evicted = oldest :: Node
			unlink(evicted)
			nodesByKey[evicted.key] = nil
			size -= 1
		end
	end

	return {
		put = put,
		take = take,
	}
end

return DetachedMeasurementCache
