require(script.Parent.defineLuaFlags)

-- Note: Turning this flag on STOPS all errors from being sent.
local FFlagErrorReporterTestInStudio = game:GetFastFlag("DebugErrorReporterTestInStudio")

local Plugin = script.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

local TestLoader = require(Plugin.Packages.TestLoader)
TestLoader.launch(Plugin.Name, Plugin.ErrorReporter)
if TestLoader.isCli() then
	return
end

local ErrorReporter = require(Plugin.ErrorReporter.StudioPluginErrorReporter)

local ExpectedPrefix = script.Parent:FindFirstChild("ExpectedPrefix")
assert(ExpectedPrefix ~= nil)

local reporter = ErrorReporter.new({
	expectedSecurityLevel = 6,
	expectedPrefix = ExpectedPrefix.Value,
	networking = if FFlagErrorReporterTestInStudio
		then
			Framework.Http.Networking.new({
				isInternal = true,
				loggingLevel = 7,
				allowYielding = false,
				-- mocking this out allows us to prevent the error reporter
				-- from making an HTTP request during testing/verification
				httpImpl = {
					ClassName = "ErrorReporter Plugin's HttpImpl",
					RequestInternal = function()
						return {
							Start = function() end,
						}
					end,
				},
			})
		else nil,
	services = if FFlagErrorReporterTestInStudio
		then {
			RunService = {
				GetRobloxVersion = function()
					return "0.0.0.2"
				end,
			},
		}
		else nil,
})

plugin.Unloading:Connect(function()
	reporter:stop()
end)

-- Send an error to be able to see output in output window for testing/verification purposes
if FFlagErrorReporterTestInStudio then
	error("ErrorReporter test error")
end
