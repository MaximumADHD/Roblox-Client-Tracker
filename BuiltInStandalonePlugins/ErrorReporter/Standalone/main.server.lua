local FFlagDisplayErrorDetailsSecurityLevel = game:GetFastFlag("DisplayErrorDetailsSecurityLevel")

local Plugin = script.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local ErrorReporter = Framework.ErrorReporter.StudioPluginErrorReporter
local ExpectedPrefix = script.Parent:FindFirstChild("ExpectedPrefix")
assert(ExpectedPrefix ~= nil)

if FFlagDisplayErrorDetailsSecurityLevel then
	local reporter = ErrorReporter.new({
		expectedSecurityLevel = 6,
		expectedPrefix = ExpectedPrefix.Value,

		-- remove comment block for verbose testing in Studio
		--[[networking = Framework.Http.Networking.new({
			isInternal = true,
			loggingLevel = 7,
		}),
		services = {
			RunService = {
				GetRobloxVersion = function()
					return "0.0.0.2"
				end,
			},
		},]]
	})

	plugin.Unloading:Connect(function()
		reporter:stop()
	end)
end