-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.TestHelpers.createMockMaterialGenerationService)
return function()
   local var0 = var0():StartSession()
   return var0var0:GenerateImagesAsync("test", {}),
end
