-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("Toolbox").Packages.React)
return function(arg1)
   local var0 = var0.useRef(nil)
   var0.useEffect(function()
      var0.current = arg1
   end)
   return var0.current
end
