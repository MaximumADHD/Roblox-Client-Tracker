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
      local var31 = var2.Dictionary
      var31 = var0
      local var33 = {}
      var33.placeId = game.PlaceId
      var0 = var31.join(var31, var33)
   end
   var0:SendEventDeferred("studio", "TeamCreate", var40, var0)
end

return var3
