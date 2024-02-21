-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = { 
   "CampaignFilledNeutral", 
   "CheckFilledPositive", 
   "CreateFilledEmphasis", 
   "CreateFilledNeutral", 
   "CreateFilledWarning", 
   "EditOffFilledNegative", 
   "ErrorFilledError", 
   "HappyFilledNeutral", 
   "NotificationBell", 
   "NotificationSettings", 
   "PlayArrowFilledEmphasis", 
   "PlayArrowFilledNeutral", 
   "PlayArrowFilledWarning", 
   "PlayDisabledFilledNegative", 
   "TranslateFilledNeutral", 
   "UpdateFilledNegative", 
   "UpdateFilledPositive", 
   "UpdateFilledWarning"
}
local var1 = "UpdateFilledEmphasis"
local var27 = "UpdateFilledNegative"
local var3 = "UpdateFilledPositive"
local var4 = "WarningFilledWarning"
var27 = require(script.Parent.Parent.Parent.Src.Util.SharedFlags.getFFlagNotificationsMarkAllAsRead)
if var27() then
   var3 = var0
   table.insert(var3, "ThreeDots")
end
return var0
