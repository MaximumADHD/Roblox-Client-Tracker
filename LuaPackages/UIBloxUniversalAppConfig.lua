-- See https://confluence.rbx.com/display/MOBAPP/UIBlox+Flagging
-- for more info on how to add values here
local CorePackages = game:GetService("CorePackages")
local GetFFlagLuaAppUseUIBloxToasts = require(CorePackages.UIBloxFlags.GetFFlagLuaAppUseUIBloxToasts)
local GetFFlagLuaCatalogRefactorSpawns = require(CorePackages.UIBloxFlags.GetFFlagLuaCatalogRefactorSpawns)

return {
	fixToastResizeConfig = GetFFlagLuaAppUseUIBloxToasts(),
	expandableTextAutomaticResizeConfig = GetFFlagLuaCatalogRefactorSpawns(),
}