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
   local var264 = {}
   var264.Id = var4.Clear
   var264.Layout = Enum.FillDirection.Vertical
   local var268 = {}
   var268.Label = arg1.Localization:getText(var3.ClearSettings, "ClearButtonLabel")
   var268.Type = "Button"
   var264.Schema = var268
   local var275 = {}
   var275.Category = var5
   var275.Data = arg2
   var275.Overrides = arg4
   return var1(arg1, {}, var275)
end

return var6
