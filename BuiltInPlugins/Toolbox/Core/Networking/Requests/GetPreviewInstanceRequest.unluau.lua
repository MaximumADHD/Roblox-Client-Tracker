-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Core.Util
local var2 = require(var1.PreviewModelGetter)
local var3 = require(var1.DebugFlags)
local var4 = require(var0.Core.Actions.SetPreviewModel)
local var5 = require(var0.Packages.Framework).SharedFlags.getFFlagModelPreviewThumbnailFallback
return function(arg1, arg2)
   return function(arg1)
      local var0 = var2(arg1)
      var5:dispatch()
   end
end
