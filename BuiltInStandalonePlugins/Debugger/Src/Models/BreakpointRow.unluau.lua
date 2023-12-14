-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Util.Constants)
local var2 = require(var0.Src.Models.MetaBreakpoint)
local var3 = {}
function var3.extractNonChildData(arg1, arg2, arg3)
   local var0 = {}
   var0.id = arg1.id
   var0.isEnabled = arg1.isEnabled
   var0.isValid = arg1.isValid
   var0.lineNumber = arg1.lineNumber
   var0.scriptName = ""
   var0.scriptLine = arg1.scriptLine
   var0.condition = arg1.condition
   var0.logMessage = arg1.logMessage
   var0.continueExecution = arg1.continueExecution
   var0.debugpointType = arg1.debugpointType
   var0.removeOnHit = arg1.removeOnHit
   var0.context = arg2
   var0.scriptGUID = arg3
   return var0
end

return var3
