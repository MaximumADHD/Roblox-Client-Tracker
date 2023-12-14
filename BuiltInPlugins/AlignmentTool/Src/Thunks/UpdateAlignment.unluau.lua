-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("ChangeHistoryService")
local var1 = game:GetService("Selection")
local var2 = script.Parent.Parent.Parent
local var3 = require(var2.Src.Actions.SetAlignEnabled)
local var4 = require(var2.Src.Utility.RelativeTo)
local var5 = require(var2.Src.Utility.alignObjects)
local var6 = require(var2.Src.Types)
return function(arg1)
   return function(arg1)
      local var0 = arg1:getState()
      local var1 = var0.alignableObjects
      local var2 = var0.alignmentMode
      local var3 = var0.alignmentSpace
      local var4 = var0.enabledAxes
      local var5 = var0.relativeTo
      local var41 = var4
      if var5 == "Mode" then
         local var0 = var1.ActiveInstance
      end
      var41 = var1
      var5(var41, var3, var4, var2, nil)
      local var6 = {}
      var6.Mode = var2
      var6.Axes = var4
      var6.CoordinateSpace = var3
      var6.RelativeTo = var5
      arg1:report("useAlignTool", var1, var6)
      var0:SetWaypoint("Align Objects")
      local var7 = var3(false)
      arg1:dispatch()
   end
end
