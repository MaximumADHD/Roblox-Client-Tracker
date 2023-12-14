-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = var0.Src.Actions
local var3 = require(var0.Src.Util.IsEqualCheck)
local function fun0()
   local var0 = {}
   var0.MinimumAge = 0
   var0.CurrentPermissions = {}
   return var0
end

local var32 = {}
var32.MinimumAge = 0
var32.CurrentPermissions = {}
local var35 = {}
function var35.ResetStore(arg1, arg2)
   local var0 = {}
   var0.MinimumAge = 0
   var0.CurrentPermissions = {}
   return var0
end

function require(var2.SetUserMinimumAge).name(arg1, arg2)
   local var45 = var1.Dictionary
   var45 = arg1
   local var47 = {}
   var47.MinimumAge = arg2.MinimumAge
   return var45.join(var45, var47)
end

function require(var2.SetUserPermission).name(arg1, arg2)
   local var0 = arg2.newPermissions
   local var56 = type(var0)
   if var56 == "table" then
      local var0 = false
   end
   assert(true)
   var56 = var0
   if var3(arg1.CurrentPermissions, var56) then
      local var0 = var1.None
   end
   local var66 = var1.Dictionary
   var66 = arg1
   local var68 = {}
   var68.NewPermissions = var0
   return var66.join(var66, var68)
end

function require(var2.SetCurrentUserPermissions).name(arg1, arg2)
   local var74 = var1.Dictionary
   var74 = arg1
   local var76 = {}
   var76.CurrentPermissions = arg2.currentPermissions
   return var74.join(var74, var76)
end

return require(var0.Packages.Rodux).createReducer(var32, var35)
