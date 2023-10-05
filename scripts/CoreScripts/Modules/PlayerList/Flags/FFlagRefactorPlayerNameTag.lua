local CoreGui = game:GetService("CoreGui")

local getFFlagPlayerListApolloClientEnabled = require(CoreGui.RobloxGui.Modules.Flags.getFFlagPlayerListApolloClientEnabled)
local getIsUserProfileOnLeaderboardEnabled = require(CoreGui.RobloxGui.Modules.Flags.getIsUserProfileOnLeaderboardEnabled)

return game:DefineFastFlag("RefactorPlayerNameTag", false) and getFFlagPlayerListApolloClientEnabled() and getIsUserProfileOnLeaderboardEnabled()
