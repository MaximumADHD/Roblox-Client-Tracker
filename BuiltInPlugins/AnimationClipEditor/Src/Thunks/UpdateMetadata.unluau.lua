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
      local var20 = var1.Dictionary
      var20 = var0
      local var22 = {}
      var22.Metadata = var1.Dictionary.join(var0.Metadata, arg1)
      local var1 = var2(var20.join(var20, var22))
      arg1:dispatch()
   end
end
