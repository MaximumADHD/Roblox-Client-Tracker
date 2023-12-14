-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local function fun0()
   local var0 = {}
   var0.PermissionsByRole = {}
   return var0
end

local var20 = {}
var20.PermissionsByRole = {}
local var22 = {}
function var22.ResetStore(arg1, arg2)
   local var0 = {}
   var0.PermissionsByRole = {}
   return var0
end

function require(var0.Src.Actions.SetGroupRolePermissions).name(arg1, arg2)
   local var31 = var1.Dictionary
   var31 = arg1
   local var33 = {}
   var33.PermissionsByRole = arg2.groupRolePermissions
   return var31.join(var31, var33)
end

return require(var0.Packages.Rodux).createReducer(var20, var22)
