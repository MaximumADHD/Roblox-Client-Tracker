-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.DEPRECATED_modules.Http.Promise)
local var1 = {}
var1.__index = var1
function var1.new()
   return setmetatable({}, var1)
end

function var1.resolveAssets(arg1, arg2, arg3)
   local var19 = {}
   local var0 = {}
   var0.TotalResults = arg3 or arg2
   var0.Results = arg2
   var19.responseBody = var0
   return var0.resolve(var19)
end

function var1.getMyGroups(arg1, arg2)
   local var28 = var0
   var28 = {}
   return var28.resolve(var28)
end

return var1
