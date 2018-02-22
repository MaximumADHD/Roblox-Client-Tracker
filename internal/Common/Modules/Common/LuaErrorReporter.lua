--[[
	A simple observer for errors on the script context.

	By default, sends formatted error reports to the AnalyticsService.
]]
local ScriptContext = game:GetService("ScriptContext")
local RunService = game:GetService("RunService")
local Analytics = require(script.Parent.Analytics).new()

-- flag dependencies
local influxSeriesName = settings():GetFVariable("LuaErrorsInfluxSeries")
local influxThrottlingPercentage = tonumber(settings():GetFVariable("LuaErrorsInfluxThrottling"))
local diagCounterName = settings():GetFVariable("LuaAppsDiagErrorCounter")
local isEnabled = settings():GetFFlag("UseNewGoogleAnalyticsImpl2")

-- defaults
local defaultVerboseErrors = false
local defaultShouldReportDiag = true
local defaultShouldReportGoogleAnalytics = true
local defaultShouldReportInflux = true
local defaultCurrentApp = "Unknown"
local defaultQueuedReportTotalLimit = 30


-- string formatting functions
local function createProductName(currentApp)
	local versionString = RunService:GetRobloxVersion()
	return string.format("%s-%s", currentApp, versionString)
end

local function convertNewlinesToPipes(stack)
	local rebuiltStack = ""
	local first = true
	for line in stack:gmatch("[^\r\n]+") do
		if first then
			rebuiltStack = line
			first = false
		else
			rebuiltStack = rebuiltStack .. " | " .. line
		end
	end
	return rebuiltStack
end

local function removePlayerNameFromStack(stack)
	stack = string.gsub(stack, "Players%.[^.]+%.", "Players.<Player>.")
	return stack
end

