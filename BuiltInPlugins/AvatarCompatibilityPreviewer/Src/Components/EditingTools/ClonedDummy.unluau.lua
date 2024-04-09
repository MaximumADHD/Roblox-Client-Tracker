-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Workspace")
local var1 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var2 = require(var1.Packages.React)
local var3 = require(var1.Src.Util.Constants)
local var4 = require(var1.Src.Types)
local var5 = require(var1.Src.Components.EditingTools.useBindFocusOnPVInstance)
local var6 = require(var1.Src.Hooks.useBodyPartsFromBase)
local var7 = require(var1.Src.Hooks.useClothingFromInstances)
local var8 = require(var1.Src.Hooks.useCopyPropertyChanges)
local var9 = require(var1.Src.Hooks.useDummyFromHumanoidDescription)
local var10 = require(var1.Src.Hooks.useMoveAccessoriesAlongsideAttachments)
local var11 = require(var1.Src.Hooks.usePreviewHumanoidDescription)
local function var12(arg1)
   var7(arg1.dummy)
end

local function var13(arg1)
   var5(arg1.dummy)
end

return function(arg1)
   local var65 = {}
   var65.WorldModel = arg1.base
   local var68 = {}
   var68.includeAccessories = arg1.includeAccessories
   local var1 = var9(arg1.base, var11(var65, {}, var68))
   var6(var1, arg1.base)
   var10(var1)
   var8(var1, arg1.base)
   local var89 = var1
   local var2 = arg1.setClonedDummy
   var2.useEffect(function(arg1)
      var7(arg1.dummy)
   end, {})
   local var96 = {}
   var2 = var1
   if var2 then
      if arg1.includeAccessories then
         local var101 = {}
         var101.dummy = var1
         local var0 = var2.createElement(var12, var101)
      end
   end
   var96.GiveDummyInstancesClothing = var2
   var2 = var1
   if var2 then
      local var106 = {}
      var106.dummy = var1
      local var0 = var2.createElement(var13, var106)
   end
   var96.BindFocusOnPVInstance = var2
   return var2.createElement(var2.Fragment, {}, var96)
end
