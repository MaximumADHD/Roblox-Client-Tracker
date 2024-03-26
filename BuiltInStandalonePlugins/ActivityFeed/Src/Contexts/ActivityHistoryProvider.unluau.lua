-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Clients.ActivityHistoryClient)
local var3 = require(var0.Src.Contexts.ActivityHistoryContext)
return function(arg1)
   local var30 = arg1.showSaveOrPublishPlaceToRobloxFn
   local var0 = arg1.contextType
   local var37 = {}
   var37.value = var1.useMemo(function()
      local var0 = {}
      var0.activityHistoryClient = arg1.activityHistoryClient
      var0.showSaveOrPublishPlaceToRobloxFn = arg1.showSaveOrPublishPlaceToRobloxFn
      var0.contextType = arg1.contextType
      return var0
   end, { arg1.activityHistoryClient })
   return var1.createElement(var3.Provider, var37, arg1.children)
end