local function printError(currentApp, message, stack, offendingScript)
	local outMessages = {
		"---- Unhandled Error Handler -----",
		string.format("Current App<%s, %d> : \n%s\n", type(currentApp), #currentApp, currentApp),
		string.format("Message<%s,%d> :\n%s\n", type(message), #message, message),
		string.format("Stack<%s,%d> :\n%s", type(stack), #stack, stack),
		string.format("Script<%s> :\n%s", type(offendingScript), offendingScript:GetFullName()),
		"----------------------------------"}

	print(table.concat(outMessages, "\n"))
end

-- analytics reporting functions
local function reportErrorToGA(currentApp, errorMsg, stack, value)
	Analytics.GoogleAnalytics:trackEvent(currentApp, errorMsg, stack, value)
end

local function reportErrorToInflux(currentApp, message, stack, offendingScript)
	local additionalArgs = {
		app = currentApp,
		err = message,
		stack = stack,
		script = offendingScript:GetFullName()
	}

	-- fire the error report
	Analytics.InfluxDb:reportSeries(influxSeriesName, additionalArgs, influxThrottlingPercentage)
end

local function reportErrorToDiag(currentApp)
	-- these reports may be broken down further based on current app
	Analytics.Diag:reportCounter(diagCounterName, 1)
end

-- helper queue object
local function createErrorQueue()
	-- NOTE - if error batching other types of reports becomes more important,
	-- this object can be generalized to work for more errors, not just GA
	local ErrorQueue = {
		errors = {},
		totalErrors = 0,
		totalKeys = 0,
		countdown = defaultQueuedReportTotalLimit,
		shouldCountdown = true,
	}

	function ErrorQueue:addError(currentApp, message, stack)
		local key = string.format("%s | %s | %s", currentApp, message, stack)
		if not self.errors[key] then
			self.errors[key] = {
				app = currentApp,
				message = message,
				stack =  stack,
				value = 1 }
			self.totalKeys = self.totalKeys + 1
		else
			self.errors[key].value = self.errors[key].value + 1
		end

		self.totalErrors = self.totalErrors + 1
	end

	function ErrorQueue:isReadyToReport()
		-- NOTE - GA has limits on how many reports that it will accept at a time.
		-- According to : https://developers.google.com/analytics/devguides/config/mgmt/v3/limits-quotas
		-- the Collection API is limited to 10 queries / second per IP Address
		return self.totalKeys > 10 or
			self.totalErrors > defaultQueuedReportTotalLimit or
			self.countdown <= 0
	end

	function ErrorQueue:reportAllErrors()
		-- copy the error queue and instantly clear it out
		local errors = {}
		for k, v in pairs(self.errors) do
			errors[k] = v
		end

		self.errors = {}
		self.totalErrors = 0
		self.totalKeys = 0
		self.countdown = defaultQueuedReportTotalLimit

		-- report the errors
		for _, errData in pairs(errors) do
			reportErrorToGA(errData.app, errData.message, errData.stack, errData.value)
		end
	end

	function ErrorQueue:startTimer()
		spawn(function()
			while self.shouldCountdown do
				self.countdown = self.countdown - 1
				if self:isReadyToReport() then
					self:reportAllErrors()
				end
				wait(1.0)
			end
		end)
	end

	function ErrorQueue:stopTimer()
		self.shouldCountdown = false
	end

	return ErrorQueue
end



local LuaErrorReporter = {}
LuaErrorReporter.__index = LuaErrorReporter

-- observedSignal : the Signal to listen for errors on
function LuaErrorReporter.new(observedSignal)
	-- sanitize input
	if not observedSignal then
		observedSignal = ScriptContext.Error
	end

	-- _isInstance : (boolean) simple flag to identify that this object was created with new()
	-- _verbose : (boolean) when true, prints out debug information before sending error reports
	-- _shouldReportDiag : (boolean) when true, increments a counter of total errors in Diag
	-- _shouldReportGoogleAnalytics : (boolean) when true, reports the error to GoogleAnalytics
	-- _shouldReportInflux : (boolean) when true, reports the error to InfluxDb
	-- _currentScreen : (string) the name of the screen that is currently presented to the user
	-- _signalConnectionToken : (RBXScriptConnection) a token issued when connecting to the Error signal
	-- _reportQueueGA : (ErrorQueue)
	local instance = {
		_isInstance = true,
		_verbose = defaultVerboseErrors,
		_signalConnectionToken = nil,
		_shouldReportDiag = defaultShouldReportDiag,
		_shouldReportGoogleAnalytics = defaultShouldReportGoogleAnalytics,
		_shouldReportInflux = defaultShouldReportInflux,
		_currentApp = defaultCurrentApp,
		_reportQueueGA = createErrorQueue(),
	}
	setmetatable(instance, LuaErrorReporter)

	-- connect a listener for errors on the provided Signal.
	instance._signalConnectionToken = observedSignal:Connect(function(message, stack, offendingScript)

		-- protect against endless chains of errors when actually reporting
		local success, reportMessage = pcall(function()
			instance:handleError(message, stack, offendingScript)
		end)

		if not success then
			warn(string.format("An error occurred while reporting an error : %s", reportMessage))
		end
	end)

	-- the BindToClose function does not play nicely with Studio.
	if not RunService:IsStudio() then
		-- BindToClose has about a 30 second timeout before the datamodel will kill any running scripts,
		-- but this function will only need to fire off, at most, 9 http requests in parallel.
		-- And since we're not binding any callbacks to these http requests, it's fine.
		game:BindToClose(function()
			instance:delete()
		end)
	end

	return instance
end

function LuaErrorReporter:delete()
	-- we're cleaning up this crash observer, disconnect from the Signal
	self._signalConnectionToken:Disconnect()

	-- when the game closes down, send off all the remaining reports left in the queue
	self._reportQueueGA:reportAllErrors()
	self._reportQueueGA.shouldCountdown = false
end

-- appName : (string) the english, human readable name of the current app that is hosting the lua app
function LuaErrorReporter:setCurrentApp(appName)
	if type(appName) ~= "string" then
		error("appName must be a string")
	end

	self._currentApp = appName
end

function LuaErrorReporter:startQueueTimers()
	self._reportQueueGA:startTimer()
end

function LuaErrorReporter:stopQueueTimers()
	self._reportQueueGA:stopTimer()
end

-- message : (string) the message passed from the error() call
-- stack : (string) the stack trace
-- offendingScript : (LuaSourceContainer) the specific script that threw the error
function LuaErrorReporter:handleError(message, stack, offendingScript)
	-- NOTE - offendingScript is intended to show where in the workspace the error originated.
	-- It will not be useful for the Lua Apps as all files originate out of the ***StarterScript.lua

	-- if the fast flag isn't on yet, escape
	if not isEnabled then
		return
	end

	-- make a descriptive name to categorize the errors under- : <currentApp>-<appV
	local productName = createProductName(self._currentApp)

	-- parse out the error message
	if self._verbose then
		printError(productName, message, stack, offendingScript)
	end

	-- sanitize some inputs
	local cleanedMessage = removePlayerNameFromStack(message)
	local cleanedStack = removePlayerNameFromStack(stack)
	cleanedStack = convertNewlinesToPipes(cleanedStack)

	-- report to the appropriate sources
	if self._shouldReportGoogleAnalytics then
		self._reportQueueGA:addError(productName, cleanedMessage, cleanedStack)

		if self._reportQueueGA:isReadyToReport() then
			self._reportQueueGA:reportAllErrors()
		end
	end

	if self._shouldReportInflux then
		reportErrorToInflux(productName, cleanedMessage, cleanedStack, offendingScript)
	end

	if self._shouldReportDiag then
		reportErrorToDiag(productName)
	end
end

return LuaErrorReporter