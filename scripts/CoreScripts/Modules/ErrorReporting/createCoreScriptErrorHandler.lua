--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local ScriptContext = game:GetService("ScriptContext")

local React = require(CorePackages.Packages.React)

local FFlagCoreScriptErrorReporterIncludeScriptContext =
	require(script.Parent.Parent.Flags.FFlagCoreScriptErrorReporterIncludeScriptContext)

export type Reporter = {
	reportErrorDeferred: (self: any, message: string, stack: string, details: string?) -> (),
}

export type Config = {
	piiFilter: { cleanPii: (self: any, message: string) -> string },
	-- Rate limiting is skipped when nil
	rateLimiter: {
		isRateLimited: (self: any, signature: string) -> boolean,
		increment: (self: any, signature: string) -> (),
	}?,
	reporters: { Reporter },
	onErrorReported: (() -> ())?,
	isReportableScript: ((offendingScript: Instance) -> boolean)?,
}

local function isCoreScript(offendingScript: Instance): boolean
	return offendingScript:IsDescendantOf(CoreGui)
		or offendingScript:IsDescendantOf(CorePackages)
		or (
			FFlagCoreScriptErrorReporterIncludeScriptContext
			and offendingScript:IsA("CoreScript")
			and offendingScript:IsDescendantOf(ScriptContext)
		)
end

local function createCoreScriptErrorHandler(config: Config)
	local piiFilter = config.piiFilter
	local rateLimiter = config.rateLimiter
	local isReportableScript = config.isReportableScript or isCoreScript

	return function(message: string, stack: string, offendingScript: Instance?, details: string?)
		if offendingScript == nil or not isReportableScript(offendingScript) then
			return
		end

		local reactError, reactRethrow = React.unstable_parseReactError(message)
		-- if unstable_parseReactError receives a non-react error, it will
		-- just use it as the message in its output
		local parsedMessage = reactError.message
		-- if unstable_parseReactError receives a non-react error, the stack
		-- will be nil and we should use what was provided in the callback
		local parsedStack = reactError.stack or stack
		-- It's unclear what the details field typically contains; we'll
		-- only replace it with our rethrow description if it's absent
		local parsedDetails = details or reactRethrow

		local cleanedMessage = piiFilter:cleanPii(parsedMessage)
		local cleanedStack = piiFilter:cleanPii(parsedStack)
		local cleanedDetails = if parsedDetails ~= nil then piiFilter:cleanPii(parsedDetails) else nil

		if rateLimiter ~= nil then
			-- Details includes function args, so we don't include them in the error
			-- signature. They'll still be included in the upload.
			local signature = cleanedMessage .. cleanedStack
			if rateLimiter:isRateLimited(signature) then
				return
			else
				rateLimiter:increment(signature)
			end
		end

		for _, reporter in config.reporters do
			reporter:reportErrorDeferred(cleanedMessage, cleanedStack, cleanedDetails)
		end

		if config.onErrorReported ~= nil then
			config.onErrorReported()
		end
	end
end

return createCoreScriptErrorHandler
