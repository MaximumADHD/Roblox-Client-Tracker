local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local createCoreScriptReportProcessor = require(script.Parent.createCoreScriptReportProcessor)

local function createFakeReport()
	local report = { attributes = {} }
	function report:addAttributes(attributes)
		for key, value in attributes do
			self.attributes[key] = value
		end
	end
	return report
end

describe("createCoreScriptReportProcessor", function()
	it("should add static, player count and channel attributes to the report", function()
		local processReport = createCoreScriptReportProcessor({ PlaceId = 1234, CoreScriptVersion = "1.0" })

		local report = processReport(createFakeReport())

		expect(report.attributes).toEqual({
			PlaceId = 1234,
			CoreScriptVersion = "1.0",
			PlayerCount = #Players:GetPlayers(),
			RobloxChannel = RunService:GetRobloxClientChannel(),
		})
	end)

	it("should include static attributes added after creation in later reports", function()
		local processReport, staticAttributes = createCoreScriptReportProcessor({})

		staticAttributes.ServerVersion = "server-1"
		local report = processReport(createFakeReport())

		expect(report.attributes.ServerVersion).toBe("server-1")
	end)

	it("should gather default static attributes when none are provided", function()
		local _, staticAttributes = createCoreScriptReportProcessor()

		expect(staticAttributes).toEqual({
			LocalVersion = RunService:GetRobloxVersion(),
			BaseUrl = game:GetService("ContentProvider").BaseUrl,
			PlaceId = game.PlaceId,
			Platform = game:GetService("UserInputService"):GetPlatform().Name,
			UserAgent = game:GetService("HttpService"):GetUserAgent(),
			CoreScriptVersion = RunService:GetCoreScriptVersion(),
		})
	end)
end)
