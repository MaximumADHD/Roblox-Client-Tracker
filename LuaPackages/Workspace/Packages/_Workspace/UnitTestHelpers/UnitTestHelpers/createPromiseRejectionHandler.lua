local RunService = game:GetService("RunService")

local Root = script.Parent
local Packages = Root.Parent
local Promise = require(Packages.Promise)

local REJECTION_PREFIX = "\n~~~ UNHANDLED PROMISE REJECTION ~~~"
local REDACTED_LINES = "..."
local FOUND_REJECTIONS_MESSAGE = [==[

Promise rejection report:
    unhandled rejections: %d]==]
local THRESHOLD_EXCEEDED_MESSAGE = [==[
    allowed rejections threshold: %s

This test suite run has FAILED due to exceeding the threshold of unhandled
promise rejections. For any functionality changed, try running the suite with
relevant tests focused (new or existing) to find which tests are producing
unhandled promise rejections]==]
local REPORT_MESSAGE = [==[
Caught unhandled promise rejections caught during test run. These may indicate
errors in tested code, or tests that were not cleaned up properly.

If you would like to see full stack traces without library internals redacted,
pass `true` as the first argument to `createPromiseRejectionHandler`.

More information about unhandled promise rejections in tests (and how to clean
them up) can be found at https://roblox.atlassian.net/wiki/spaces/HOW/pages/1556186613/Handling+Lua+Promises+in+Tests.
]==]

-- This flag will let us understand what the flag state is when reporting the
-- promise rejections, so we can have separate ones for different flag states
local FastFlagsAllOn = game:DefineFastFlag("TestPromiseRejectionFlagState", false)

local function isStackFrame(line: string): boolean
	return line:match("^[%w%._%-]+:[%d]+.+") ~= nil
end

local function isRedactedPath(stackTraceLine: string): boolean
	local match = (stackTraceLine:find("CorePackages.Packages.+%.TestEZ%."))
		or (stackTraceLine:find("CorePackages.Packages.+%.Promise%."))
		or (stackTraceLine:find("CorePackages.Packages.+%.roblox_rodux%."))
		or (stackTraceLine:find("CorePackages.Packages.+%.React%."))
		or (stackTraceLine:find("CorePackages.Packages.+%.ReactReconciler%."))
		or (stackTraceLine:find("CorePackages.Packages.+%.Scheduler%."))
		or (stackTraceLine:find("CorePackages.Packages.+%.Shared%."))

	return match ~= nil
end

-- Reduces a full stacktrace to a simplified one, pruning out unhelpful
-- intermediate logic around Roact and TestEZ
local function reduceStacks(stackString: string): string
	local reducedStack = {}
	local foundFirstLine = false
	for _, line in ipairs(stackString:split("\n")) do
		if isStackFrame(line) then
			if not foundFirstLine then
				foundFirstLine = true
				table.insert(reducedStack, line)
				continue
			end
		else
			-- If we get a non-stack-frame line, reset our flag
			foundFirstLine = false
		end
		if isRedactedPath(line) then
			if reducedStack[#reducedStack] ~= REDACTED_LINES then
				table.insert(reducedStack, REDACTED_LINES)
			end
		else
			table.insert(reducedStack, line)
		end
	end

	return table.concat(reducedStack, "\n")
end

return function(useFullStacks: boolean?)
	local rejections = {}

	local function onUnhandledRejection(promise, ...)
		local lines: { string } = (promise._source :: string):split("\n")

		-- Walk through the stack backwards to find the first test file that
		-- caused this issue
		local failingTest = nil
		for i = #lines, 1, -1 do
			local result = lines[i]:find("%.([%a%d]+%.spec):(%d+)")
			if result then
				failingTest = lines[i]
				break
			end
		end

		local message

		local err = tostring(select(1, ...))
		local errorStack = if useFullStacks then err else reduceStacks(err)

		local promiseOriginStack = nil
		if err:find("Promise created at:") == nil then
			promiseOriginStack = if useFullStacks then promise._source else reduceStacks(promise._source)
		end

		if failingTest then
			message = string.format(
				"%s\nPromise was created in test at:\n%s\n\nError output:\n%s",
				REJECTION_PREFIX,
				failingTest,
				errorStack
			)
		else
			message = string.format(
				"%s\nNo test file was found in promise creation stack. Error output:\n%s",
				REJECTION_PREFIX,
				errorStack
			)
		end
		if promiseOriginStack ~= nil then
			message ..= string.format("\n\nPromise created at:\n%s", promiseOriginStack)
		end
		table.insert(rejections, message)
	end

	--[[
		Accepts a threshold of allowed rejections. If the threshold is
		exceeded, this function will throw instead of only warning, and will
		cause test runner scripts that call it before exiting to fail.
	]]
	local function reportRejections(defaultThreshold: number?, allOnThreshold: number?, maybeMargin: number?)
		-- Give the promise handler a couple of moments to process any dangling
		-- promises that may still exist
		RunService.Heartbeat:Wait()
		RunService.Heartbeat:Wait()

		local margin = if maybeMargin then maybeMargin else 1
		local baseThreshold = if FastFlagsAllOn then allOnThreshold else defaultThreshold

		local threshold
		local thresholdText
		if baseThreshold == nil then
			threshold = 0
			thresholdText = "0 (default)"
		else
			-- FIXME: For now, there's too much stochasticity for erroring on an
			-- exact threshold to be reasonable. Instead, we'll add an additional
			-- 10% to the expected threshold to avoid any unexpected failures in CI
			threshold = math.floor(baseThreshold * margin)
			thresholdText = tostring(threshold)
		end
		if #rejections > 0 then
			local output = {}
			local exceedsThreshold = #rejections > (threshold :: number)
			table.insert(output, REPORT_MESSAGE)

			for _, rejection in ipairs(rejections) do
				table.insert(output, rejection)
			end

			table.insert(output, string.format(FOUND_REJECTIONS_MESSAGE, #rejections))
			if exceedsThreshold then
				table.insert(output, string.format(THRESHOLD_EXCEEDED_MESSAGE, thresholdText))
			end

			if #rejections > (threshold :: number) then
				error(table.concat(output, "\n"), 0)
			else
				warn(table.concat(output, "\n"))
			end
		end
	end

	local function inject(): () -> ()
		(Promise :: any).TEST = true
		-- returns the callback to deregister the rejection handler for cleanup
		-- purposes
		return Promise.onUnhandledRejection(onUnhandledRejection)
	end

	return {
		reportRejections = reportRejections,
		inject = inject,
	}
end
