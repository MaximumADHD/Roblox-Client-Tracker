-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Workspace")
local var1 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var2 = require(var1.Packages.React)
local var3 = require(var1.Src.Util.Constants)
local var4 = require(var1.Src.Types)
local var5 = require(var1.Src.Hooks.useCopyPropertyChanges)
local var6 = require(var1.Src.Hooks.useBodyPartsFromBase)
local var7 = require(var1.Src.Hooks.useClothingFromInstances)
local var8 = require(var1.Src.Hooks.useDummyFromHumanoidDescription)
local var9 = require(var1.Src.Hooks.useMoveAccessoriesAlongsideAttachments)
local var10 = require(var1.Src.Hooks.usePreviewHumanoidDescription)
local function var11(arg1)
   var7(arg1.dummy)
end

return function(arg1)
   local var56 = {}
   var56.WorldModel = arg1.base
   local var59 = {}
   var59.includeAccessories = arg1.includeAccessories
   local var1 = var8(arg1.base, var10(var56, {}, var59))
   var6(var1, arg1.base)
   var9(var1)
   var5(var1, arg1.base)
   local var2 = var1
   local var3 = arg1.setClonedDummy
   var2.useEffect(function(arg1)
      var7(arg1.dummy)
   end, {})
   local var4 = var1
   if var4 then
      if arg1.includeAccessories then
         local var87 = {}
         var87.dummy = var1
         local var0 = var2.createElement(var11, var87)
      end
   end
   return var4
end
