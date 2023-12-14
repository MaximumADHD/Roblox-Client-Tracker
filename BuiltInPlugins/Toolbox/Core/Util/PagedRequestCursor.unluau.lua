-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.createDefaultCursor()
   local var0 = {}
   var0.begin = true
   return var0
end

function var0.createCursor(arg1)
   if arg1 then
      local var0 = {}
      var0.nextPageCursor = arg1.nextPageCursor
      return var0
   end
   return {}
end

function var0.isNextPageAvailable(arg1)
   if not arg1.begin then
      if arg1.nextPageCursor then
         return true
      end
   end
   return true
   return false
end

function var0.getNextPageCursor(arg1)
   return arg1.nextPageCursor
end

return var0
