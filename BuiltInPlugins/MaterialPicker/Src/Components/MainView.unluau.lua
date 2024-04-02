-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("MaterialPicker")
local var1 = require(var0.SharedPluginConstants)
local var2 = require(var0.Src.Constants.BASE_MATERIALS)
local var3 = require(var0.Src.Util.applyToSelection)
local var4 = require(var0.Packages.Dash)
local var5 = require(var0.Packages.Framework)
local var6 = require(var0.Packages.MaterialFramework)
local var7 = require(var0.Packages.React)
local var8 = var4.append
local var9 = var4.copy
local var10 = var4.filter
local var11 = var4.keys
local var12 = var5.Style.Stylizer
local var13 = var5.ContextServices.Localization
local var14 = var6.Context.StudioServices
local var15 = var6.Components.MaterialGrid
local var16 = var6.Util.levenshteinDistance
local var17 = var6.Util.getSerializedMaterialIdentifier
local var18 = var6.Enums.ViewType
local var19 = var7.createElement
local var20 = var7.useRef
local var21 = var7.useEffect
local var22 = var7.useState
local var23 = var5.UI
local var24 = var23.IconButton
local var25 = var23.Pane
local var26 = var23.ScrollingFrame
local var27 = var23.SearchBar
local var28 = require(script.Parent.Parent.Resources.createTheme)
local var29 = require(script.Parent.FilterChip)
local var30 = {}
var30.recents = false
var30.appliedInPlace = false
var30.customMaterials = false
local function fun0(arg1, arg2)
   local var0 = arg1:GetSetting("RecentlyUsed") or {}
   local var1 = var17(arg2)
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
   local var0 = var13
end

return MainView
