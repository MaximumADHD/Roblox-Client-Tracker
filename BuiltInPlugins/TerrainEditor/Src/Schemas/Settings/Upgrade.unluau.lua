-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Src.Util.ApplyById)
local var2 = require(var0.Src.Types)
local var3 = var2.UpgradeSettings
local var4 = var2.Category.UpgradeSettings
local var5 = game:GetFastString("Shorelines_LearnMoreUrl")
local var6 = {}
var3.Shorelines = var2.Storage.LocalSession
var6.Storage = {}
function var6.Generator(arg1, arg2, arg3, arg4)
   local var697 = {}
   var697.Id = var3.Shorelines
   local var700 = {}
   var700.Id = var3.Shorelines
   var700.Type = "Upgrade"
   var700.URL = var5
   var697.Schema = var700
   local var705 = {}
   var705.Category = var4
   var705.Data = arg2
   var705.Overrides = arg4
   return var1(arg1, {}, var705)
end

return var6
