local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest

local RateLimiter = require(script.Parent.RateLimiter)
local createCoreScriptErrorHandler = require(script.Parent.createCoreScriptErrorHandler)

local fakePiiFilter = {
	cleanPii = function(_self, message: string): string
		return (message:gsub("SecretUser", "<redacted>"))
	end,
}

local function createReporter()
	local reporter = {}
	reporter.reportErrorDeferred = jest.fn()
	return reporter
end

local function createHandler(overrides: { [string]: any }?)
	local config = {
		piiFilter = fakePiiFilter,
		reporters = { createReporter() },
		isReportableScript = function()
			return true
		end,
	}
	if overrides ~= nil then
		for key, value in overrides do
			config[key] = value
		end
	end
	return createCoreScriptErrorHandler(config), config
end

local offendingScript = Instance.new("ModuleScript")

describe("createCoreScriptErrorHandler", function()
	it("should ignore errors without an offending script", function()
		local onErrorReported = jest.fn()
		local handleError, config = createHandler({ onErrorReported = onErrorReported })

		handleError("message", "stack", nil, nil)

		expect(config.reporters[1].reportErrorDeferred).never.toHaveBeenCalled()
		expect(onErrorReported).never.toHaveBeenCalled()
	end)

	it("should ignore errors from scripts that are not reportable", function()
		local onErrorReported = jest.fn()
		local handleError, config = createHandler({
			onErrorReported = onErrorReported,
			isReportableScript = function()
				return false
			end,
		})

		handleError("message", "stack", offendingScript, nil)

		expect(config.reporters[1].reportErrorDeferred).never.toHaveBeenCalled()
		expect(onErrorReported).never.toHaveBeenCalled()
	end)

	it("should ignore errors from scripts outside CoreGui and CorePackages by default", function()
		local reporter = createReporter()
		local handleError = createCoreScriptErrorHandler({
			piiFilter = fakePiiFilter,
			reporters = { reporter },
		})

		-- offendingScript is unparented, so it is not under CoreGui or CorePackages
		handleError("message", "stack", offendingScript, nil)

		expect(reporter.reportErrorDeferred).never.toHaveBeenCalled()
	end)

	it("should send PII-cleaned message, stack and details to every reporter", function()
		local firstReporter = createReporter()
		local secondReporter = createReporter()
		local handleError = createHandler({ reporters = { firstReporter, secondReporter } })

		handleError("error for SecretUser", "stack SecretUser", offendingScript, "details SecretUser")

		for _, reporter in { firstReporter, secondReporter } do
			expect(reporter.reportErrorDeferred).toHaveBeenCalledTimes(1)
			expect(reporter.reportErrorDeferred).toHaveBeenCalledWith(
				reporter,
				"error for <redacted>",
				"stack <redacted>",
				"details <redacted>"
			)
		end
	end)

	it("should fall back to React's empty rethrow description when the error has no details", function()
		local handleError, config = createHandler()

		handleError("message", "stack", offendingScript, nil)

		local reporter = config.reporters[1]
		expect(reporter.reportErrorDeferred).toHaveBeenCalledWith(reporter, "message", "stack", "")
	end)

	it("should call onErrorReported once per reported error", function()
		local onErrorReported = jest.fn()
		local handleError = createHandler({ onErrorReported = onErrorReported })

		handleError("first", "stack", offendingScript, nil)
		handleError("second", "stack", offendingScript, nil)

		expect(onErrorReported).toHaveBeenCalledTimes(2)
	end)

	it("should stop reporting a repeated error once it is rate limited", function()
		local onErrorReported = jest.fn()
		local handleError, config = createHandler({
			onErrorReported = onErrorReported,
			rateLimiter = RateLimiter.new({ period = 60, threshold = 2, processInterval = 0 }),
		})

		for _ = 1, 5 do
			handleError("repeated", "stack", offendingScript, nil)
		end
		handleError("different", "stack", offendingScript, nil)

		local reporter = config.reporters[1]
		-- The limiter allows a signature through until its count exceeds the threshold
		expect(reporter.reportErrorDeferred).toHaveBeenCalledTimes(4)
		expect(reporter.reportErrorDeferred).toHaveBeenLastCalledWith(reporter, "different", "stack", "")
		expect(onErrorReported).toHaveBeenCalledTimes(4)
	end)

	it("should rate limit on message and stack but not details", function()
		local handleError, config = createHandler({
			rateLimiter = RateLimiter.new({ period = 60, threshold = 0, processInterval = 0 }),
		})

		handleError("message", "stack", offendingScript, "args 1")
		handleError("message", "stack", offendingScript, "args 2")

		expect(config.reporters[1].reportErrorDeferred).toHaveBeenCalledTimes(1)
	end)
end)
