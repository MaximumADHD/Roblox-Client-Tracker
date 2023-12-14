-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = var0.Src.Actions
local var3 = {}
var3.ScriptInfo = {}
var3.ScriptLineContents = {}
function require(var2.Common.SetFilenameForGuid).name(arg1, arg2)
   if arg2.fileName == "" then
      if arg1.ScriptInfo[arg2.scriptRefGuid] == "fileName" then
         return arg1
      end
   end
   arg2.scriptRefGuid = arg2.fileName
   local var44 = var1.Dictionary
   var44 = arg1
   local var46 = {}
   var46.ScriptInfo = var1.Dictionary.join(arg1.ScriptInfo, {})
   return var44.join(var44, var46)
end

function require(var2.Common.SetScriptSourceLine).name(arg1, arg2)
   arg2.lineNumber = arg2.source
   arg2.scriptRefGuid = var1.Dictionary.join(arg1.ScriptLineContents[arg2.scriptRefGuid] or {}, {})
   local var71 = var1.Dictionary
   var71 = arg1
   local var73 = {}
   var73.ScriptLineContents = var1.Dictionary.join(arg1.ScriptLineContents, {})
   return var71.join(var71, var73)
end

return require(var0.Packages.Rodux).createReducer(var3, {})
