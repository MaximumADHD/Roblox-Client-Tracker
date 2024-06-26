-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Packages.React)
local var4 = var2.UI.SimpleTab
local function fun0(arg1)
   local var30 = var1.Dictionary
   var30 = arg1
   local var32 = {}
   var32.Style = "AssetPaletteTab"
   local var0 = {}
   var0.BackgroundTransparency = 1
   var32.WrapperProps = var0
   return var3.createElement(var4, var30.join(var30, var32))
end

local var5 = require(var0.Src.Flags.getFFlagAvatarPreviewerPickTabsMenu)()
if var5 then
   function var5(arg1)
      local var30 = var1.Dictionary
      var30 = arg1
      local var32 = {}
      var32.Style = "AssetPaletteTab"
      local var0 = {}
      var0.BackgroundTransparency = 1
      var32.WrapperProps = var0
      return var3.createElement(var4, var30.join(var30, var32))
   end
   
   return var2.Wrappers.withForwardRef(var5)
end
return fun0
