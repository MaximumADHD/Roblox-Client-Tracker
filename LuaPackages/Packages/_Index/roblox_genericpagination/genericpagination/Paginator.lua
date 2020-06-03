--[[
		Make sure to read api-reference.md for how to use.
--]]

local dependencies = require(script.Parent.dependencies)
local t = dependencies.t
local LinkedList = dependencies.LinkedList
local Promise = dependencies.Promise

local Paginator = {
	llRoot = nil,
	llIndex = nil,
	_isFetching = false,
}
Paginator.__index = Paginator

local requiredProps = t.strictInterface({
	pageSize = t.number,
	fetchWithCursor = t.callback,
	fetchInit = t.callback,
})

Paginator.new = function(props)
	assert(requiredProps(props))
	local self = {}
	for k, v in pairs(props) do
		self[k] = v
	end
	setmetatable(self, Paginator)

	self:_init()
	return self
end

function Paginator:_init()
	-- we don't know our currentCursor... just our previous and next
	self._isFetching = true
	return self.fetchInit():andThen(function(previousCursor, nextCursor)
		self.llRoot = LinkedList.createNode()
		self.llIndex = self.llRoot
		self.llIndex:CreatePrevious(previousCursor)
		self.llIndex:CreateNext(nextCursor)
		self._isFetching = false
	end)

end

function Paginator:getCurrent()
	return self.llIndex.value or {}
end

function Paginator:getNext()
	if self._isFetching then
		return Promise.reject("Paginator is currently busy. Please wait.")
	end

	local cursor = self.llIndex.next.value or ""

	if cursor == "" then
		return Promise.reject("Next cursor is invalid")
	end

	self.llIndex = self.llIndex.next
	self._isFetching = true

	return self.fetchWithCursor(cursor):andThen(function(previousCursor, nextCursor)
		self.llIndex.previous.value = previousCursor
		if self.llIndex.next then
			self.llIndex.next.value = nextCursor
		else
			self.llIndex:CreateNext(nextCursor)
		end
		self._isFetching = false
	end)
end

function Paginator:getPrevious()
	if self._isFetching then
		return Promise.reject("Paginator is currently busy. Please wait.")
	end

	local cursor = self.llIndex.previous.value or ""

	if cursor == "" then
		return Promise.reject("Previous cursor is invalid")
	end

	self.llIndex = self.llIndex.previous
	self._isFetching = true

	return self.fetchWithCursor(cursor, true):andThen(function(previousCursor, nextCursor)
		self.llIndex.next.value = nextCursor
		if self.llIndex.previous then
			self.llIndex.previous.value = previousCursor
		else
			self.llIndex:CreatePrevious(previousCursor)
		end
		self._isFetching = false
	end)
end

function Paginator:isFetching()
	return self._isFetching
end

return Paginator
