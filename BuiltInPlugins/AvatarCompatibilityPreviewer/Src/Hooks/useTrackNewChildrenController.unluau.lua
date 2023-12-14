-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Types)
local var2 = require(var0.Src.Hooks.useAddInstancesToUserCatalogAndEquip)
local var3 = require(var0.Src.Hooks.useEventConnection)
return function(arg1)
   local var0 = var2()
   local var1 = var0
   local var2 = arg1
   var3(arg1.ChildAdded, function(arg1)
      local var0 = arg1
      var0({})
   end, {})
end
