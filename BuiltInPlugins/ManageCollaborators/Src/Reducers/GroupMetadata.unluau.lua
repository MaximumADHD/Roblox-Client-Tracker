-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = var0.Src.Actions
local var3 = require(var0.Src.Util.IsEqualCheck)
local function fun0()
   local var0 = {}
   var0.CurrentGroupMetadata = {}
   return var0
end

local var28 = {}
var28.CurrentGroupMetadata = {}
local var30 = {}
function var30.ResetStore(arg1, arg2)
   local var0 = {}
   var0.CurrentGroupMetadata = {}
   return var0
end

function require(var2.SetGroupMetadata).name(arg1, arg2)
   local var0 = arg2.newGroupMetadata
   local var41 = type(var0)
   if var41 == "table" then
      local var0 = false
   end
   assert(true)
   var41 = var0
   if var3(arg1.CurrentGroupMetadata, var41) then
      local var0 = var1.None
   end
   local var51 = var1.Dictionary
   var51 = arg1
   local var53 = {}
   var53.NewGroupMetadata = var0
   return var51.join(var51, var53)
end

function require(var2.SetCurrentGroupMetadata).name(arg1, arg2)
   local var59 = var1.Dictionary
   var59 = arg1
   local var61 = {}
   var61.CurrentGroupMetadata = arg2.currentGroupMetadata
   return var59.join(var59, var61)
end

return require(var0.Packages.Rodux).createReducer(var28, var30)
