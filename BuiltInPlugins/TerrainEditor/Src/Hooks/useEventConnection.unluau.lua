-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("TerrainEditor").Packages.React)
return function(arg1, arg2, arg3)
   local var0 = arg1
   local var1 = var0.useMemo(function()
      return arg2
   end, arg3)
   var0.useEffect(function()
      arg1:Disconnect()
   end, {})
end
