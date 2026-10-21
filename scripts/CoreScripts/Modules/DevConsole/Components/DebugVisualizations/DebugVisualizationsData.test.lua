local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach

local FFlagSlimDevConsole = game:DefineFastFlag("SlimDevConsole2", false)
local FFlagSlimTintModeTelemetry = game:DefineFastFlag("SlimTintModeTelemetry", false)

describe("DebugVisualizationsData tint mode telemetry", function()
	local logSlimTintModeSelected
	local data

	beforeEach(function()
		jest.resetModules()
		logSlimTintModeSelected = jest.fn()
		jest.doMock(script.Parent.DebugVisualizationsTelemetry, function()
			return { logSlimTintModeSelected = logSlimTintModeSelected }
		end)

		local DebugVisualizationsData = require(script.Parent.DebugVisualizationsData)
		data = DebugVisualizationsData.new()
		data:start()
	end)

	local function getTintEntry()
		for _, entry in data:getCurrentData() do
			if entry.name == "SlimTintMode" then
				return entry
			end
		end
		return nil
	end

	it("does not log when toggling a non-tint visualization", function()
		local entry = data:getCurrentData()[1]
		if entry.settingInfo.Kind == "Dropdown" then
			entry = data:getCurrentData()[2]
		end

		entry.valueChangeCallback(entry.name, not entry.settingInfo.Value)

		expect(logSlimTintModeSelected).never.toHaveBeenCalled()
	end)

	if FFlagSlimDevConsole and FFlagSlimTintModeTelemetry then
		it("logs the selected tint mode", function()
			local entry = getTintEntry()
			local mode = entry.settingInfo.EnumItems[1]

			entry.valueChangeCallback("SlimTintMode", mode)

			expect(logSlimTintModeSelected).toHaveBeenCalledTimes(1)
			expect(logSlimTintModeSelected).toHaveBeenCalledWith(mode)
		end)
	end

	if FFlagSlimDevConsole and not FFlagSlimTintModeTelemetry then
		it("does not log the selected tint mode", function()
			local entry = getTintEntry()

			entry.valueChangeCallback("SlimTintMode", entry.settingInfo.EnumItems[1])

			expect(logSlimTintModeSelected).never.toHaveBeenCalled()
		end)
	end
end)
