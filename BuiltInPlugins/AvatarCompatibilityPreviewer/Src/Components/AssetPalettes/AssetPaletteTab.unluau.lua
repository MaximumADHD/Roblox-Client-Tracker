-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Packages.React)
local var4 = var2.UI.SimpleTab
local function fun0(arg1)
   local var342 = var1.Dictionary
   var342 = arg1
   local var344 = {}
   var344.Style = "AssetPaletteTab"
   local var0 = {}
   var0.BackgroundTransparency = 1
   var344.WrapperProps = var0
   return var3.createElement(var4, var342.join(var342, var344))
end

local var5 = require(var0.Src.Flags.getFFlagAvatarPreviewerPickTabsMenu)()
if var5 then
   function var5(arg1)
      local var342 = var1.Dictionary
      var342 = arg1
      local var344 = {}
      var344.Style = "AssetPaletteTab"
      local var0 = {}
      var0.BackgroundTransparency = 1
      var344.WrapperProps = var0
      return var3.createElement(var4, var342.join(var342, var344))
   end
   
   return var2.Wrappers.withForwardRef(var5)
end
return fun0
