-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework).UI.ScrollingFrame
local var3 = require(var0.Src.Components.TokenTable)
local var4 = require(var0.Src.Reducers.RootReducer)
return function(arg1)
   var1.Tag = "ScrollingAutomaticSize X-ColumnS"
   local var432 = {}
   local var436 = {}
   var436.RootInstance = arg1.StyleSheet
   var432.TokenTable = var1.createElement(var3, var436)
   return var1.createElement(var2, {}, var432)
end
