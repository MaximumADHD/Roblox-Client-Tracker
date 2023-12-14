-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var13 = {}
var13.creatorType = nil
var13.creatorId = nil
var13.creatorName = nil
var13.creatorFriends = nil
var13.groupOwnerId = nil
var13.groupOwnerName = nil
local var20 = {}
function var20.ResetStore(arg1, arg2)
   return {}
end

function var20.SetCreatorType(arg1, arg2)
   local var27 = var1.Dictionary
   var27 = arg1
   local var29 = {}
   var29.creatorType = arg2.creatorType
   return var27.join(var27, var29)
end

function var20.SetCreatorId(arg1, arg2)
   local var35 = var1.Dictionary
   var35 = arg1
   local var37 = {}
   var37.creatorId = arg2.creatorId
   return var35.join(var35, var37)
end

function var20.SetCreatorName(arg1, arg2)
   local var43 = var1.Dictionary
   var43 = arg1
   local var45 = {}
   var45.creatorName = arg2.creatorName
   return var43.join(var43, var45)
end

function var20.SetCreatorFriends(arg1, arg2)
   if arg1.creatorType ~= Enum.CreatorType.User then
      local var0 = false
   end
   assert(true, "Setting friends in non-user owned game")
   local var57 = var1.Dictionary
   var57 = arg1
   local var59 = {}
   var59.creatorFriends = arg2.creatorFriends
   return var57.join(var57, var59)
end

function var20.SetGroupOwnerId(arg1, arg2)
   if arg1.creatorType ~= Enum.CreatorType.Group then
      local var0 = false
   end
   assert(true, "Setting group owner id in non-group owned game")
   local var71 = var1.Dictionary
   var71 = arg1
   local var73 = {}
   var73.groupOwnerId = arg2.groupOwnerId
   return var71.join(var71, var73)
end

return require(var0.Packages.Rodux).createReducer(var13, var20)
