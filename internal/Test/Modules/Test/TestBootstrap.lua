--[[
	Provides an interface to quickly run and report tests from a given object.
]]

local TestPlanner = require(script.Parent.TestPlanner)
local TestRunner = require(script.Parent.TestRunner)
local TextReporter = require(script.Parent.Reporters.TextReporter)

local TestBootstrap = {}

local function stripSpecSuffix(name)
	return (name:gsub("%.spec$", ""))
end

local function getPath(module, root)
	root = root or game

	local path = {}
	local last = module

	while last ~= nil and last ~= root do
		table.insert(path, stripSpecSuffix(last.Name))
		last = last.Parent
	end

	return path
end

--[[
	Find all the ModuleScripts in this tree that are tests.
]]
function TestBootstrap:getModules(root, modules, current)
	modules = modules or {}
	current = current or root

	for _, child in ipairs(current:GetChildren()) do
		if child:IsA("ModuleScript") and child.Name:match("%.spec$") then
			local method = require(child)
			local path = getPath(child, root)

			table.insert(modules, {
				method = method,
				path = path
			})
		else
			self:getModules(root, modules, child)
		end
	end

	return modules
end

--[[
	Runs all test and reports the results using the given test reporter.

	If no reporter is specified, a reasonable default is provided.

	This function demonstrates the expected workflow with this testing system:
	1. Locate test modules
	2. Generate test plan
	3. Run test plan
	4. Report test results

	This means we could hypothetically present a GUI to the developer that shows
	the test plan before we execute it, allowing them to toggle specific tests
	before they're run, but after they've been identified!
]]
function TestBootstrap:run(root, reporter, showTimingInfo)
	if not root then
		error("You must provide a root object to search for tests in!", 2)
	end

	reporter = reporter or TextReporter

	local startTime = tick()

	local modules = self:getModules(root)
	local afterModules = tick()

	local plan = TestPlanner.createPlan(modules)
	local afterPlan = tick()

	local results = TestRunner.runPlan(plan)
	local afterRun = tick()

	reporter.report(results)
	local afterReport = tick()

	if showTimingInfo then
		local timing = {
			("Took %f seconds to locate test modules"):format(afterModules - startTime),
			("Took %f seconds to create test plan"):format(afterPlan - afterModules),
			("Took %f seconds to run tests"):format(afterRun - afterPlan),
			("Took %f seconds to report tests"):format(afterReport - afterRun),
		}

		print(table.concat(timing, "\n"))
	end
end

return TestBootstrap