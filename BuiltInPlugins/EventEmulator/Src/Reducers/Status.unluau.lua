-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.Constants).VIEW_ID
local var3 = var0.Src.Actions
local var42 = {}
var42.ActiveView = var2.RBXEvent
local var44 = {}
var44.Namespace = "UpdateNotificationBadge"
var44.Detail = "{\"badgeString\": \"1\"}"
var44.DetailType = "NotificationIcon"
var42.Parameters = var44
var42.ThemeName = "dark"
local var49 = {}
var49.Key = "ThemeUpdate"
var49.Value = "dark"
var42.MemStoragePair = var49
var42.CurrentEventName = var2.RBXEvent
function require(var3.SetView).name(arg1, arg2)
   local var58 = var1.Dictionary
   var58 = arg1
   local var60 = {}
   var60.ActiveView = arg2.view
   return var58.join(var58, var60)
end

function require(var3.SetRBXParameters).name(arg1, arg2)
   local var67 = var1.Dictionary
   var67 = arg1
   local var69 = {}
   var69.Parameters = arg2.parameters
   return var67.join(var67, var69)
end

function require(var3.SetTheme).name(arg1, arg2)
   local var76 = var1.Dictionary
   var76 = arg1
   local var78 = {}
   var78.ThemeName = arg2.themeName
   return var76.join(var76, var78)
end

function require(var3.SetMemStoragePair).name(arg1, arg2)
   local var0 = {}
   var0.Key = arg2.pair.Key or arg1.MemStoragePair.Key
   var0.Value = arg2.pair.Value or arg1.MemStoragePair.Value
   local var96 = var1.Dictionary
   var96 = arg1
   local var98 = {}
   var98.MemStoragePair = var0
   return var96.join(var96, var98)
end

function require(var3.ClearMemStoragePair).name(arg1, arg2)
   local var104 = var1.Dictionary
   var104 = arg1
   local var106 = {}
   local var0 = {}
   var0.Key = ""
   var0.Value = ""
   var106.MemStoragePair = var0
   return var104.join(var104, var106)
end

function require(var3.ClearRBXParameters).name(arg1, arg2)
   local var115 = var1.Dictionary
   var115 = arg1
   local var117 = {}
   local var0 = {}
   var0.Detail = ""
   var0.Namespace = ""
   var0.DetailType = ""
   var117.Parameters = var0
   return var115.join(var115, var117)
end

function require(var3.ChangeCurrentEventName).name(arg1, arg2)
   local var127 = var1.Dictionary
   var127 = arg1
   local var129 = {}
   var129.CurrentEventName = arg2.name
   return var127.join(var127, var129)
end

return require(var0.Packages.Rodux).createReducer(var42, {})
