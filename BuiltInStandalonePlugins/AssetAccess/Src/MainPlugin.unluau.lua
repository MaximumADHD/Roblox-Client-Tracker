-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetAccess")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var3.Analytics
local var5 = var3.Design
local var6 = var3.Localization
local var7 = var3.Mouse
local var8 = var3.Plugin
local var9 = var2.Style.Themes.StudioTheme
local var10 = var2.Styling.registerPluginStyles
local var11 = var0.Src.Resources.Localization.SourceStrings
local var12 = var0.Src.Resources.Localization.LocalizedStrings
local var13 = require(var0.Src.Components.ShareDialogView)
local function fun0(arg1)
   local var0 = arg1
   return var1.useMemo(function()
      return var10(arg1)
   end, {})
end

local function var14(arg1, arg2)
   local var68 = arg2
   local var90 = arg1:GetMouse()
   local var99 = arg1
   local var2 = {}
   var2.Analytics = var1.useMemo(function()
      return var4.new(function()
         return {}
      end, {})
   end, {})
   var2.Design = var1.useMemo(function(arg1)
      local var0 = arg1
      return var1.useMemo(function()
         return var10(arg1)
      end, {})
   end, {})
   var2.Localization = var1.useMemo(function()
      local var74 = {}
      var74.stringResourceTable = var11
      var74.translationResourceTable = var12
      var74.pluginName = "AssetAccess"
      return var6.new(var74)
   end, {})
   var2.Mouse = var1.useMemo(function()
      return var4.new(function()
         return {}
      end, {})
   end, {})
   var2.Plugin = var1.useMemo(function()
      return var8.new(arg1)
   end, {})
   var2.Stylizer = var1.useMemo(function()
      return var9.new()
   end, {})
   return var2
end

return function(arg1)
   local var0 = arg1.Plugin
   local var117 = var0
   var117 = var1.useMemo(function()
      return var10(arg1)
   end, {})
   local var122 = var3
   var122 = var14(var0, var117)
   local var1 = var1.createElement(var13)
   return var122.provide(var122, {})
end
