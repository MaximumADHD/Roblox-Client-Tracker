-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Util.deepCopy)
local var2 = require(var0.Packages.Cryo)
local var3 = require(var0.Src.Util.AnimationData)
local var4 = require(var0.Src.Util.TrackUtils)
local var5 = require(var0.Src.Thunks.UpdateAnimationData)
local var6 = require(var0.Src.Actions.SetAnimationData)
return function(arg1, arg2, arg3)
   return function(arg1)
      arg1.Keyframes = {}
      arg1.Data = {}
   end
end
