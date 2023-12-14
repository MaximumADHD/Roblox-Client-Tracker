-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Packages.Dash)
local var3 = require(var0.Packages.MaterialFramework).Context.StudioServices
local var4 = require(var0.Packages.React).useEffect
local var5 = require(var0.Src.Flags.getFFlagMaterialGeneratorNewUI)
function MaterialVariantProvider(arg1)
   assert(var5(), "Expected FFlagMaterialGeneratorNewUI to be true")
   local var0 = var3.use():getServiceInstance("MaterialService")
   local var1 = arg1.FolderName
   local var2 = arg1.Materials
   var4(function(arg1)
      return arg1.MaterialVariant
   end, {})
end

return MaterialVariantProvider
