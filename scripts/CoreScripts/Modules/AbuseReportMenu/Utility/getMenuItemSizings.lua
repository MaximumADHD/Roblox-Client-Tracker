--!nonstrict
local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local Constants = require(root.Components.Constants)

local UIBlox = require(CorePackages.Packages.UIBlox)

local useStyle = UIBlox.Core.Style.useStyle

function getMenuItemSizings()
	local style = useStyle()

	return {
		ItemPadding = style.Tokens.Size.Size_250, -- 12 for desktop, 18 for console
		DropdownTextSize = style.Tokens.FontSize.FontSize_400, -- 20.16 for desktop, 30.24 for console
		FontStyle = Constants.ReportMenuFontStyle,
		ButtonSize = Constants.ReportMenuButtonSizeConsole,
		ButtonInsideVerticalPadding = style.Tokens.Size.Size_100,
	}
end

return getMenuItemSizings
