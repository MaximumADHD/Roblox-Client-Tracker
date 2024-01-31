-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Src.Types)
local var3 = {}
function var3.mock()
   local var0 = {}
   var0.groupId = 13370420
   var0.name = "RobloxLovers"
   return var0
end

function var3.fromJsonData(arg1)
   if type(arg1.id) == "number" then
      return false"Group.fromJsonData expects id to be a number",
   end
   if type(arg1.name) == "string" then
      return false"Group.fromJsonData expects name to be a string",
   end
   local var0 = {}
   var0.name = arg1.name
   var0.groupId = arg1.id
   return truevar0,
end

return var3
