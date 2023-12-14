-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.__index = var0
function var0.new(arg1)
   local var0 = {}
   var0.__networking = arg1
   return setmetatable(var0, var0)
end

local function fun0(arg1)
   return arg1:get("apis", "/user-agreements/v1/agreements-resolution/App")
end

local function var1(arg1, arg2, arg3)
   local var20 = {}
   local var0 = {}
   var0.email = arg3
   var20.Body = var0
   return arg1:post("apis", "/studio-moderation/v1/" ... arg2 ... "/contacts", var20)
end

function var0.getPlayerAcceptances(arg1)
   if next(arg1.__networking:get("apis", "/user-agreements/v1/agreements-resolution/App"):await().responseBody) == "__networking" then
      local var0 = false
   end
   return true
end

function var0.postContactEmail(arg1, arg2, arg3)
   if type(arg2) == "number" then
      local var0 = false
   end
   local var44 = true
   local var50 = string.format("universeId must be a number, received %s", type(arg2))
   assert()
   if type(arg3) == "string" then
      local var0 = false
   end
   local var56 = true
   local var62 = string.format("contactemail must be a string, received %s", type(arg3))
   assert()
   var1(arg1.__networking, arg2, arg3):catch(function(arg1)
      local var0 = {}
      var0.__networking = arg1
      return setmetatable(var0, var0)
   end):await()
   return nil
end

return var0
