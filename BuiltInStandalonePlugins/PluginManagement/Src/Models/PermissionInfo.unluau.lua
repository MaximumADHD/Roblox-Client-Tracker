-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.new()
   local var0 = {}
   var0.data = {}
   var0.allowed = false
   var0.type = nil
   return var0
end

function var0.mock()
   local var0 = var0.new()
   var0.allowed = true
   local var1 = {}
   var1.domain = "a"
   var0.data = var1
   return var0
end

function var0.fromUserData(arg1, arg2)
   local var0 = var0.new()
   var0.type = arg1.Type
   var0.index = arg2
   if arg1.Data then
      var0.allowed = arg1.Data.Allowed
      local var0 = {}
      var0.domain = arg1.Data.Domain
      var0.data = var0
   end
   return var0
end

return var0
