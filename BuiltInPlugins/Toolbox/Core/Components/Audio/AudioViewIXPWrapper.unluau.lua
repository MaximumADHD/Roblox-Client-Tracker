-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Core.ContextServices.IXPContext)
local var3 = require(var0.Core.Components.Audio.AudioViewWrapper)
local var4 = require(var0.Core.Components.Audio.AudioWrapper)
local var5 = require(var0.Core.Util.SharedFlags.getIXPEnabledForAudioDiscoveryUX)
return function(arg1)
   if var5(var2:use()) then
      return var1.createElement(var3, arg1)
   end
   return var1.createElement(var4, arg1)
end
