-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var3 = require(var0.Core.Types.HomeTypes)
function require(var0.Core.Actions.SetHomeConfiguration).name(arg1, arg2)
   local var28 = var2.Dictionary
   var28 = arg1
   arg2.assetType.Name = arg2.configuration
   arg1 = var28.join(var28, {})
   return arg1
end

return require(var1.Rodux).createReducer({}, {})
