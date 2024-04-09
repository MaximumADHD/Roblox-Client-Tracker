-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Clients.ActivityHistoryClient)
local var3 = require(var0.Src.Contexts.ActivityHistoryContext)
local var4 = {}
return function(arg1)
   local var0 = arg1.useCollaborators
   local var1 = arg1.usePlaceAndUniverseId
   local var34 = {}
   var34.value = var1.useMemo(function()
   end, { arg1.activityHistoryClient, arg1.showSaveOrPublishPlaceToRobloxFn, arg1.openBrowserLink, arg1.contextType })
   return var1.createElement(var3.Provider, var34, arg1.children)
end
