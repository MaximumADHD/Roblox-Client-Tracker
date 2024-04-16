-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Util.Constants)
local var2 = require(var0.Packages.Cryo)
local var3 = var0.Src.Actions
local var4 = require(var3.SetFuture)
local var5 = require(var3.SetInReviewState)
local var6 = require(var3.SetPast)
local var7 = require(var3.SetSelectedKeyframes)
local var8 = require(var3.SetSelectedTracks)
local var9 = var0.Src.Thunks
local var10 = require(var9.SetSelectedTracks)
local var11 = require(var9.SortAndSetTracks)
local var12 = require(var9.UpdateAnimationData)
local var13 = require(var0.Src.Util.TrackSelectionUtils)
local var14 = require(var0.LuaFlags.GetFFlagFacialAnimationRecordingInStudio)
local var15 = require(var0.LuaFlags.GetFFlagSelectFromViewport)
return function(arg1)
   return function(arg1, arg2)
      if var14.MaxWaypointSize >= arg2 then
         local var0 = false
      end
      return true
   end
end
