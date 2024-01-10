-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Actions.SetProcessResult)
local var2 = require(var0.Src.Util.ScriptReplacement)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
   return function(arg1)
      var2.replaceWithSuggestion(arg1, arg2, arg3, arg4, arg1:getState().ScriptConversion.diagnostics[arg1], arg8)
      if arg7 then
         local var145 = {}
         var145.scriptInstance = arg3:getScriptInstanceFromGUID(arg1):GetFullName()
         local var0 = var1(var145)
         arg1:dispatch()
      end
   end
end
