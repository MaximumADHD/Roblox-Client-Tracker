-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Util.AnimationData)
local var2 = require(var0.Src.Util.isEmpty)
local var3 = require(var0.Src.Util.PathUtils)
local var4 = {}
function var4.PruneSelectedTracks(arg1, arg2)
   local var0 = {}
   if arg2 then
      local var26 = ipairs(arg2)
      local var27 = var1
      var27 = arg1
      if var27.getTrack(var27, "Root", var30) then
         table.insert(var0, var33)
      else
         local var0 = true
      end
   end
   return var0false,
end

return var4
