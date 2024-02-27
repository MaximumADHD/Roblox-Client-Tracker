-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var3 = var0.Core.Actions
local var4 = require(var3.NetworkError)
local var5 = require(var3.SetLoading)
local var6 = require(var3.UpdateSearchTerm)
local var7 = require(var3.SetAutocorrect)
local var8 = require(var0.Core.Networking.Requests.GetItemDetails)
local var9 = require(var0.Core.Networking.Requests.GetCreatorName)
local var10 = require(var0.Core.Types.Category)
local var11 = require(var0.Core.Types.GetToolboxItemsResponseTypes)
local var12 = require(var0.Core.Types.AutocorrectTypes)
local var13 = var0.Core.Util
local var14 = require(var13.getUserId)
local var15 = require(var13.PagedRequestCursor)
local var16 = require(var13.Constants)
local var17 = require(var13.CreatorInfoHelper)
local var18 = require(var13.PageInfoHelper)
local var19 = require(var0.Core.Util.SharedFlags.getFFlagToolboxAddAutocorrect)
local var20 = require(var0.Core.Types.BackendTypes)
local var21 = require(var0.Core.Types.CreatorTypes)
local var22 = require(var0.Core.Util.SharedFlags.getFFlagToolboxEnableSearchOptionsRefactor)
local var23 = require(var1.Framework).Dash
local var24 = require(var0.Core.Util.SharedFlags.getFFlagToolboxAddCreationsFilterToListView)
local var25 = require(var0.Core.Flags.getFFlagToolboxFixFilteringByAlbum)
return function(arg1, arg2, arg3, arg4, arg5, arg6)
   return function(arg1)
      local var0 = {}
      var0.id = arg1
      return var0
   end
end
