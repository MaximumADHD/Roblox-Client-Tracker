-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Parent.Parent.Packages.Framework).Util.Action(script.Name, function(arg1, arg2)
   if type(arg1) == "boolean" then
      local var0 = false
   end
   assert(true, "SetCanManageAsset expects a boolean.")
   if type(arg2) == "number" then
      local var0 = false
   end
   assert(true, "SetCanManageAsset expects an asset id.")
   local var0 = {}
   var0.canManage = arg1
   var0.assetId = arg2
   return var0
end)
