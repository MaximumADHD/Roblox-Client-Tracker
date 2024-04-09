-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Clients.ActivityHistoryClient)
local var2 = {}
local var3 = {}
var3.activityHistoryClient = require(var0.Src.Clients.MockActivityHistoryClient)
function var3.showSaveOrPublishPlaceToRobloxFn()
end

function var3.useCollaborators()
   return var2
end

function var3.usePlaceAndUniverseId()
   return 00,
end

function var3.openBrowserLink()
end

var3.contextType = "mock context (default)"
return require(var0.Packages.React).createContext(var3)
