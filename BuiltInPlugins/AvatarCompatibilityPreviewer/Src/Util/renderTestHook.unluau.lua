-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Dev.ReactTestingLibrary)
return function(arg1)
   local var0 = var1.createRef()
   local var24 = var1
   function var24()
      var0.current = table.pack(arg1())
   end
   
   var2.render(var24.createElement(var24))
   return function()
      return table.unpack(var0.current)
   end
end
