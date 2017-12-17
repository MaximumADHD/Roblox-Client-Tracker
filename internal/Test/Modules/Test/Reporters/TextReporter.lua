--[[
	The TextReporter uses the results from a completed test to output text to
	standard output and TestService.
]]

local Test = script.Parent.Parent
local TestEnum = require(Test.TestEnum)

local INDENT = (" "):rep(3)
local STATUS_SYMBOLS = {
	[TestEnum.TestStatus.Success] = "+",
	[TestEnum.TestStatus.Failure] = "-",
	[TestEnum.TestStatus.Skipped] = "~"
}
local UNKNOWN_STATUS_SYMBOL = "?"

local TextReporter = {}

local function reportNode(node, buffer, level)
	buffer = buffer or {}
	level = level or 0

	if node.status == TestEnum.TestStatus.Skipped then
		return buffer
	end

	local line

	if node.status then
		local symbol = STATUS_SYMBOLS[node.status] or UNKNOWN_STATUS_SYMBOL

		line = ("%s[%s] %s"):format(
			INDENT:rep(level),
			symbol,
			node.planNode.phrase
		)
	else
		line = ("%s%s"):format(
			INDENT:rep(level),
			node.planNode.phrase
		)
	end

	table.insert(buffer, line)

	for _, child in ipairs(node.children) do
		reportNode(child, buffer, level + 1)
	end

	return buffer
end

local function reportRoot(node)
	local buffer = {}

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
		("%d passed, %d failed, %d skipped"):format(
			results.successCount,
			results.failureCount,
			results.skippedCount
		)
	}

	print(table.concat(resultBuffer, "\n"))

	if results.failureCount > 0 then
		warn(("%d test nodes reported failures."):format(results.failureCount))
	else
		-- This is a dummy message to make TestService happy.
		-- It helps differentiate between 'no tests' and 'no failures'
		game:GetService("TestService"):Check(true, "")
	end

	if #results.errors > 0 then
		print("Errors reported by tests:")

		for _, message in ipairs(results.errors) do
			game:GetService("TestService"):Error(message)

			-- Insert a blank line after each error
			print("")
		end
	end
end

return TextReporter