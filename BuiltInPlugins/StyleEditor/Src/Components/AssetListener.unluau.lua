-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("MemStorageService")
local var1 = game:GetService("HttpService")
local var2 = script.Parent.Parent.Parent
local var3 = require(var2.Packages.React).useEffect
local var4 = require(var2.Src.Hooks.useDispatch)
local var5 = require(var2.Src.Thunks.Asset.LoadBuiltinFonts)
local var6 = require(var2.Src.Thunks.Asset.LoadToolboxFonts)
local var7 = require(var2.Src.Thunks.Asset.LoadFontFamilyInfo)
local var8 = require(var2.Src.Types)
return function()
   local var0 = var4()
   var3(function()
      return var0:JSONDecode(var5)
   end, {})
   return nil
end
