-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Cryo)
return function(arg1)
   local function var0(arg1, arg2)
      arg2 = arg2 or {}
      local var17 = {}
      local var19 = game.PlaceId
      var17.placeId = var19
      var17.calledFrom = arg1
      var19 = arg2
      local var0 = "TagEditorUsage"
      local var1 = var0.Dictionary.join(var17, var19)
      local var2 = game:GetFastInt("ReportTagEditorEventsThrottleHundrethsPercent2")
      arg1:ReportInfluxSeries()
   end
   
   local function fun0(arg1)
      arg1:ReportCounter(arg1)
   end
   
   local var1 = {}
   function var1.opened()
      var0("Opened")
   end
   
   function var1.worldVisualization()
      var0("WorldVisualization")
   end
   
   function var1.colorChanged()
      var0("ColorChanged")
   end
   
   function var1.iconChanged()
      var0("IconChanged")
   end
   
   function var1.tagCreated()
      var0("TagCreated")
   end
   
   function var1.objectTagged()
      var0("ObjectTagged")
   end
   
   function var1.toggleWidget()
      arg1:ReportCounter("TagEditorToggleWidget")
   end
   
   function var1.openWidget()
      arg1:ReportCounter("TagEditorOpenWidget")
   end
   
   function var1.closeWidget()
      arg1:ReportCounter("TagEditorCloseWidget")
   end
   
   return var1
end
