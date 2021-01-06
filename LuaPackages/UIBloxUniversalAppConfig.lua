-- See https://confluence.rbx.com/display/MOBAPP/UIBlox+Flagging
-- for more info on how to add values here
local CorePackages = game:GetService("CorePackages")
local GetFFlagLuaAppUseNewUIBloxRoundedCorners = require(CorePackages.UIBloxFlags.GetFFlagLuaAppUseNewUIBloxRoundedCorners)
local GetFFlagLuaFixItemTilePremiumIcon = require(CorePackages.UIBloxFlags.GetFFlagLuaFixItemTilePremiumIcon)
local GetFFlagLuaUIBloxGamepadSupport = require(CorePackages.UIBloxFlags.GetFFlagLuaUIBloxGamepadSupport)

return {
	useNewUICornerRoundedCorners = GetFFlagLuaAppUseNewUIBloxRoundedCorners(),
	fixItemTilePremiumIcon = GetFFlagLuaFixItemTilePremiumIcon(),
	enableExperimentalGamepadSupport = GetFFlagLuaUIBloxGamepadSupport(),
}
