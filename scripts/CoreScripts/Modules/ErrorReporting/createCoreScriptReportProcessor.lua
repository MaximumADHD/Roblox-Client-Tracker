--!nonstrict
local ContentProvider = game:GetService("ContentProvider")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local function getStaticAttributes()
	return {
		LocalVersion = RunService:GetRobloxVersion(),
		BaseUrl = ContentProvider.BaseUrl,
		PlaceId = game.PlaceId,
		Platform = UserInputService:GetPlatform().Name,
		UserAgent = HttpService:GetUserAgent(),
		CoreScriptVersion = RunService:GetCoreScriptVersion(),
	}
end

-- Returns the shared static attributes table so callers can add attributes
-- that resolve later (e.g. ServerVersion) and have them picked up by
-- subsequent reports.
local function createCoreScriptReportProcessor(staticAttributes: { [string]: any }?)
	local attributes = staticAttributes or getStaticAttributes()

	local function processReport(report)
		report:addAttributes(attributes)

		local playerCount = #Players:GetPlayers()
		report:addAttributes({
			PlayerCount = playerCount,
		})

		report:addAttributes({
			RobloxChannel = RunService:GetRobloxClientChannel(),
		})

		return report
	end

	return processReport, attributes
end

return createCoreScriptReportProcessor
