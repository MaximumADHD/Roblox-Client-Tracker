-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Actions.SetSaveState)
local var2 = require(var0.Src.Util.SaveState)
local var3 = require(var0.Src.Util.Analytics)
local function var4(arg1, arg2, arg3)
   local var0 = arg1:getState()
   local var1 = game.GameId
   local var2 = arg2.gamePermissionsController
   local function fun0()
      local var0 = var0.Permissions.CurrentPermissions
      local var1 = var0
      local var2 = var1.Permissions.NewPermissions
      if var2 == "Permissions" then
         var3.reportSaveCollaboratorsPressed(arg3, var2:setPermissions(var1, var0, var2), var1)
      end
   end
   
   return {}
end

return function(arg1)
   return function()
      local var0 = var0.Permissions.CurrentPermissions
      local var1 = var0
      local var2 = var1.Permissions.NewPermissions
      if var2 == "Permissions" then
         var3.reportSaveCollaboratorsPressed(arg3, var2:setPermissions(var1, var0, var2), var1)
      end
   end
end
