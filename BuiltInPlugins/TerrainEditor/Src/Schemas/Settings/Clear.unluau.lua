-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Src.Util.ApplyById)
local var2 = require(var0.Src.Types)
local var3 = var2.Categories
local var4 = var2.ClearSettings
local var5 = var3.ClearSettings
local var6 = {}
var4.Clear = var2.Storage.LocalSession
var6.Storage = {}
function var6.Generator(arg1, arg2, arg3, arg4)
   local var281 = {}
   var281.Id = var4.Clear
   var281.Layout = Enum.FillDirection.Vertical
   local var285 = {}
   var285.Label = arg1.Localization:getText(var3.ClearSettings, "ClearButton")
   var285.Type = "Button"
   var281.Schema = var285
   local var292 = {}
   var292.Category = var5
   var292.Data = arg2
   var292.Overrides = arg4
   return var1(arg1, {}, var292)
end

return var6
