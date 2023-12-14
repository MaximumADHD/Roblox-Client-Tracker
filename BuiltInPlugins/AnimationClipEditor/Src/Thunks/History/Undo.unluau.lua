-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Util.Constants)
local var2 = require(var0.Packages.Cryo)
local var3 = require(var0.Src.Actions.SetFuture)
local var4 = require(var0.Src.Actions.SetPast)
local var5 = require(var0.Src.Actions.SetSelectedKeyframes)
local var6 = require(var0.Src.Actions.SetSelectedTracks)
local var7 = require(var0.Src.Actions.SetInReviewState)
local var8 = require(var0.Src.Thunks.SortAndSetTracks)
local var9 = require(var0.Src.Thunks.UpdateAnimationData)
local var10 = require(var0.Src.Util.TrackSelectionUtils)
local var11 = require(var0.LuaFlags.GetFFlagFacialAnimationRecordingInStudio)
return function(arg1)
   return function(arg1, arg2)
      if var11.MaxWaypointSize >= arg2 then
         local var0 = false
      end
      return true
   end
end
