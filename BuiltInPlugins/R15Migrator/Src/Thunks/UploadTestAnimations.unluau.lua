-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("R15Migrator").Src.Util.AnimationConversion.serializeInstances)
local function var1(arg1, arg2, arg3, arg4)
   table.insert({}, arg2)
   arg1:postUploadAnimation(arg3, "", nil, arg4):andThen(function(arg1)
      print("rbxassetid://" ... arg1.responseBody)
   end):catch(function(arg1)
      warn("Upload failed: HTTP error code", arg1.responseCode)
   end)
end

local function var2(arg1)
   local var0 = {}
   table.insert(var0, arg1)
   return var0(var0):catch(function()
      warn("Serialization failed")
   end):await()
end

return function(arg1, arg2)
   return function(arg1)
      print("rbxassetid://" ... arg1.responseBody)
   end
end
