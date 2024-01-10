-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Types.Sort)
local var2 = require(var0.Core.Types.RequestReason)
local var3 = require(var0.Core.Networking.Requests.UpdatePageInfoAndSendRequest)
local var4 = require(var0.Core.Actions.StopAllSounds)
return function(arg1, arg2)
   return function(arg1)
      local var124 = var4()
      arg1:dispatch()
      local var129 = {}
      var129.searchTerm = ""
      var129.sortIndex = var1.getDefaultSortForGroups(arg1:getState().pageInfo)
      var129.groupIndex = arg2
      var129.targetPage = 1
      var129.currentPage = 0
      var129.requestReason = var2.ChangeGroup
      local var1 = var3(arg1, nil, var129)
      arg1:dispatch()
   end
end
