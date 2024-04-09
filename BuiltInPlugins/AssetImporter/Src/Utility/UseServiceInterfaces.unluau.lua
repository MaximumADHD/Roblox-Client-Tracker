-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Src.Flags.getFFlagAssetImportUseServiceInterfaces2)
local var2 = require(var0.Src.Utility.DebugFlags)
local var3 = var2.RunningUnderCLI() or var2.RunTests()
return function()
   return var1() or var3
end
