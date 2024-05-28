-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("MaterialGenerator")
local var1 = require(var0.Src.Util.Constants)
local var2 = require(var0.Src.Flags.getFIntMaterialGeneratorSampleCount)
return function()
   local var0 = var2()
   if 0 < var0 then
      return var0
   end
   return var1.GENERATION_SAMPLES
end
