-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script.Parent.Parent.Parent.Packages.Framework).Util
var8 = var8.Action
return var8(script.Name, function(arg1)
   if typeof(arg1) == "table" then
      local var0 = false
   end
   local var18 = script
   local var0 = " requires friends to be a table, not "
   var18 = arg1
   assert(true, var18.Name ... var0 ... typeof(var18))
   local var27 = ipairs(arg1)
   if typeof(var0) == "number" then
      local var0 = false
   end
   local var33 = script
   var33 = var0
   assert(true, var33.Name ... " requires a table of numbers for friends, not " ... typeof(var33))
   local var2 = {}
   var2.creatorFriends = arg1
   return var2
end)
