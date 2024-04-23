-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Core.ContextServices.IXPContext)
local var3 = require(var0.Core.Components.Audio.AudioViewWrapper)
local var4 = require(var0.Core.Components.Audio.AudioWrapper)
local var5 = require(var0.Core.Util.SharedFlags.getIXPEnabledForAudioDiscoveryUX)
local var6 = require(var0.Core.Flags.getFFlagToolboxCleanupAudioDiscoveryExperiment)
return function(arg1)
   local var38 = var6()
   local var44 = `{script.Name}is marked for removal`
   var38 = var44
   assert(var38, var38)
   if var5(var2:use()) then
      var44 = arg1
      return var1.createElement(var3, var44)
   end
   var44 = arg1
   return var1.createElement(var4, var44)
end
