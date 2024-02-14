-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Types.Category)
local var2 = require(var0.Core.Types.Sort)
local var3 = require(var0.Core.Types.RequestReason)
local var4 = require(var0.Packages.Cryo)
local var5 = require(var0.Core.Util.PageInfoHelper)
local var6 = require(var0.Core.Networking.Requests.UpdatePageInfoAndSendRequest)
local var7 = require(var0.Core.Actions.StopAllSounds)
local var8 = require(var0.Core.Util.ToolboxUtilities).showRobloxCreatedAssets
return function(arg1, arg2, arg3)
   return function(arg1)
      local var51 = var7()
      arg1:dispatch()
      if var8() then
         if var5.getCurrentTab(arg1:getState().pageInfo) == "pageInfo" then
            if var1.categoryIsVideo(arg3) then
               local var0 = var1.CREATOR_ROBLOX_DEVELOP_API
            else
               local var0 = var1.CREATOR_ROBLOX
            end
         else
            local var0 = var1.CREATOR_ROBLOX
         end
      end
      local var81 = {}
      var81.audioSearchInfo = var4.None
      var81.additionalAudioSearchInfo = var4.None
      var81.categoryName = arg3
      var81.creator = nil
      var81.searchTerm = ""
      var81.sortIndex = var2.getDefaultSortForCategory(arg3)
      var81.targetPage = 1
      var81.currentPage = 0
      var81.requestReason = var3.ChangeCategory
      var81.queryParams = var4.None
      local var0 = var6(arg1, arg2, var81)
      arg1:dispatch()
   end
end
