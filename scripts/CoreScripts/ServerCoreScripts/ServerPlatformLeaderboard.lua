--!strict
local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagPlatformLeaderboardRccEnabled = SharedFlags.FFlagPlatformLeaderboardRccEnabled

if not FFlagPlatformLeaderboardRccEnabled then
	return
end

local PlatformLeaderboardsRcc = require(CorePackages.Workspace.Packages.PlatformLeaderboardsRcc)
local PlatformLeaderboardFetcher = assert(PlatformLeaderboardsRcc.PlatformLeaderboardFetcher)
local PlatformLeaderboardConfigService = assert(PlatformLeaderboardsRcc.PlatformLeaderboardConfigService)
local PlatformLeaderboardController = assert(PlatformLeaderboardsRcc.PlatformLeaderboardController)

local configService = PlatformLeaderboardConfigService.new(PlatformLeaderboardFetcher)
local controller = PlatformLeaderboardController.new(configService, PlatformLeaderboardFetcher)

controller:initialize()
