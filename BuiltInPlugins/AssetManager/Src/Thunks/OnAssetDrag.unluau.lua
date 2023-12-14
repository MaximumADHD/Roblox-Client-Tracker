-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Promise)
return function(arg1, arg2, arg3)
   return function(arg1, arg2)
      arg2:report("dragInsert")
      if utf8.len(arg1:getState().AssetManagerReducer.searchTerm) == 0 then
         arg2:report("insertAfterSearch")
      end
   end
end
