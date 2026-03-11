local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Packages.Rodux)

local PromptInfo = require(script.PromptInfo)
local ScreenSize = require(script.ScreenSize)
local GameName = require(script.GameName)
local AnalyticsInfo = require(script.AnalyticsInfo)
local AvatarExperienceFlags = require(CorePackages.Workspace.Packages.AvatarExperienceFlags)
local FFlagAXAvatarTimeoutFlowIE = AvatarExperienceFlags.FFlagAXAvatarTimeoutFlowIE

local Reducer = Rodux.combineReducers({
	promptInfo = PromptInfo,
	screenSize = ScreenSize,
	-- Modals that use AXPartialPageModal expects state.ScreenSize
	ScreenSize = if FFlagAXAvatarTimeoutFlowIE then ScreenSize else nil,
	gameName = GameName,
	analyticsInfo = AnalyticsInfo,
})

return Reducer
