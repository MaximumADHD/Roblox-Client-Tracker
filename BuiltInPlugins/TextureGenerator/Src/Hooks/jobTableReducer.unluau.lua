-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TextureGenerator")
local var1 = require(var0.Packages.Dash)
local var2 = require(var0.Src.Util.Constants)
return function(arg1, arg2)
   assert(arg2.action and arg2.uuid, "Action must have action and uuid fields")
   arg1 = table.clone(arg1)
   if arg2.action == "assert" then
      assert(arg2.data, "Action must have data field")
      if not arg1[arg2.uuid] then
         arg2.uuid = {}
      end
      arg2.uuid = var1.join(arg1[arg2.uuid], arg2.data)
      return arg1
   end
   local var42 = var2
   local var44 = var42.GENERATION_ACTIONS.REMOVE
   if arg2.action == "assert" then
      arg2.uuid = nil
      return arg1
   end
   var44 = `Invalid action: {var42}`
   error(var44)
   return arg1
end
