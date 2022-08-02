require(script.Parent.defineLuaFlags)

local Plugin = script.Parent.Parent
local _Framework = require(Plugin.Packages.Framework)

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
	-- remove comment block for verbose testing in Studio
	--[[
	networking = _Framework.Http.Networking.new({
		isInternal = true,
		loggingLevel = 7,
	}),
	services = {
		RunService = {
			GetRobloxVersion = function()
				return "0.0.0.2"
			end,
		},
	},
	--]]
})

plugin.Unloading:Connect(function()
	reporter:stop()
end)
