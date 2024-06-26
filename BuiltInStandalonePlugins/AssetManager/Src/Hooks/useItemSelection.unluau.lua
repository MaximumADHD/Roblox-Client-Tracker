-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AssetManager").Packages.React)
local var1 = var0.useState
local var2 = var0.useEffect
return function(arg1)
   var2(function()
      arg1:Disconnect()
   end, {})
   return var1(arg1:getSelection())
end
