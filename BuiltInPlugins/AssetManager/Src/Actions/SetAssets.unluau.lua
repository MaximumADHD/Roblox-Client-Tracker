-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var12 = require(var0.Packages.Framework).Util
var12 = var12.Action
return var12(script.Name, function(arg1, arg2)
   if type(arg1) == "table" then
      local var0 = false
   end
   local var22 = true
   local var28 = string.format("SetAssets requires a table, not %s", type(arg1))
   assert()
   local var2 = arg1.assets
   local var3 = arg1.nextPageCursor
   local var4 = arg1.previousPageCursor
   local var5 = arg1.pageNumber
   if type(var2) == "table" then
      local var0 = false
   end
   local var38 = true
   local var44 = string.format("SetAssets requires a places table, not %s", type(var2))
   assert()
   if var3 then
      if type(var3) == "string" then
         local var0 = false
      end
      local var0 = true
      local var1 = string.format("SetAssets requires a string, not %s", type(var3))
      assert()
   end
   if var4 then
      if type(var4) == "string" then
         local var0 = false
      end
      local var0 = true
      local var1 = string.format("SetAssets requires a string, not %s", type(var4))
      assert()
   end
   if var5 then
      if type(var5) == "number" then
         local var0 = false
      end
      local var0 = true
      local var1 = string.format("SetAssets requires a number, not %s", type(var5))
      assert()
   end
   if arg2 then
      if type(arg2) == "number" then
         local var0 = false
      end
      local var0 = true
      local var1 = string.format("SetAssets requires index to be a number, not %s", type(arg2))
      assert()
   end
   local var8 = {}
   local var9 = {}
   var9.assets = var2
   var44 = var3
   local var98 = var44 or var1.None
   var9.nextPageCursor = var98
   var98 = var4
   local var101 = var98 or var1.None
   var9.previousPageCursor = var101
   var101 = var5
   local var104 = var101 or var1.None
   var9.pageNumber = var104
   if arg2 == "type" then
      var104 = arg2
      local var0 = var104 or nil
   end
   var9.index = nil
   var8.assetsTable = var9
   return var8
end)
