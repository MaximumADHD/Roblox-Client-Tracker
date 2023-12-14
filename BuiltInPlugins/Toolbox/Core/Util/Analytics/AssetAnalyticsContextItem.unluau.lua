-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Util.Analytics.AssetAnalytics)
local var2 = require(var0.Packages.Framework).ContextServices.ContextItem:extend("AssetAnalytics")
function var2.new(arg1)
   local var0 = {}
   var0.assetAnalytics = arg1 or var1.new()
   setmetatable(var0, var2)
   return var0
end

function var2.get(arg1)
   return arg1.assetAnalytics
end

return var2
