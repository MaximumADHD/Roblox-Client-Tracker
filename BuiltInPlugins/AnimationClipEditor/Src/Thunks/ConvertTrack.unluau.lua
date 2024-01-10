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
      local var72 = var10
      var72 = var3
      local var5 = var72.findTrackEntry(var72, arg2)
      local var77 = var2.Dictionary
      var77 = var1
      local var7 = var77.join(var77)
      var7.Instances = var2.Dictionary.join(var7.Instances)
      local var85 = var7.Instances
      arg1 = var2.Dictionary.join({}, var7.Instances[arg1])
      var7.Instances[arg1].Tracks = var2.Dictionary.join({}, var7.Instances[arg1].Tracks)
      local var110 = var7.Instances[arg1].Tracks
      arg2[1] = var1(var7.Instances[arg1].Tracks[arg2[1]])
      local var122 = var6
      var122 = var7
      local var10 = var122.getTrack(var122, arg1, arg2)
      if var10 == "getState" then
         if var10.Data == "getState" then
            if var10.Type == "Tracks" then
               local var0 = var7.TRACK_TYPES
               if arg3 == "Tracks" then
                  local var136 = var10
                  var136 = var10
                  var0 = var2
                  var136.convertTrackToEulerAngles(var136, var0)
                  var5.Type = var7.TRACK_TYPES.EulerAngles
                  var5.EulerAnglesOrder = var2
                  local var141 = var10
                  var141 = var5
                  local var145 = var7.TRACK_TYPES
                  var145 = var2
                  var141.createTrackListEntryComponents(var141, var5.Instance, var145.EulerAngles, var145)
                  local var149 = var5(var7)
                  arg1:dispatch()
                  local var1 = var4(var3)
                  arg1:dispatch()
               end
            end
         end
      end
   end
end
