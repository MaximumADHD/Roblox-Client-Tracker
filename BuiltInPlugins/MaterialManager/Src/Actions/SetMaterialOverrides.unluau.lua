-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1, arg2)
   if type(arg2) == "table" then
      local var0 = false
   end
   local var0 = true
   local var1 = `Expected overrides to be a table, received {type(arg2)}`
   assert()
   local var2 = {}
   var2.Material = arg1
   var2.Overrides = arg2
   return var2
end)
