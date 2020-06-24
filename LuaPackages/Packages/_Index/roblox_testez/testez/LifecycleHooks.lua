local TestEnum = require(script.Parent.TestEnum)

local LifecycleHooks = {}
LifecycleHooks.__index = LifecycleHooks

function LifecycleHooks.new()
	local self = {
		_stack = {},
	}
	return setmetatable(self, LifecycleHooks)
end

--[[
	Returns an array of `beforeEach` hooks in FIFO order
]]
function LifecycleHooks:getBeforeEachHooks()
	local key = TestEnum.NodeType.BeforeEach
	local hooks = {}

	for _, level in ipairs(self._stack) do
		for _, hook in ipairs(level[key]) do
			table.insert(hooks, hook)
		end
	end

	return hooks
end

--[[
	Returns an array of `afterEach` hooks in FILO order
]]
function LifecycleHooks:getAfterEachHooks()
	local key = TestEnum.NodeType.AfterEach
	local hooks = {}

	for _, level in ipairs(self._stack) do
		for _, hook in ipairs(level[key]) do
			table.insert(hooks, 1, hook)
		end
	end

	return hooks
end

--[[
	Pushes uncalled beforeAll and afterAll hooks back up the stack
]]
function LifecycleHooks:popHooks()
	table.remove(self._stack, #self._stack)
end

function LifecycleHooks:pushHooksFrom(planNode)
	assert(planNode ~= nil)

	table.insert(self._stack, {
		[TestEnum.NodeType.BeforeAll] = self:_getHooksOfType(planNode.children, TestEnum.NodeType.BeforeAll),
		[TestEnum.NodeType.AfterAll] = self:_getHooksOfType(planNode.children, TestEnum.NodeType.AfterAll),
		[TestEnum.NodeType.BeforeEach] = self:_getHooksOfType(planNode.children, TestEnum.NodeType.BeforeEach),
		[TestEnum.NodeType.AfterEach] = self:_getHooksOfType(planNode.children, TestEnum.NodeType.AfterEach),
	})
end

--[[
	Get all currently uncalled beforeAll hooks, and remove them from the stack.
]]
function LifecycleHooks:getPendingBeforeAllHooks()
	local key = TestEnum.NodeType.BeforeAll
	local hooks = {}

	for _, level in ipairs(self._stack) do
		for _, hook in ipairs(level[key]) do
			table.insert(hooks, hook)
		end
		level[key] = {}
	end

	return hooks
end

--[[
	Get all uncalled afterAll hooks from the back of the stack and remove them.
]]
function LifecycleHooks:getAfterAllHooks()
	local key = TestEnum.NodeType.AfterAll
	local hooks = {}

	local currentBack = self._stack[#self._stack]
	if currentBack then
		for _, hook in pairs(currentBack[key]) do
			table.insert(hooks, hook)
		end
		currentBack[key] = {}
	end

	return hooks
end

function LifecycleHooks:_getHooksOfType(nodes, key)
	local hooks = {}

	for _, node in pairs(nodes) do
		if node.type == key then
			table.insert(hooks, node.callback)
		end
	end

	return hooks
end

return LifecycleHooks
