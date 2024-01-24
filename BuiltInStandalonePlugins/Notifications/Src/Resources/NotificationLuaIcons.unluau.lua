-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = { 
   "CampaignFilledNeutral", 
   "CheckFilledPositive", 
   "CreateFilledEmphasis", 
   "CreateFilledWarning", 
   "EditOffFilledNegative", 
   "ErrorFilledError", 
   "HappyFilledNeutral", 
   "NotificationBell", 
   "NotificationSettings", 
   "PlayArrowFilledEmphasis", 
   "PlayArrowFilledWarning", 
   "PlayDisabledFilledNegative", 
   "TranslateFilledNeutral", 
   "UpdateFilledEmphasis", 
   "UpdateFilledNegative", 
   "UpdateFilledWarning"
}
local var1 = "UpdateFilledPositive"
local var27 = "UpdateFilledWarning"
local var3 = "WarningFilledWarning"
var27 = require(script.Parent.Parent.Parent.Src.Util.SharedFlags.getFFlagCollaborationNeutralNotificationIcons)
if var27() then
   var3 = var0
   table.insert(var3, "CreateFilledNeutral")
   table.insert(var0, "PlayArrowFilledNeutral")
end
return var0
