local ContentProvider = game:GetService("ContentProvider")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local RunService = game:GetService("RunService")
local ScriptContext = game:GetService("ScriptContext")
local UserInputService = game:GetService("UserInputService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RateLimiter = require(RobloxGui.Modules.ErrorReporting.RateLimiter)
local PiiFilter = require(RobloxGui.Modules.ErrorReporting.PiiFilter)

local BacktraceReporter = require(CorePackages.ErrorReporters.Backtrace.BacktraceReporter)

game:DefineFastFlag("EnableCoreScriptBacktraceReporting", false)
game:DefineFastString("CoreScriptBacktraceErrorUploadToken", "")

game:DefineFastInt("CoreScriptBacktracePIIFilterEraseTimeoutSeconds", 5 * 60)

-- These values control how many times we report the same error in a given period.
-- For these defaults, we will report the same message + stack combination 5 times per
-- minute, and ignore subsequent occurrences.
game:DefineFastFlag("CoreScriptBacktraceRepeatedErrorRateLimiting", true)
game:DefineFastInt("CoreScriptBacktraceRepeatedErrorRateLimitCount", 5)
game:DefineFastInt("CoreScriptBacktraceRepeatedErrorRateLimitPeriod", 60)
-- How long to wait, in tenths of a second, between ticks of the rate limit clock.
-- Higher values will improve performance but may cause repeated errors to be ignored
-- beyond the settings above.
game:DefineFastInt("CoreScriptBacktraceRepeatedErrorRateLimitProcessIntervalTenths", 10)

-- We don't have a default for this fast string, so if it's the empty string we
-- know we're at the default and we can't do error reports.
if game:GetFastFlag("EnableCoreScriptBacktraceReporting") and game:GetFastString("CoreScriptBacktraceErrorUploadToken") ~= "" then
	local staticAttributes = {
		LocalVersion = RunService:GetRobloxVersion(),
		BaseUrl = ContentProvider.BaseUrl,
		PlaceId = game.PlaceId,
		Platform = UserInputService:GetPlatform().Name,
	}

	local piiFilter = PiiFilter.new({
		eraseTimeout = game:GetFastInt("CoreScriptBacktracePIIFilterEraseTimeoutSeconds"),
	})

	local useRateLimiting = game:GetFastFlag("CoreScriptBacktraceRepeatedErrorRateLimiting")
	local rateLimiter
	if useRateLimiting then
		rateLimiter = RateLimiter.new({
			period = game:GetFastInt("CoreScriptBacktraceRepeatedErrorRateLimitPeriod"),
			threshold = game:GetFastInt("CoreScriptBacktraceRepeatedErrorRateLimitCount"),
			processInterval = game:GetFastInt("CoreScriptBacktraceRepeatedErrorRateLimitProcessIntervalTenths") / 10,
		})
	end

	local reporter = BacktraceReporter.new({
		httpService = HttpService,
		token = game:GetFastString("CoreScriptBacktraceErrorUploadToken"),
		processErrorReportMethod = function(report)
			report:addAttributes(staticAttributes)
			
			local playerCount = #Players:GetPlayers()
			report:addAttributes({
				PlayerCount = playerCount,
			})

			return report
		end,
	})

	local function handleErrorDetailed(message, stack, offendingScript, details)
		if offendingScript ~= nil and (offendingScript:IsDescendantOf(CoreGui) or offendingScript:IsDescendantOf(CorePackages)) then
			local cleanedMessage = piiFilter:cleanPii(message)
			local cleanedStack = piiFilter:cleanPii(stack)
			
			if details ~= nil then
				details = piiFilter:cleanPii(details)
			end

			if useRateLimiting then
				-- Details includes function args, so we don't include them in the error
				-- signature. They'll still be included in the upload to Backtrace.
				local signature = cleanedMessage .. cleanedStack
				if rateLimiter:isRateLimited(signature) then
					return
				else
					rateLimiter:increment(signature)
				end
			end

			reporter:reportErrorDeferred(cleanedMessage, cleanedStack, details)
		end
	end

	ScriptContext.ErrorDetailed:Connect(function(...)
        local success, message = pcall(handleErrorDetailed, ...)
        
        if not success then
            warn(("CoreScript error reporter failed to handle an error:\n%s"):format(message))
        end
	end)

	local serverVersionRemote = RobloxReplicatedStorage:WaitForChild("GetServerVersion")
	local serverVersion = serverVersionRemote:InvokeServer()
	staticAttributes.ServerVersion = serverVersion
end