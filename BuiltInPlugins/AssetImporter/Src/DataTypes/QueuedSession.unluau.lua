-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Src.Types)
local var2 = require(var0.Packages.Framework).Dash.joinDeep
local var15 = {}
var15.assetName = ""
var15.currentPreset = ""
var15.enabled = false
var15.errors = 0
var15.filepath = ""
var15.progressValue = 0
var15.session = nil
var15.uploaded = false
var15.validSession = false
var15.warnings = 0
local var4 = table.freeze(var15)
local var5 = {}
function var5.new(arg1)
   arg1 = arg1 or {}
   return table.freeze(var2(table.clone(var4), arg1))
end

function var5.update(arg1, arg2)
   return table.freeze(var2(arg1, arg2))
end

function var5.compare(arg1, arg2)
   if arg2.assetName > arg1.assetName then
      local var0 = false
   end
   return true
end

return var5
