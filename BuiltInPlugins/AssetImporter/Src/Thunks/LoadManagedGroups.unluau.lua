-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Src.Networking.Requests.ApiFetchGroupsHavePermission)
local var2 = require(var0.Src.Actions.SetManagedGroups)
return function()
   return function(arg1)
      var1():andThen(function(arg1)
         local var0 = var2(arg1.groups)
         arg1:dispatch()
      end, function(arg1)
         error("Failed to fetch groups with edit permission")
      end)
   end
end
