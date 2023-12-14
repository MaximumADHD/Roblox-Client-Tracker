-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Parent.Src.Actions.AddChange)
local var1 = require(script.Parent.AddDevSubKeyError)
return function(arg1)
   return function(arg1, arg2)
      local var0 = arg1.Key
      local var22 = {}
      var22.isAcceptable = true
      local var2 = nil
      var22.filteredName = var2
      arg1.Key = var22
      local var28 = var0("DevSubModeration", {})
      arg1:dispatch()
      local var4 = arg2.devSubsController:getFilteredDevSub(arg1)
      local var34 = {}
      var34.isAcceptable = var4
      var34.filteredName = var2
      arg1.Key = var34
      local var5 = var0("DevSubModeration", {})
      arg1:dispatch()
      if not var4 then
         local var43 = {}
         var43.Moderated = "Name has been moderated"
         local var0 = var1(var0, "Name", var43)
         arg1:dispatch()
      end
   end
end
