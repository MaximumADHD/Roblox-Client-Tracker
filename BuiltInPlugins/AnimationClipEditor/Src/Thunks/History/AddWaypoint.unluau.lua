-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Actions.SetPast)
local var3 = require(var0.Src.Actions.SetFuture)
local var4 = require(var0.Src.Actions.SetIsDirty)
return function(arg1)
   return function(arg1, arg2)
      if arg1.MaxWaypointSize >= arg2 then
         local var0 = false
      end
      return true
   end
end
