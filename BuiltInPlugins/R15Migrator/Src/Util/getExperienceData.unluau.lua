-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("MarketplaceService")
local function var1(arg1, arg2, arg3)
   local var9 = arg2.Develop.V2.Universes
   var9 = arg1
   var9.places(var9):makeRequest():andThen(function(arg1)
      arg3(arg1.responseBody.data[1].id)
   end, function(arg1)
      warn("Unable to retrieve details of experience", arg1.responseBody)
      arg3()
   end)
end

return function(arg1, arg2, arg3)
   var1(arg1, arg2, function(arg1)
      arg3(arg1.responseBody.data[1].id)
   end)
end
