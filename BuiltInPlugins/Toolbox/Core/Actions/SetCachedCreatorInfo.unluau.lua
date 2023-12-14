-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var0.Core.Util.CreatorInfoHelper)
local var19 = require(var1.Framework).Util.Typecheck
local var4 = var19.t
var19 = require(var1.Framework).Util.Action
return var19(script.Name, function(arg1)
   local var32 = {}
   var32.Id = var4.number
   var32.Name = var4.string
   var32.Type = var2.isValidCreatorType
   assert(var4.union(var4.strictInterface({}), var4.interface(var32))(arg1), "CreatorInfo must be either an empty table, or have all keys defined")
   local var0 = {}
   var0.cachedCreatorInfo = arg1
   return var0
end)
