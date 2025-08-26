--!nonstrict
local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local Constants = require(root.Components.Constants)

local UIBlox = require(CorePackages.Packages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle

local FFlagAbuseReportTabSelectionHighlightCutoffFixEnabled =
	require(root.Flags.FFlagAbuseReportTabSelectionHighlightCutoffFixEnabled)

function getMenuItemSizings()
	local style = useStyle()

	return {
		ItemPadding = style.Tokens.Global.Space_125, -- 12 for desktop, 18 for console
		DropdownTextSize = style.Tokens.Global.FontSize_100, -- 20.16 for desktop, 30.24 for console
		FontStyle = Constants.ReportMenuFontStyle,
		ButtonSize = Constants.ReportMenuButtonSizeConsole,
		ButtonInsideVerticalPadding = if FFlagAbuseReportTabSelectionHighlightCutoffFixEnabled
			then style.Tokens.Global.Space_50
			else nil,
	}
end

return getMenuItemSizings
