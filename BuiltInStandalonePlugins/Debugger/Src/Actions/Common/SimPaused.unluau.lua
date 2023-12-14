-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Models.DebuggerStateToken)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1, arg2, arg3)
   local var0 = {}
   var0.debuggerStateToken = arg1
   var0.threadId = arg2
   var0.hitException = arg3
   return var0
end)
