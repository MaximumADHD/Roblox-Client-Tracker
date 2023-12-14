-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.__index = var0
function var0.GetFullName(arg1)
   return arg1.FileName
end

function var0.new(arg1, arg2)
   local var0 = {}
   var0.ScriptGuid = arg1
   var0.FileName = arg2
   setmetatable(var0, var0)
   return var0
end

return var0
