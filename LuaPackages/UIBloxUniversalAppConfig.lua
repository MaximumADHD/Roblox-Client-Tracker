-- See https://confluence.rbx.com/display/MOBAPP/UIBlox+Flagging
-- for more info on how to add values here
local CorePackages = game:GetService("CorePackages")
local GetFFlagLuaAppUseNewUIBloxRoundedCorners = require(CorePackages.UIBloxFlags.GetFFlagLuaAppUseNewUIBloxRoundedCorners)
local GetFFlagLuaUIBloxModalWindowAnchorPoint = require(CorePackages.UIBloxFlags.GetFFlagLuaUIBloxModalWindowAnchorPoint)
local GetFFlagLuaFixItemTilePremiumIcon = require(CorePackages.UIBloxFlags.GetFFlagLuaFixItemTilePremiumIcon)

return {
	useNewUICornerRoundedCorners = GetFFlagLuaAppUseNewUIBloxRoundedCorners(),
	modalWindowAnchorPoint = GetFFlagLuaUIBloxModalWindowAnchorPoint(),
	fixItemTilePremiumIcon = GetFFlagLuaFixItemTilePremiumIcon(),
}