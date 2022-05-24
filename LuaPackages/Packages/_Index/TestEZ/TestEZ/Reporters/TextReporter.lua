--[[
	The TextReporter uses the results from a completed test to output text to
	standard output and TestService.
]]

local TestService = game:GetService("TestService")

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent.Parent
local success, JestMatcherUtils = pcall(function()
	return require(Packages.JestMatcherUtils)
end)
local EXPECTED_COLOR = success and JestMatcherUtils.EXPECTED_COLOR or function(s)
	return s
end
local RECEIVED_COLOR = success and JestMatcherUtils.RECEIVED_COLOR or function(s)
	return s
end
local BOLD_WEIGHT = success and JestMatcherUtils.BOLD_WEIGHT or function(s)
	return s
end
local DIM_COLOR = success and JestMatcherUtils.DIM_COLOR or function(s)
	return s
end

local TestEnum = require(script.Parent.Parent.TestEnum)

local INDENT = (" "):rep(3)
local STATUS_SYMBOLS = {
	[TestEnum.TestStatus.Success] = EXPECTED_COLOR("+"),
	[TestEnum.TestStatus.Failure] = RECEIVED_COLOR("-"),
	[TestEnum.TestStatus.Skipped] = DIM_COLOR("~"),
}
local UNKNOWN_STATUS_SYMBOL = "?"

local TextReporter = {}

local function compareNodes(a, b)
	return a.planNode.phrase:lower() < b.planNode.phrase:lower()
end

local function reportNode(node, buffer, level)
	buffer = buffer or {}
	level = level or 0

	if node.status == TestEnum.TestStatus.Skipped then
		return buffer
	end

	local line

	if node.status then
		local symbol = STATUS_SYMBOLS[node.status] or UNKNOWN_STATUS_SYMBOL

		line = ("%s[%s] %s"):format(INDENT:rep(level), symbol, node.planNode.phrase)
	else
		line = ("%s%s"):format(INDENT:rep(level), node.planNode.phrase)
	end

	table.insert(buffer, line)
	table.sort(node.children, compareNodes)

	for _, child in ipairs(node.children) do
		reportNode(child, buffer, level + 1)
	end

	return buffer
end

local function reportRoot(node)
	local buffer = {}
	table.sort(node.children, compareNodes)

	for _, child in ipairs(node.children) do
		reportNode(child, buffer, 0)
	end

	return buffer
end

local function report(root)
	local buffer = reportRoot(root)

	return table.concat(buffer, "\n")
end

function TextReporter.report(results)
	local resultBuffer = {
		"Test results:",
		report(results),
		("%d passed, %d failed, %d skipped"):format(results.successCount, results.failureCount, results.skippedCount),
	}

	print(table.concat(resultBuffer, "\n"))

	if results.failureCount > 0 then
		print(("%d test nodes reported failures."):format(results.failureCount))
	end

	if #results.errors > 0 then
		print("Errors reported by tests:")
		print("")

		for _, e in ipairs(results.errors) do
			print(BOLD_WEIGHT(RECEIVED_COLOR("• " .. e.phrase)))
			print("")
			TestService:Error(e.message)

			-- Insert a blank line after each error
			print("")
		end
	end
end

return TextReporter
