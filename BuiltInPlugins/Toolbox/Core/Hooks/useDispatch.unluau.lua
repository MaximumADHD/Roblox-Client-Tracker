-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("Toolbox").Packages.React)
local var1 = require(script.Parent.useStore)
return function()
   local var0 = var1()
   local var1 = var0
   return var0.useCallback(function(...)
      local var0 = ...
      return var0:dispatch()
   end, {})
end
