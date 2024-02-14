-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.Framework).Util.deepCopy
local var2 = require(var0.Packages.Cryo)
local var3 = var0.Src.Util
local var4 = require(var3.SaveInterface)
local var5 = require(var3.AnimationConversion.constants).AssetType
local var6 = require(var3.ScriptHistory.revertScripts)
local var7 = require(var3.ScriptConversionProgressTracker)
local var8 = require(var0.Src.Actions.SetAnimations)
return function(arg1)
   return function()
      var1:updateProgress()
   end
end
