-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.Alphabetical = 1
var0.Status = 2
function var0.getOrderedSortData(arg1)
   var0.Alphabetical = arg1:getText("Summary", "Alphabetical")
   var0.Status = arg1:getText("StatusTable", "Status")
   return {}
end

return var0
