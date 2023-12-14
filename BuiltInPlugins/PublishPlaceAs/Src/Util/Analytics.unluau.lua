-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("RbxAnalyticsService")
local var1 = game:GetService("StudioService")
local var2 = require(script.Parent.Parent.Parent.Packages.Cryo)
local var3 = {}
function var3.reportSaveCancel(arg1)
   if arg1 then
      local var0 = "FilePublishPlaceAsCancel"
   else
      local var0 = "FileSavePlaceAsCancel"
   end
   local var0 = {}
   var0.userId = var1:GetUserId()
   var0.studioSid = var0:GetSessionId()
   if var1:GetPlaceIsPersistedToCloud() then
      local var42 = var2.Dictionary
      var42 = var0
      local var44 = {}
      var44.placeId = game.PlaceId
      var0 = var42.join(var42, var44)
   end
   var0:SendEventDeferred("studio", "TeamCreate", var51, var0)
end

return var3
