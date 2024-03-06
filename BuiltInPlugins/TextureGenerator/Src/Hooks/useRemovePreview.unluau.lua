-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TextureGenerator")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Flags.getFFlagDebugTextureGeneratorLogging)
return function(arg1)
   local var0 = arg1
   return var1.useCallback(function(arg1)
      local var0 = table.clone(arg1)
      arg1 = nil
      if var2() then
         print("remove previewTable", var0)
      end
      return var0
   end, {})
end
