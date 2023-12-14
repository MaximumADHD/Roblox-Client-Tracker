-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script.Parent.Parent.Parent.Parent.Packages.Framework)
local var1 = var8.Util.Action
local var2 = {}
var8 = var1
local var14 = var8("LoadingLocalUserFriends", function()
   return {}
end)
var2.LoadingLocalUserFriends = var14
var14 = var1
local var17 = var14("LoadingLocalUserGroups", function()
   return {}
end)
var2.LoadingLocalUserGroups = var17
var17 = var1
local var21 = var17("LoadingWebResults", function(arg1)
   local var0 = {}
   var0.searchTerm = arg1
   return var0
end)
var2.LoadingWebResults = var21
var21 = var1
local var26 = var21("LoadedLocalUserFriends", function(arg1, arg2)
   local var0 = {}
   var0.success = arg1
   var0.friends = arg2
   return var0
end)
var2.LoadedLocalUserFriends = var26
var26 = var1
local var31 = var26("LoadedLocalUserGroups", function(arg1, arg2)
   local var0 = {}
   var0.success = arg1
   var0.groups = arg2
   return var0
end)
var2.LoadedLocalUserGroups = var31
var31 = var1
local var37 = var31("LoadedWebResults", function(arg1, arg2, arg3)
   local var0 = {}
   var0.success = arg1
   var0.key = arg2
   var0.results = arg3
   return var0
end)
var2.LoadedWebResults = var37
var37 = var1
local var41 = var37("SearchTextChanged", function(arg1)
   local var0 = {}
   var0.text = arg1
   return var0
end)
var2.SearchTextChanged = var41
var41 = var1
var2.CollaboratorAdded = var41("CollaboratorAdded", function(arg1, arg2, arg3)
   local var0 = {}
   var0.collaboratorType = arg1
   var0.collaboratorId = arg2
   var0.action = arg3
   return var0
end)
return var2
