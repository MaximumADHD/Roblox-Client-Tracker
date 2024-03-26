-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Actions.ValidateAnimationResult)
local var2 = require(var0.Core.Flags.getFFlagToolboxAnimationAPIMigration)
return function(arg1)
   return function(arg1)
      if var2() then
         if arg1 then
            if arg1.responseBody then
               local var0 = true
               local var1 = arg1.responseBody.assetType
               if var1 == "Animation" then
                  local var0 = false
               end
            end
         end
         local var0 = arg1(false)
         var1:dispatch()
      end
      local var0 = arg1(true)
      var1:dispatch()
   end
end
