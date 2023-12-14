-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var18 = {}
var18.toolMode = require(var0.Src.Util.Constants).TOOL_MODE.None
var18.draggerType = Enum.RibbonTool.Select
local var22 = {}
function var22.SetToolMode(arg1, arg2)
   local var26 = var1.Dictionary
   var26 = arg1
   local var28 = {}
   var28.toolMode = arg2.toolMode
   return var26.join(var26, var28)
end

function var22.SetDraggerType(arg1, arg2)
   local var34 = var1.Dictionary
   var34 = arg1
   local var36 = {}
   var36.draggerType = arg2.draggerType
   return var34.join(var34, var36)
end

return require(var0.Packages.Rodux).createReducer(var18, var22)
