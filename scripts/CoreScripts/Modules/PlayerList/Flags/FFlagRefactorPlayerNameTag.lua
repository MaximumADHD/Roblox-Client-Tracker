local CoreGui = game:GetService("CoreGui")

local getIsUserProfileOnLeaderboardEnabled = require(CoreGui.RobloxGui.Modules.Flags.getIsUserProfileOnLeaderboardEnabled)

return game:DefineFastFlag("RefactorPlayerNameTag2", false) and getIsUserProfileOnLeaderboardEnabled()
