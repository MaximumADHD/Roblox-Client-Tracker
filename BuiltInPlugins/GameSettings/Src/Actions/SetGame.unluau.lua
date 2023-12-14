-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script.Parent.Parent.Parent.Packages.Framework).Util
var8 = var8.Action
return var8(script.Name, function(arg1)
   local var0 = false
   if typeof(arg1) == "Instance" then
      local var0 = arg1:IsA("DataModel")
   end
   local var23 = " requires game to be a DataModel, not %s"
   var23 = arg1
   local var1 = string.format(script.Name ... var23, typeof(var23))
   assert()
   local var2 = {}
   var2.game = arg1
   return var2
end)
