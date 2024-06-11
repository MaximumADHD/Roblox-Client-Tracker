-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Src.DataTypes.QueuedSession)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1)
   local var0 = {}
   var0.queueItem = arg1
   return var0
end)
