-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("MaterialPicker")
local var1 = require(var0.SharedPluginConstants)
local var2 = require(var0.Src.Constants.BASE_MATERIALS)
local var3 = require(var0.Src.Util.applyToSelection)
local var4 = require(var0.Src.Util.isMaterialVariantByIdentifier)
local var5 = require(var0.Src.Util.setCurrentMaterial)
local var6 = require(var0.Packages.Dash)
local var7 = require(var0.Packages.Framework)
local var8 = require(var0.Packages.MaterialFramework)
local var9 = require(var0.Packages.React)
local var10 = var6.append
local var11 = var6.copy
local var12 = var6.filter
local var13 = var6.keys
local var14 = var7.Style.Stylizer
local var15 = var7.ContextServices
local var16 = var15.Analytics
local var17 = var15.Localization
local var18 = var8.Context.StudioServices
local var19 = var8.Components.MaterialGrid
local var20 = var8.Util.levenshteinDistance
local var21 = var8.Util.getSerializedMaterialIdentifier
local var22 = var8.Enums.ViewType
local var23 = var9.createElement
local var24 = var9.useRef
local var25 = var9.useEffect
local var26 = var9.useState
local var27 = var7.UI
local var28 = var27.IconButton
local var29 = var27.Pane
local var30 = var27.ScrollingFrame
local var31 = var27.SearchBar
local var32 = require(script.Parent.Parent.Resources.createTheme)
local var33 = require(script.Parent.FilterChip)
local var34 = require(var0.Src.Flags.getFFlagInsertPartWithMaterial)
local var35 = require(var0.Src.Flags.getFFlagEnableMaterialGenerator)
local var36 = {}
var36.recents = false
var36.appliedInPlace = false
var36.customMaterials = false
local function fun0(arg1, arg2)
   local var0 = arg1:GetSetting("RecentlyUsed")
   if not var0 then
      local var0 = {}
      local var1 = "Plastic"
   end
   local var1 = var21(arg2)
   local var2 = table.find(var0, var1)
   if var2 then
      table.remove(var0, var2)
   end
   table.insert(var0, var1)
   local var3 = 9999
   if var3 < var0 then
      var3 = var0
      table.remove(var3, 1)
   end
   arg1:SetSetting("RecentlyUsed", var0)
end

function MainView()
   local var0 = var17
end

return MainView
