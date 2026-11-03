local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local Foundation = require(Packages.Foundation)

--[[
	We can't use TextFits for XSmall Foundation buttons with RichText enabled (i.e. Link variant), because:
	1. RichText = true causes TextFits to incorporate text height into its measurements
	2. XSmall Foundation buttons size the inner label's bounding box height shorter than its text height

	Together, these mean that Link-variant XSmall Foundation buttons always have TextFits = false.
	This workaround calls getTextBoundsAsync to determine if a dialog button should have an overflow tooltip.
]]
local function isTextLabelTruncatedAsync(label: TextLabel): boolean
	local naturalSize = Foundation.Utility.getTextBoundsAsync(
		label.ContentText, -- Don't include `<u>` / `</u>` tags
		label:GetStyled("FontFace"),
		label:GetStyled("TextSize")
	)
	-- 1px of slack to account for sub-pixel rounding
	return naturalSize ~= nil and naturalSize.X > label.AbsoluteSize.X + 1
end

return isTextLabelTruncatedAsync
