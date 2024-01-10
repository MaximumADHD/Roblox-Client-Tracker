-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.deepCopy)
local var3 = require(var0.Src.Util.Constants)
local var4 = require(var0.Src.Util.KeyframeUtils)
local var5 = require(var0.Src.Util.AnimationData)
local var6 = require(var0.Src.Actions.SetSelectedKeyframes)
local var7 = require(var0.Src.Thunks.UpdateAnimationData)
local var8 = require(var0.Src.Util.SelectionUtils)
local var9 = game:DefineFastFlag("ACEFixEmptySelectionScale", false)
local function fun0(arg1)
   return math.floor(arg1 + 0.5)
end

return function(arg1, arg2, arg3)
   return function(arg1)
      return math.floor(arg1 + 0.5)
   end
end
