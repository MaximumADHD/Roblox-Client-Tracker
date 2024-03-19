-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Models.AssetInfo)
local var2 = require(var0.Core.Types.SubsequentDialogStatus)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1, arg2)
   local var0 = {}
   var0.assetData = arg1
   var0.status = arg2
   return var0
end)
