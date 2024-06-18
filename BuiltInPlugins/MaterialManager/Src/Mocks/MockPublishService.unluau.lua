-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).Util.Promise
local var1 = {}
var1.__index = var1
function var1.new()
   local var0 = {}
   setmetatable(var0, var1)
   return var0
end

function var1.CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsync_Impl(arg1, ...)
   local var0 = {}
   var0.AssetId = "123"
   return var0
end

function var1.CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsync(arg1, ...)
   local var0 = {}
   local var256 = ...
   return var0.new(function()
      local var0 = {}
      setmetatable(var0, var1)
      return var0
   end)
end

return var1
