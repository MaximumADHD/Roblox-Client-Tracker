-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).Util.Action
local var1 = {}
local var14 = var0("LoadingLocalUserFriends", function()
   return {}
end)
var1.LoadingLocalUserFriends = var14
var14 = var0
local var17 = var14("LoadingLocalUserGroups", function()
   return {}
end)
var1.LoadingLocalUserGroups = var17
var17 = var0
local var21 = var17("LoadingWebResults", function(arg1)
   local var0 = {}
   var0.searchTerm = arg1
   return var0
end)
var1.LoadingWebResults = var21
var21 = var0
local var26 = var21("LoadedLocalUserFriends", function(arg1, arg2)
   local var0 = {}
   var0.success = arg1
   var0.friends = arg2
   return var0
end)
var1.LoadedLocalUserFriends = var26
var26 = var0
local var31 = var26("LoadedLocalUserGroups", function(arg1, arg2)
   local var0 = {}
   var0.success = arg1
   var0.groups = arg2
   return var0
end)
var1.LoadedLocalUserGroups = var31
var31 = var0
local var37 = var31("LoadedWebResults", function(arg1, arg2, arg3)
   local var0 = {}
   var0.success = arg1
   var0.key = arg2
   var0.results = arg3
   return var0
end)
var1.LoadedWebResults = var37
var37 = var0
local var41 = var37("SearchTextChanged", function(arg1)
   local var0 = {}
   var0.text = arg1
   return var0
end)
var1.SearchTextChanged = var41
var41 = var0
var1.CollaboratorAdded = var41("CollaboratorAdded", function(arg1, arg2, arg3)
   local var0 = {}
   var0.collaboratorType = arg1
   var0.collaboratorId = arg2
   var0.action = arg3
   return var0
end)
return var1
