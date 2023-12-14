-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = var0.Packages
local var2 = require(var1.Framework)
local var3 = require(var1.Dash)
local var4 = require(var0.Core.Types.GroupTypes)
local var20 = var0.Core
local var5 = {}
var5.manageableGroups = nil
var20 = var5
function require(var20.Actions.SetManageableGroups).name(arg1, arg2)
   local var31 = var3
   var31 = arg1
   local var33 = {}
   var33.manageableGroups = arg2.manageableGroups
   return var31.join(var31, var33)
end

return require(var1.Rodux).createReducer(var20, {})
