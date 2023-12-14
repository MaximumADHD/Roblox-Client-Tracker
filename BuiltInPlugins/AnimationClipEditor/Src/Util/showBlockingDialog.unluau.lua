-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Promise)
local var3 = require(var0.Src.Components.BlockingDialog.BlockingDialog)
return function(arg1, arg2)
   return var2.new(function()
      if var1 then
         var3.unmount(var1)
         arg1()
      end
   end):await()
end
