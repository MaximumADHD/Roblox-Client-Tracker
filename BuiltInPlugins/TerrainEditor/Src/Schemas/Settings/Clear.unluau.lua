-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Src.Util.ApplyById)
local var2 = require(var0.Src.Types)
local var3 = var2.Category
local var4 = var2.ClearSettings
local var5 = var3.ClearSettings
local var6 = {}
var4.Clear = var2.Storage.LocalSession
var6.Storage = {}
function var6.Generator(arg1, arg2, arg3, arg4)
   local var537 = {}
   var537.Id = var4.Clear
   var537.Layout = Enum.FillDirection.Vertical
   local var541 = {}
   var541.Label = arg1.Localization:getText(var3.ClearSettings, "ClearButtonLabel")
   var541.Type = "Button"
   var537.Schema = var541
   local var548 = {}
   var548.Category = var5
   var548.Data = arg2
   var548.Overrides = arg4
   return var1(arg1, {}, var548)
end

return var6
