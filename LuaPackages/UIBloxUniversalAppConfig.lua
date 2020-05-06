-- See https://confluence.rbx.com/display/MOBAPP/UIBlox+Flagging
-- for more info on how to add values here
local CorePackages = game:GetService("CorePackages")
local GetFFlagLuaAppUseUIBloxToasts = require(CorePackages.UIBloxFlags.GetFFlagLuaAppUseUIBloxToasts)
local GetFFlagLuaCatalogRefactorSpawns = require(CorePackages.UIBloxFlags.GetFFlagLuaCatalogRefactorSpawns)
local GetFFlagLuaUIBloxModalWindowAnchorPoint = require(CorePackages.UIBloxFlags.GetFFlagLuaUIBloxModalWindowAnchorPoint)
local GetFFlagLuaFixItemTilePremiumIcon = require(CorePackages.UIBloxFlags.GetFFlagLuaFixItemTilePremiumIcon)

return {
	fixToastResizeConfig = GetFFlagLuaAppUseUIBloxToasts(),
	expandableTextAutomaticResizeConfig = GetFFlagLuaCatalogRefactorSpawns(),
	modalWindowAnchorPoint = GetFFlagLuaUIBloxModalWindowAnchorPoint(),
	fixItemTilePremiumIcon = GetFFlagLuaFixItemTilePremiumIcon(),
}