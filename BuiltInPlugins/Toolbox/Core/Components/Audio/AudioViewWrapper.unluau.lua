-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Packages.React)
local var4 = require(var0.Core.Components.Audio.AudioView)
local var5 = require(var0.Core.Types.Category)
local var6 = require(var0.Core.Hooks.useCategorySections)
local var7 = require(var0.Core.Types.HomeTypes)
local var8 = require(var0.Core.Types.AudioTypes)
local var9 = {}
var9.InitialPageSize = 10
return function(arg1)
   local var45 = var1
   var45 = arg1
   local var1 = var45.Dictionary.join(var9, var45)
   local var2 = var6(var5.FREE_AUDIO, var1.InitialPageSize)
   local var76 = var1.OnClickSeeAllSubcategories
   local var77 = var1.OnClickSeeAllAssets
   local var78 = var1.CategoryName
   local var5 = var1.SortName
   local var6 = var1.CategoryName
   local var7 = var1.SortName
   if var2 then
      if 0 < var2 then
         local var102 = {}
         var102.Sections = var2
         var102.PageSize = var1.InitialPageSize
         var102.OnSeeAllActivated = var3.useCallback(function(arg1)
            local var0 = arg1.Section.subcategory
            if var0 then
               var1.OnClickSeeAllSubcategories(var0.children, var1.CategoryName, var1.SortName)
            end
            var1.OnClickSeeAllAssets(arg1.Section.name, var1.CategoryName, var1.SortName)
         end, {})
         var102.OnSwimlaneTileActivated = var3.useCallback(function(arg1)
            var1.OnClickSubcategory(arg1.name, arg1, var1.CategoryName, var1.SortName, arg1.queryParams)
         end, {})
         local var0 = {}
         var0.CanInsertAsset = var1.CanInsertAsset
         var0.LogAssetImpression = var1.LogAssetImpression
         var0.OnAssetPreviewButtonClicked = var1.OnAssetPreviewButtonClicked
         var0.TryInsert = var1.TryInsert
         var0.TryOpenAssetConfig = var1.TryOpenAssetConfig
         var102.AssetLogicWrapperProps = var0
         return var3.createElement(var4, var102)
      end
   end
   return nil
end
