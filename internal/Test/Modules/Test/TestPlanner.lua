--[[
	Turns a series of specification functions into a test plan.

	Uses a TestPlanBuilder to keep track of the state of the tree being built.
]]

local TestEnum = require(script.Parent.TestEnum)
local TestPlanBuilder = require(script.Parent.TestPlanBuilder)

local TestPlanner = {}

--[[
	Create a new environment with functions for defining the test plan structure
	using the given TestPlanBuilder.

	These functions illustrate the advantage of the stack-style tree navigation
	as state doesn't need to be passed around between functions or explicitly
	global.
]]
function TestPlanner.createEnvironment(builder)
	local env = {}

	function env.describe(phrase, callback)
		local node = builder:pushNode(phrase, TestEnum.NodeType.Describe)

		local ok, err = pcall(callback)

		-- loadError on a TestPlan node is an automatic failure
		if not ok then
			node.loadError = err
		end

		builder:popNode()
	end

	function env.it(phrase, callback)
		local node = builder:pushNode(phrase, TestEnum.NodeType.It)

		node.callback = callback

		builder:popNode()
	end

	function env.itFOCUS(phrase, callback)
		local node = builder:pushNode(phrase, TestEnum.NodeType.It, TestEnum.NodeModifier.Focus)

		node.callback = callback

		builder:popNode()
	end

	function env.itSKIP(phrase, callback)
		local node = builder:pushNode(phrase, TestEnum.NodeType.It, TestEnum.NodeModifier.Skip)

		node.callback = callback

		builder:popNode()
	end

	function env.FOCUS()
		local currentNode = builder:getCurrentNode()

		currentNode.modifier = TestEnum.NodeModifier.Focus
	end

	function env.SKIP()
		local currentNode = builder:getCurrentNode()

		currentNode.modifier = TestEnum.NodeModifier.Skip
	end

	--[[
		These method is intended to disable the use of xpcall when running
		nodes contained in the same node that this function is called in.
		This is because xpcall breaks badly if the method passed yields.

		This function is intended to be hideous and seldom called.

		Once xpcall is able to yield, this function is obsolete.
	]]
	function env.HACK_NO_XPCALL()
		local currentNode = builder:getCurrentNode()

		currentNode.HACK_NO_XPCALL = true
	end

	return env
end

--[[
	Create a new TestPlan from a list of specification functions.

	These functions should call a combination of `describe` and `it` (and their
	variants), which will be turned into a test plan to be executed.
]]
function TestPlanner.createPlan(specFunctions)
	local builder = TestPlanBuilder.new()
	local env = TestPlanner.createEnvironment(builder)

	for _, module in ipairs(specFunctions) do
		local currentEnv = getfenv(module.method)

		for key, value in pairs(env) do
			currentEnv[key] = value
		end

		local nodeCount = #module.path

		-- Dive into auto-named nodes for this module
		for i = nodeCount, 1, -1 do
			local name = module.path[i]
			builder:pushNode(name, TestEnum.NodeType.Describe)
		end

		local ok, err = xpcall(module.method, function(err)
			return err .. "\n" .. debug.traceback()
		end)

		-- This is an error outside of any describe/it blocks.
		-- We attach it to the node we generate automatically per-file.
		if not ok then
			local node = builder:getCurrentNode()
			node.loadError = err
		end

		-- Back out of auto-named nodes
		for _ = 1, nodeCount do
			builder:popNode()
		end
	end

	return builder:finalize()
end

return TestPlanner