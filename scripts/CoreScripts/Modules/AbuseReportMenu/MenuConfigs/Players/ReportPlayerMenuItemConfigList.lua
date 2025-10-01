local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local Types = require(root.Components.Types)
local MenuConfigs = root.MenuConfigs

local MethodOfAbuseModalMenuConfig = require(MenuConfigs.Players.MethodOfAbuseModalMenuConfig)
local OptionalAttachScreenshotMenuConfig = require(MenuConfigs.Players.OptionalAttachScreenshotMenuConfig)
local PlayerModalSelectorMenuConfig = require(MenuConfigs.Players.PlayerModalSelectorMenuConfig)
local ChatModalSelectorMenuConfig = require(MenuConfigs.Players.ChatModalSelectorMenuConfig)
local AbuseReasonModalSelectorMenuConfig = require(MenuConfigs.Players.AbuseReasonModalSelectorMenuConfig)
local SubmitReportButtonMenuConfig = require(MenuConfigs.Players.SubmitReportButtonMenuConfig)
local FreeFormCommentMenuConfig = require(MenuConfigs.Players.FreeFormCommentMenuConfig)

local FFlagInGameMenuAddChatLineReporting =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagInGameMenuAddChatLineReporting

-- Layout order of components will be determined by the order in this table
-- TODO this should be typed specifically
local ReportPlayerMenuItemConfigList: { Types.MenuItemConfigType } = if FFlagInGameMenuAddChatLineReporting
	then {
		MethodOfAbuseModalMenuConfig,
		PlayerModalSelectorMenuConfig,
		ChatModalSelectorMenuConfig,
		AbuseReasonModalSelectorMenuConfig,
		OptionalAttachScreenshotMenuConfig,
		FreeFormCommentMenuConfig,
		SubmitReportButtonMenuConfig,
	}
	else {
		MethodOfAbuseModalMenuConfig,
		PlayerModalSelectorMenuConfig,
		AbuseReasonModalSelectorMenuConfig,
		OptionalAttachScreenshotMenuConfig,
		FreeFormCommentMenuConfig,
		SubmitReportButtonMenuConfig,
	}

return ReportPlayerMenuItemConfigList
