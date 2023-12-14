-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1, arg2)
   if type(arg2) == "number" then
      local var0 = false
   end
   local var0 = true
   local var1 = `Expected index to be a number, received {type(arg2)}`
   assert()
   local var2 = {}
   var2.Index = arg2
   var2.Material = arg1
   return var2
end)
