-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.InitLoad = 1
var0.ChangeTabs = 2
var0.ChangeCategory = 3
var0.ChangeSort = 4
var0.ChangeGroup = 5
var0.StartSearch = 6
var0.NextPage = 7
var0.UpdatePage = 8
function var0.IsUpdate(arg1)
   if arg1 ~= var0.NextPage then
      if arg1 ~= var0.UpdatePage then
         local var0 = false
      end
      local var0 = true
   end
   return true
end

return var0
