-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("Toolbox").Packages.React)
local var1 = var0.useCallback
local var2 = var0.useEffect
local var3 = var0.useRef
local var4 = var0.useState
return function(arg1, arg2)
   local var0 = var4(arg1)
   local var1 = var3(true)
   local var2 = arg1
   var2(function()
      task.delay(arg1, function()
         arg2.current = false
      end)
   end, {})
   var2(var1(function()
      arg2.current = false
   end, {}), {})
   return var0
end
