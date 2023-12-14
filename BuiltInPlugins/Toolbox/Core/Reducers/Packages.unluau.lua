-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var17 = {}
var17.permissionsTable = {}
function require(var0.Core.Actions.SetPackagePermission).name(arg1, arg2)
   if not arg1.permissionsTable then
      arg1.permissionsTable = {}
   end
   arg1.permissionsTable = var2.Dictionary.join(arg1.permissionsTable, arg2.packagePermissions)
   return arg1
end

return require(var1.Rodux).createReducer(var17, {})
