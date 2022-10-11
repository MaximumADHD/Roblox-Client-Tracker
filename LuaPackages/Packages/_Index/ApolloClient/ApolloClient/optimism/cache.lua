-- ROBLOX upstream: https://github.com/benjamn/optimism/blob/v0.16.1/src/cache.ts

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Map = LuauPolyfill.Map
local Boolean = LuauPolyfill.Boolean

type Map<K, V> = LuauPolyfill.Map<K, V>

local exports = {}

export type Node<K, V> = { key: K, value: V, newer: Node<K, V> | nil, older: Node<K, V> | nil }

local function defaultDispose() end

--[[
  ROBLOX deviation: no generic params for functions are supported.
  K_, V_
  are a placeholders for generic K, V params
]]
type K_ = any
type V_ = any

local Cache = {}
Cache.__index = Cache

export type Cache<K, V> = {
	dispose: (value: V, key: K) -> (),
	has: (self: Cache<K, V>, key: K) -> boolean,
	get: (self: Cache<K, V>, key: K) -> V | nil,
	set: (self: Cache<K, V>, key: K, value: V) -> V,
	clean: (self: Cache<K, V>) -> (),
	delete: (self: Cache<K, V>, key: K) -> boolean,
}

type CachePrivate<K, V> = Cache<K, V> & {
	map: Map<K, Node<K, V>>,
	newest: Node<K, V> | nil,
	oldest: Node<K, V> | nil,
	max: number,
	getNode: (self: CachePrivate<K, V>, key: K) -> Node<K, V> | nil,
}

function Cache.new<K, V>(max_: number?, dispose_: ((value: V, key: K) -> ())?): Cache<K, V>
	local max: number, dispose: (value: V, key: K) -> () = max_ :: any, dispose_ :: any
	if max == nil then
		max = math.huge
	end
	if dispose == nil then
		dispose = defaultDispose
	end

	local self = setmetatable({}, Cache)

	-- ROBLOX TODO: Luau doesnt support explicit generic params, so we cast to the expected Map type
	self.map = Map.new(nil) :: Map<K, Node<K, V>>
	self.newest = nil
	self.oldest = nil

	self.max = max
	self.dispose = dispose

	return (self :: any) :: Cache<K, V>
end

function Cache:has(key: K_): boolean
	return self.map:has(key)
end

function Cache:get(key: K_): V_ | nil
	local node = (self :: CachePrivate<K_, V_>):getNode(key)
	if Boolean.toJSBoolean(node) then
		return (node :: any).value
	end
	return node
end

function Cache:getNode(key: K_): Node<K_, V_> | nil
	local node = self.map:get(key)

	if Boolean.toJSBoolean(node) and node ~= self.newest then
		local older, newer = node.older, node.newer

		if Boolean.toJSBoolean(newer) then
			newer.older = older
		end

		if Boolean.toJSBoolean(older) then
			older.newer = newer
		end

		node.older = self.newest
		node.older.newer = node

		node.newer = nil
		self.newest = node

		if node == self.oldest then
			self.oldest = newer
		end
	end

	return node
end

function Cache:set(key: K_, value: V_): V_
	local node = self:getNode(key)

	if Boolean.toJSBoolean(node) then
		node.value = value
		return node.value
	end

	node = {
		key = key,
		value = value,
		newer = nil,
		older = self.newest,
	}

	if Boolean.toJSBoolean(self.newest) then
		self.newest.newer = node
	end

	self.newest = node
	self.oldest = Boolean.toJSBoolean(self.oldest) and self.oldest or node
	self.map:set(key, node)
	return node.value
end

function Cache:clean(): ()
	while Boolean.toJSBoolean(self.oldest) and (self.map.size :: number) > self.max do
		self:delete(self.oldest.key)
	end
end

function Cache:delete(key: K_): boolean
	local node = self.map:get(key)

	if Boolean.toJSBoolean(node) then
		if node == self.newest then
			self.newest = node.older
		end

		if node == self.oldest then
			self.oldest = node.newer
		end

		if Boolean.toJSBoolean(node.newer) then
			node.newer.older = node.older
		end

		if Boolean.toJSBoolean(node.older) then
			node.older.newer = node.newer
		end

		self.map:delete(key)
		self.dispose(node.value, key)

		return true
	end

	return false
end

exports.Cache = Cache

return exports
