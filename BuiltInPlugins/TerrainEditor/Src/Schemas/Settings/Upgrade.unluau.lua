-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Src.Util.ApplyById)
local var2 = require(var0.Src.Types)
local var3 = var2.Upgrades
local var4 = var2.Categories.Upgrades
local var5 = game:GetFastString("Shorelines_LearnMoreUrl")
local var6 = {}
var3.Shorelines = var2.Storage.LocalSession
var6.Storage = {}
function var6.Generator(arg1, arg2, arg3, arg4)
   local var32 = {}
   var32.Id = var3.Shorelines
   local var35 = {}
   var35.Id = var3.Shorelines
   var35.Type = "Upgrade"
   var35.URL = var5
   var32.Schema = var35
   local var40 = {}
   var40.Category = var4
   var40.Data = arg2
   var40.Overrides = arg4
   return var1(arg1, {}, var40)
end

return var6
