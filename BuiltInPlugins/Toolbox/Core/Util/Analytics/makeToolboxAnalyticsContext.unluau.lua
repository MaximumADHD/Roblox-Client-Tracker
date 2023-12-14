-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).ContextServices.Analytics
local var2 = require(var0.Core.Util.Analytics.Senders)
local function var3(arg1, arg2)
   var2.sendEventDeferred("studio", "Marketplace", arg1, arg2)
end

return function()
   return var1.new(function(arg1)
      local var0 = {}
      var0.AssetPreviewPlaySound = var3
      var0.AssetPreviewPauseSound = var3
      var0.AssetPreviewPlayVideo = var3
      var0.AssetPreviewPauseVideo = var3
      return var0
   end)
end
