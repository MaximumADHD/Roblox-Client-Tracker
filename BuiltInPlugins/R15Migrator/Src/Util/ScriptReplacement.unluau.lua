-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("ScriptEditorService")
local var1 = require(script.Parent.Parent.Parent.Src.Util.ScriptAnalysis.Constants)
local var2 = {}
function var2.goToScriptInstance(arg1, arg2)
   if not arg1 then
   end
   var0:OpenScriptDocumentAsync(arg1)
   local var0 = var0:FindScriptDocument(arg1)
   if var0 then
      if not arg2 then
      end
   end
   var0:ForceSetSelectionAsync(arg2[var1.StartKey].line, arg2[var1.StartKey].character, arg2[var1.EndKey].line, arg2[var1.EndKey].character)
   return var0
end

function var2.goToScript(arg1, arg2, arg3)
   if arg1 then
      if not arg3 then
      end
   end
   local var47 = var2
   var47 = arg3:getScriptInstanceFromGUID(arg1)
   return var47.goToScriptInstance(var47, arg2)
end

local function fun0(arg1, arg2, arg3)
   if arg1 then
      if not arg2 then
         return false
      end
   end
   return false
   arg1:EditTextAsync(arg3, arg2[var1.StartKey].line, arg2[var1.StartKey].character, arg2[var1.EndKey].line, arg2[var1.EndKey].character)
   return true
end

function var2.replaceWithSuggestion(arg1, arg2, arg3, arg4)
   local var79 = var2
   var79 = arg1
   local var1 = var79.goToScript(var79, arg2, arg3)
   if var1 then
      if not arg2 then
         return false
      end
   end
   return false
   var1:EditTextAsync(arg4, arg2[var1.StartKey].line, arg2[var1.StartKey].character, arg2[var1.EndKey].line, arg2[var1.EndKey].character)
   return true
end

return var2
