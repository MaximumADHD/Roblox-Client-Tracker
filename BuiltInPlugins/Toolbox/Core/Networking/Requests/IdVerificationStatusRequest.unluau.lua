-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Actions.NetworkError)
local var2 = require(var0.Core.Util.DebugFlags)
local var3 = var0.Core.Actions
return function(arg1)
   return arg1:getIdVerificationStatus():andThen(function(arg1)
      local var0 = arg1.responseBody
      if 0 < var0.features then
         return truevar0.features[1].access,
      end
      warn("Unable to retrieve id verification feature, defaulting to false")
      return true"Denied",
   end, function(arg1)
      return false"Denied",
   end)
end
