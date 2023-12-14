-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.mock()
   local var0 = {}
   var0.groupId = 12341234
   var0.name = "yeet"
   return var0
end

function var0.fromJsonData(arg1)
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

return var0
