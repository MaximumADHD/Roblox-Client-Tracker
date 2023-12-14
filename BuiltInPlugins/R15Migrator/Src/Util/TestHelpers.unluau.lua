-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("InsertService")
local var1 = {}
function var1.CreateScriptWithSource(arg1, arg2)
   local var0 = Instance.new("Script")
   var0.Source = arg2
   return var0
end

function var1.GetSourceFromLocalFileContents(arg1, arg2)
   return var0:GetLocalFileContents("rbxasset://avatar/unification/testScripts/" ... arg2 ... ".lua")
end

function var1.InsertTestScript(arg1, arg2)
   return arg1:CreateScriptWithSource(arg1:GetSourceFromLocalFileContents(arg2))
end

return var1
