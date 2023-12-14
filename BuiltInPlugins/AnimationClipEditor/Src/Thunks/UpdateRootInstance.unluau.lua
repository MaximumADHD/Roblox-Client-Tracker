-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("CollectionService")
local var1 = script:FindFirstAncestor("AnimationClipEditor")
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Src.Util.RigUtils)
local var4 = require(var1.Src.Util.Constants)
local var5 = require(var1.Src.Actions.SetIKEnabled)
local var6 = require(var1.Src.Actions.SetIKMode)
local var7 = require(var1.Src.Actions.SetShowTree)
local var8 = require(var1.Src.Actions.SetPinnedParts)
local var9 = require(var1.Src.Actions.SetClipboard)
local var10 = require(var1.Src.Thunks.ReleaseEditor)
local var11 = require(var1.Src.Thunks.AttachEditor)
local var12 = require(var1.Src.Actions.SetRootInstance)
local var13 = require(var1.Src.Actions.SetAnimationData)
local var14 = require(var1.Src.Actions.SetStartingPose)
local var15 = require(var1.Src.Thunks.Exporting.LoadAnimation)
local var16 = require(var1.Src.Thunks.LoadLatestAnimation)
local var17 = require(var1.Src.Thunks.SortAndSetTracks)
local var18 = require(var1.Src.Actions.SetPast)
local var19 = require(var1.Src.Actions.SetFuture)
local var20 = require(var1.Src.Actions.SetSelectedKeyframes)
local var21 = require(var1.Src.Actions.SetLegacyAnimationInstances)
local var22 = require(var1.Src.Actions.SetSelectedTrackInstances)
local var23 = require(var1.LuaFlags.GetFFlagAnimSavesMigration)
local var24 = require(var1.LuaFlags.GetFFlagMigrationDialog)
local var25 = require(var1.LuaFlags.GetFFlagFixMultipleOutlines)
return function(arg1, arg2)
   return function(arg1, arg2)
      local var0 = var10:GetTags(arg1.animation)
      local var1 = var10:GetTags(arg2.animation)
      local var2 = var0[1] and tonumber(var0[1])
      local var3 = var1[1] and tonumber(var1[1])
      if not var2 then
         if not var3 then
            if arg2.animation.Name > arg1.animation.Name then
               local var0 = false
            end
            return true
         end
      end
      if var2 then
         if not var3 then
            return true
         end
      end
      if var3 then
         if not var2 then
            return false
         end
      end
      if var2 > var3 then
         local var0 = false
      end
      return true
   end
end
