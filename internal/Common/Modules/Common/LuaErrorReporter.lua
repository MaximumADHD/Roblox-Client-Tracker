--[[
	A simple observer for errors on the script context.

	By default, sends formatted error reports to the AnalyticsService.
]]
local ScriptContext = game:GetService("ScriptContext")
local Analytics = require(script.Parent.Analytics).new()

-- flag dependencies
local influxSeriesName = settings():GetFVariable("LuaErrorsInfluxSeries")
local influxThrottlingPercentage = tonumber(settings():GetFVariable("LuaErrorsInfluxThrottling"))
local diagCounterName = settings():GetFVariable("LuaAppsDiagErrorCounter")
local isEnabled = settings():GetFFlag("UseNewGoogleAnalyticsImpl")

-- defaults
local defaultVerboseErrors = false
local defaultShouldReportDiag = true
local defaultShouldReportGoogleAnalytics = true
local defaultShouldReportInflux = true
local defaultCurrentScreen = "Unknown"


-- string formatting functions
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

local function printError(currentScreen, message, stack, offendingScript)
	local outMessages = {
		"---- Unhandled Error Handler -----",
		string.format("Current Screen : %s\n", currentScreen),
		string.format("Message<%s,%d> :\n%s\n", type(message), #message, message),
		string.format("Stack<%s,%d> :\n%s", type(stack), #stack, stack),
		string.format("Script<%s> :\n%s", type(offendingScript), offendingScript:GetFullName()),
		"----------------------------------"}

	print(table.concat(outMessages, "\n"))
end

-- analytics reporting functions
local function reportErrorToGA(currentScreen, errorMsg, stack)
	Analytics.GoogleAnalytics:TrackEvent(currentScreen, errorMsg, stack)
end

local function reportErrorToInflux(currentScreen, message, stack, offendingScript)
	local additionalArgs = {
		screen = currentScreen,
		err = message,
		stack = stack,
		script = offendingScript:GetFullName()
	}

	-- fire the error report
	Analytics.InfluxDb:ReportSeries(influxSeriesName, additionalArgs, influxThrottlingPercentage)
end

local function reportErrorToDiag(currentScreen)
	-- these reports may be broken down further based on current screen
	Analytics.Diag:ReportCounter(diagCounterName, 1)
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
	local instance = {
		_isInstance = true,
		_verbose = defaultVerboseErrors,
		_shouldReportDiag = defaultShouldReportDiag,
		_shouldReportGoogleAnalytics = defaultShouldReportGoogleAnalytics,
		_shouldReportInflux = defaultShouldReportInflux,
		_currentScreen = defaultCurrentScreen,
		_signalConnectionToken = nil
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

	return instance
end

function LuaErrorReporter:delete()
	if not self._isInstance then
		error("delete() cannot be called on the module object")
		return
	end

	-- we're cleaning up this crash observer, disconnect from the Signal
	self._signalConnectionToken:Disconnect()
end

-- screenName : (string) the english, human readable name of the current screen that is presented to the user
function LuaErrorReporter:setCurrentScreen(screenName)
	if not self._isInstance then
		error("setCurrentScreen cannot be called on the module object")
		return
	end

	if type(screenName) ~= "string" then
		error("screenName must be a string")
	end

	self._currentScreen = screenName
end

-- message : (string) the message passed from the error() call
-- stack : (string) the stack trace
-- offendingScript : (LuaSourceContainer) the specific script that threw the error
function LuaErrorReporter:handleError(message, stack, offendingScript)
	-- NOTE - offendingScript is intended to show where in the workspace the error originated.
	-- It will not be useful for the Lua Apps as all files originate out of the ***StarterScript.lua

	if not self._isInstance then
		-- NOTE - if this is called from the module script, throwing an error here will not cause
		-- an infinite loop as the connection to the Error signal was never set.
		error("handleError() cannot be called on the module object")
		return
	end

	-- if the fast flag isn't on yet, escape
	if not isEnabled then
		return;
	end

	-- parse out the error message
	if self._verbose then
		printError(self._currentScreen, message, stack, offendingScript)
	end

	-- sanitize some inputs
	local cleanedMessage = removePlayerNameFromStack(message)
	local cleanedStack = removePlayerNameFromStack(stack)
	cleanedStack = convertNewlinesToPipes(cleanedStack)

	-- report to the appropriate sources
	if self._shouldReportGoogleAnalytics then
		reportErrorToGA(self._currentScreen, cleanedMessage, cleanedStack)
	end

	if self._shouldReportInflux then
		reportErrorToInflux(self._currentScreen, cleanedMessage, cleanedStack, offendingScript)
	end

	if self._shouldReportDiag then
		reportErrorToDiag(self._currentScreen)
	end
end


return LuaErrorReporter