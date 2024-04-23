-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Src.Reducers.Preview)
local var19 = {}
var19.Preview = var1
if require(var0.Src.Flags.getFFlagAssetImportRefactorReducer)() then
   return require(var0.Packages.Rodux).combineReducers(var19)
end
return var1
