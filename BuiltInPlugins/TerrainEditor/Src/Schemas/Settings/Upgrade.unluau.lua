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
   local var703 = {}
   var703.Id = var3.Shorelines
   local var706 = {}
   var706.Id = var3.Shorelines
   var706.Type = "Upgrade"
   var706.URL = var5
   var703.Schema = var706
   local var711 = {}
   var711.Category = var4
   var711.Data = arg2
   var711.Overrides = arg4
   return var1(arg1, {}, var711)
end

return var6
