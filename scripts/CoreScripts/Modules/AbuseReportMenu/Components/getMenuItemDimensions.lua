local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local Constants = require(root.Components.Constants)

local UIBlox = require(CorePackages.Packages.UIBlox)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagRenameDeprecatedUIBloxTokens = SharedFlags.FFlagRenameDeprecatedUIBloxTokens

local useStyle = UIBlox.Core.Style.useStyle

function getMenuItemDimensions(menuWidth)
	local style = useStyle()

	if menuWidth < Constants.SmallLayoutThreshold then
		return {
			LeftWidth = Constants.LeftContainerWidthSmall,
			RightWidth = Constants.RightContainerWidthSmall,
			TextSize = Constants.FieldLabelSizeSmall,
		}
	end
	return {
		LeftWidth = (if FFlagRenameDeprecatedUIBloxTokens
			then style.Tokens.Size.Size_2000
			else style.Tokens.Global.Space_1000) * 3, -- 240 for desktop, 360 for console
		RightWidth = (if FFlagRenameDeprecatedUIBloxTokens
			then style.Tokens.Size.Size_2000
			else style.Tokens.Global.Space_1000) * 4, -- 320 for desktop, 480 for console
		TextSize = (if FFlagRenameDeprecatedUIBloxTokens
			then style.Tokens.FontSize.FontSize_400
			else style.Tokens.Global.FontSize_100), -- 20.16 for desktop, 30.24 for console
	}
end

return getMenuItemDimensions
