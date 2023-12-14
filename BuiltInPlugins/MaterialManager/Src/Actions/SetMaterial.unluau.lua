-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   local var0 = true
   local var1 = `Expected material to be a table, received {type(arg1)}`
   assert()
   local var2 = {}
   var2.Material = arg1
   return var2
end)
