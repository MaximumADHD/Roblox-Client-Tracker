-- Generated with Unluau (https://github.com/valencefun/unluau)
local var40 = require(script.Parent.Parent.Parent.Packages.Framework).Util
var40 = var40.Action
return var40(script.Name, function(arg1)
   if typeof(arg1) == "table" then
      local var0 = false
   end
   local var50 = script
   local var0 = " requires friends to be a table, not "
   var50 = arg1
   assert(true, var50.Name ... var0 ... typeof(var50))
   local var59 = ipairs(arg1)
   if typeof(var0) == "number" then
      local var0 = false
   end
   local var65 = script
   var65 = var0
   assert(true, var65.Name ... " requires a table of numbers for friends, not " ... typeof(var65))
   local var2 = {}
   var2.creatorFriends = arg1
   return var2
end)
