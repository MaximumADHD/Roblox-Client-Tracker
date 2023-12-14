-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1, arg2)
   if type(arg1) == "string" then
      local var0 = false
   end
   local var23 = true
   local var29 = `Expected paneName to be a string, received {type(arg1)}`
   assert()
   if type(arg2) == "boolean" then
      local var0 = false
   end
   local var2 = true
   local var3 = `Expected expandedPaneState to be a boolean, received {type(arg2)}`
   assert()
   local var4 = {}
   var4.PaneName = arg1
   var4.ExpandedPaneState = arg2
   return var4
end)
