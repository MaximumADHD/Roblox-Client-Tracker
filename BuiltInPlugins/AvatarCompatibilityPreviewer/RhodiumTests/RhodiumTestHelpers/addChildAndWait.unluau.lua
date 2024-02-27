-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AvatarCompatibilityPreviewer").Packages.Promise)
return function(arg1, arg2, arg3)
   task.defer(arg2)
   return var0.try(function()
      local var0 = {}
      local var1 = 1
      local var17 = arg3
      local var18 = 1
      local var2 = var0
      local var3 = arg1.ChildAdded:Wait()
      table.insert()
      var18 = var0
      return unpack(var18)
   end):timeout(3):expect()
end
