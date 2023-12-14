-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Actions.SetGroupInfo)
local var2 = require(var0.Src.Network.Requests.ApiFetchGroupsHavePermission)
return function()
   return function(arg1)
      local var17 = {}
      var17.groups = {}
      local var0 = var1(var17)
      arg1:dispatch()
      var2():andThen(function(arg1)
         local var0 = var1(arg1)
         arg1:dispatch()
      end, function(arg1)
         error("Failed to fetch groups with edit permission")
      end)
   end
end
