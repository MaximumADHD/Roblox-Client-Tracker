-- Generated with Unluau (https://github.com/valencefun/unluau)
local var11 = script.Parent.Parent.Parent.Src.Util
local var1 = require(var11.TerrainEnums).PlaneLockType
var11 = require(script.Parent.Action)
return var11(script.Name, function(arg1)
   if type(arg1) == "string" then
      local var0 = false
   end
   local var0 = true
   local var1 = `Expected planeLock to be a string, received {type(arg1)}`
   assert()
   local var2 = {}
   var2.planeLock = arg1
   return var2
end)
