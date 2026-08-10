local root = script:FindFirstAncestor("AbuseReportMenu")
local Types = require(root.Components.Types)
local MenuConfigs = root.MenuConfigs

local MethodOfAbuseModalMenuConfig = require(MenuConfigs.Players.MethodOfAbuseModalMenuConfig)
local OptionalAttachScreenshotMenuConfig = require(MenuConfigs.Players.OptionalAttachScreenshotMenuConfig)
local PlayerModalSelectorMenuConfig = require(MenuConfigs.Players.PlayerModalSelectorMenuConfig)
local AbuseReasonModalSelectorMenuConfig = require(MenuConfigs.Players.AbuseReasonModalSelectorMenuConfig)
local SubmitReportButtonMenuConfig = require(MenuConfigs.Players.SubmitReportButtonMenuConfig)
local FreeFormCommentMenuConfig = require(MenuConfigs.Players.FreeFormCommentMenuConfig)

-- Layout order of components will be determined by the order in this table
-- TODO this should be typed specifically
local ReportPlayerMenuItemConfigList: { Types.MenuItemConfigType } = {
	MethodOfAbuseModalMenuConfig,
	PlayerModalSelectorMenuConfig,
	AbuseReasonModalSelectorMenuConfig,
	OptionalAttachScreenshotMenuConfig,
	FreeFormCommentMenuConfig,
	SubmitReportButtonMenuConfig,
}

return ReportPlayerMenuItemConfigList
