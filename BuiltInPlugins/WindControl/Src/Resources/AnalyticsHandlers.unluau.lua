-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.AnalyticsGlobals)
return function(arg1)
   local function var0(arg1, arg2, arg3)
      arg3 = arg3 or {}
      local var748 = {}
      local var750 = game.PlaceId
      var748.placeId = var750
      var750 = arg3
      arg1:SendEventDeferred("studio", arg2, arg1, var1.Dictionary.join(var748, var750))
   end
   
   local var1 = {}
   function var1.openedFromRibbon()
      var0("windsockOrigin", "ribbon")
   end
   
   function var1.openedFromProperties()
      var0("windsockOrigin", "properties")
   end
   
   function var1.usageReport(arg1)
      if arg1 then
         local var0 = "widgetDisabled"
      else
         local var0 = "placeClosing"
      end
      if 0 < var2:totalCount() then
         local var775 = {}
         var775.textFieldCount = var2.textFieldCount
         var775.sliderCount = var2.sliderCount
         var775.greenCircleCount = var2.greenCircleCount
         var0("windsockUsage", var774, var775)
         var2:reset()
      end
   end
   
   return var1
end
