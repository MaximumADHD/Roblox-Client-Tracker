--!nonstrict
local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local Constants = require(root.Components.Constants)

local UIBlox = require(CorePackages.Packages.UIBlox)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagRenameDeprecatedUIBloxTokens = SharedFlags.FFlagRenameDeprecatedUIBloxTokens

local useStyle = UIBlox.Core.Style.useStyle

function getMenuItemSizings()
	local style = useStyle()

	return {
		ItemPadding = (if FFlagRenameDeprecatedUIBloxTokens
			then style.Tokens.Size.Size_250
			else style.Tokens.Global.Space_125), -- 12 for desktop, 18 for console
		DropdownTextSize = (if FFlagRenameDeprecatedUIBloxTokens
			then style.Tokens.FontSize.FontSize_400
			else style.Tokens.Global.FontSize_100), -- 20.16 for desktop, 30.24 for console
		FontStyle = Constants.ReportMenuFontStyle,
		ButtonSize = Constants.ReportMenuButtonSizeConsole,
		ButtonInsideVerticalPadding = (if FFlagRenameDeprecatedUIBloxTokens
			then style.Tokens.Size.Size_100
			else style.Tokens.Global.Space_50),
	}
end

return getMenuItemSizings
