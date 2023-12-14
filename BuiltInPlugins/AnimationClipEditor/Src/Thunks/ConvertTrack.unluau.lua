-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Util.deepCopy)
local var2 = require(var0.Packages.Cryo)
local var3 = require(var0.Src.Actions.SetTracks)
local var4 = require(var0.Src.Thunks.SortAndSetTracks)
local var5 = require(var0.Src.Thunks.UpdateAnimationData)
local var6 = require(var0.Src.Util.AnimationData)
local var7 = require(var0.Src.Util.Constants)
local var8 = require(var0.Src.Util.PathUtils)
local var9 = require(var0.Src.Util.Templates)
local var10 = require(var0.Src.Util.TrackUtils)
return function(arg1, arg2, arg3, arg4)
   return function(arg1)
      local var0 = arg1:getState()
      local var1 = var0.AnimationData
      if var1 then
         if not var1.Instances[arg1] then
         end
      end
      local var2 = var0.Status.DefaultEulerAnglesOrder or Enum.RotationOrder.XYZ
      local var3 = var1(var0.Status.Tracks)
      local var264 = var10
      var264 = var3
      local var5 = var264.findTrackEntry(var264, arg2)
      local var269 = var2.Dictionary
      var269 = var1
      local var7 = var269.join(var269)
      var7.Instances = var2.Dictionary.join(var7.Instances)
      local var277 = var7.Instances
      arg1 = var2.Dictionary.join({}, var7.Instances[arg1])
      var7.Instances[arg1].Tracks = var2.Dictionary.join({}, var7.Instances[arg1].Tracks)
      local var302 = var7.Instances[arg1].Tracks
      arg2[1] = var1(var7.Instances[arg1].Tracks[arg2[1]])
      local var314 = var6
      var314 = var7
      local var10 = var314.getTrack(var314, arg1, arg2)
      if var10 == "getState" then
         if var10.Data == "getState" then
            if var10.Type == "Tracks" then
               local var0 = var7.TRACK_TYPES
               if arg3 == "Tracks" then
                  local var328 = var10
                  var328 = var10
                  var0 = var2
                  var328.convertTrackToEulerAngles(var328, var0)
                  var5.Type = var7.TRACK_TYPES.EulerAngles
                  var5.EulerAnglesOrder = var2
                  local var333 = var10
                  var333 = var5
                  local var337 = var7.TRACK_TYPES
                  var337 = var2
                  var333.createTrackListEntryComponents(var333, var5.Instance, var337.EulerAngles, var337)
                  local var341 = var5(var7)
                  arg1:dispatch()
                  local var1 = var4(var3)
                  arg1:dispatch()
               end
            end
         end
      end
   end
end
