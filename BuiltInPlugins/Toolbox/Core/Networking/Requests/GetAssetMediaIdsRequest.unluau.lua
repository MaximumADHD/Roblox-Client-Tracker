-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Util.DebugFlags)
local var2 = require(var0.Core.Actions.NetworkError)
local var3 = require(var0.Core.Actions.SetAssetMediaIds)
return function(arg1, arg2, arg3, arg4)
   return function(arg1)
      if arg1 then
         if arg1.responseBody then
            if arg1.responseBody.data then
               local var0 = arg1.responseBody.data
            else
               local var0 = {}
            end
         else
            local var0 = {}
         end
      else
         local var0 = {}
      end
      local var0 = arg3(arg2, var36)
      arg4:dispatch()
      return 
   end
end
