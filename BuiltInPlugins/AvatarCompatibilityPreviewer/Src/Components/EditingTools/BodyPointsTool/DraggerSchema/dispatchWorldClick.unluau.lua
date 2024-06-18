-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.DraggerSchemaTemplate.DraggerSchema)
local var2 = require(var0.Src.Components.EditingTools.BodyPointsTool.Types)
local var3 = require(var0.Src.Components.EditingTools.BodyPointsTool.getHoveringPair)
return function(arg1, arg2, arg3)
   local var0 = var3(arg1)
   if var0 == "selection" then
      arg1.selection:Set(var0)
   end
   local var32 = var1
   var32 = arg1
   return var32.dispatchWorldClick(var32, arg2, arg3)
end
