-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Core.Util.getUserId)
local var2 = require(var0.Core.Actions.CollaboratorSearchActions)
local var3 = require(var0.Core.Networking.Requests.UserFriends).Get
return function(arg1, arg2, arg3)
   return function()
      local var0 = var3()
      local var34 = var1
      var34 = var2(arg2, tostring()):await()
      local var1 = var34.LoadedLocalUserFriends(var34, var36)
      arg1:dispatch()
   end
end
