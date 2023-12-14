-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Actions.SetAnimationData)
return function(arg1)
   return function(arg1)
      local var0 = arg1:getState().AnimationData
      if var0 then
         if not var0.Metadata then
         end
      end
      local var41 = var1.Dictionary
      var41 = var0
      local var43 = {}
      var43.Metadata = var1.Dictionary.join(var0.Metadata, arg1)
      local var1 = var2(var41.join(var41, var43))
      arg1:dispatch()
   end
end
