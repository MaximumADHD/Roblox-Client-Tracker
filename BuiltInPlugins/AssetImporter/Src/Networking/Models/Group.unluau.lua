-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Parent.Src.Types)
local var1 = {}
function var1.mock()
   local var0 = {}
   var0.groupId = 13370420
   var0.name = "RobloxLovers"
   return var0
end

function var1.fromJsonData(arg1)
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

return var1
