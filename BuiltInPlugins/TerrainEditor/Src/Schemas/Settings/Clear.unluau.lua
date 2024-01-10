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
   local var266 = {}
   var266.Id = var4.Clear
   var266.Layout = Enum.FillDirection.Vertical
   local var270 = {}
   var270.Label = arg1.Localization:getText(var3.ClearSettings, "ClearButtonLabel")
   var270.Type = "Button"
   var266.Schema = var270
   local var277 = {}
   var277.Category = var5
   var277.Data = arg2
   var277.Overrides = arg4
   return var1(arg1, {}, var277)
end

return var6
