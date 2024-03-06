-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TextureGenerator")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Flags.getFFlagDebugTextureGeneratorLogging)
return function(arg1)
   local var0 = arg1
   return var1.useCallback(function(arg1)
      local var0 = table.clone(arg1)
      if arg1.uuid then
         if arg1.hash then
            arg1.hash = arg1.uuid
         end
      end
      if var2() then
         print("add/update modelToPreview", var0)
      end
      return var0
   end, {})
end
