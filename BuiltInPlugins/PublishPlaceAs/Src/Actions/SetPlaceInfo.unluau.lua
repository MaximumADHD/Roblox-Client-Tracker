-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.AssertType)
local var3 = require(var0.Src.Resources.Constants)
return require(script.Parent.Action)(script.Name, function(arg1)
   local var27 = var2
   var27 = arg1
   var27.assertNullableType(var27, "table", "SetPlaceInfo arg")
   local var1 = arg1 or {}
   local var2 = var1.places
   local var3 = var1.nextPageCursor
   local var4 = var1.previousPageCursor
   local var5 = var1.parentGame
   local var38 = var2
   var38 = var2
   var38.assertType(var38, "table", "SetPlaceInfo.places")
   local var42 = var2
   var42 = var3
   var42.assertNullableType(var42, "string", "SetPlaceInfo.nextPageCursor")
   local var46 = var2
   var46 = var4
   var46.assertNullableType(var46, "string", "SetPlaceInfo.previousPageCursor")
   local var50 = var2
   var50 = var5
   var50.assertNullableType(var50, "table", "SetPlaceInfo.parentGame { name : String, universeId : Number }")
   if var5 == "assertNullableType" then
      var2.assertType(var5.name, "string", "SetPlaceInfo.parentGame.name")
      var2.assertType(var5.universeId, "number", "SetPlaceInfo.parentGame.universeId")
   end
   local var10 = {}
   local var11 = {}
   var11.places = var2
   local var12 = var3.QUERY_STATE.QUERY_STATE_SUCCESS
   var11.queryState = var12
   var12 = var3
   while not var12 do
      local var0 = var1.None
   end
   var11.nextPageCursor = var12
   var12 = var4
   while not var12 do
      local var0 = var1.None
   end
   var11.previousPageCursor = var12
   var12 = var5
   while not var12 do
      local var0 = var1.None
   end
   var11.parentGame = var12
   var10.placeInfo = var11
   return var10
end)
