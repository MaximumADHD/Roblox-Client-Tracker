-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Resources.Constants)
local var3 = require(var0.Src.Util.AssertType)
return require(script.Parent.Action)(script.Name, function(arg1)
   local var27 = var3
   var27 = arg1
   var27.assertNullableType(var27, "table", "SetGameInfo arg")
   local var1 = arg1 or {}
   local var2 = var1.games
   local var3 = var1.nextPageCursor
   local var4 = var1.previousPageCursor
   local var38 = var3
   var38 = var2
   var38.assertType(var38, "table", "SetGameInfo.games")
   local var42 = var3
   var42 = var3
   var42.assertNullableType(var42, "string", "SetGameInfo.nextPageCursor")
   local var46 = var3
   var46 = var4
   var46.assertNullableType(var46, "string", "SetGameInfo.previousPageCursor")
   local var8 = {}
   local var9 = {}
   var9.minimumAge = var1.minimumAge
   var9.games = var2
   local var54 = var2.QUERY_STATE.QUERY_STATE_SUCCESS
   var9.queryState = var54
   var54 = var3
   local var57 = var54 or var1.None
   var9.nextPageCursor = var57
   var57 = var4
   var9.previousPageCursor = var57 or var1.None
   var8.gameInfo = var9
   return var8
end)
