-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Actions.NetworkError)
local var2 = require(var0.Core.Util.DebugFlags)
local function fun0(arg1, arg2, arg3)
   if var2.shouldDebugWarnings() then
      warn("Failed here -- Could not post UGC Bundle consent and received response:", arg3)
   end
   local var0 = var1(arg2:getText("AssetConfig", "ValidationErrorUnknown"))
   arg1:dispatch()
end

return function(arg1, arg2, arg3, arg4)
   return function(arg1, arg2, arg3)
      if var2.shouldDebugWarnings() then
         warn("Failed here -- Could not post UGC Bundle consent and received response:", arg3)
      end
      local var0 = var1(arg2:getText("AssetConfig", "ValidationErrorUnknown"))
      arg1:dispatch()
   end
end
