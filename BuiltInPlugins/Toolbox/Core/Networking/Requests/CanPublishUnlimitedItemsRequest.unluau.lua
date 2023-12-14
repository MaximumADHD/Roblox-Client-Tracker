-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Util.Promise
return function(arg1)
   if arg1 then
      if arg1.getMetaData then
         return arg1:getMetaData():andThen(function(arg1)
            if arg1.responseBody then
               local var0 = arg1.responseBody.canPublishUnlimitedItems
            else
               local var0 = false
            end
            return truevar106,
         end, function(arg1)
            warn("Could not fetch roleset, defaulting to false")
            return falsefalse,
         end)
      end
   end
end
