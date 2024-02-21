-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).ContextServices
local var2 = var1.Localization
local var3 = var1.Plugin
local var4 = var0.Src.Actions
local var5 = require(var4.ToggleAddPointTool)
local var6 = require(var4.ToggleAddTangentTool)
local var7 = require(var4.ToggleDone)
local var8 = require(var4.ToggleMirrored)
local var9 = require(var4.ToggleMoveTool)
local var10 = require(var4.ToolbarHovered)
local var11 = var0.Src.Thunks
local var12 = require(var11.AddControlPointTangent)
local var13 = require(var11.ClearControlPointTangent)
local var14 = require(var11.RemoveControlPoint)
local var15 = require(var0.Src.Util.createContextMenu)
local var16 = require(var0.Src.Util.getShortcuts)()
return function(arg1, arg2)
   return function()
      local var0 = arg2(var12)
      var8:dispatch()
   end
end
