-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var18 = {}
var18.screensTable = {}
var18.currentScreen = require(var0.Src.Util.Screens).MAIN
var18.previousScreens = {}
var18.nextScreens = {}
local var23 = {}
function var23.SetScreen(arg1, arg2)
   local var27 = var1.Dictionary
   var27 = arg1
   local var29 = {}
   var29.currentScreen = arg2.screen
   arg1.previousScreens + 1 = arg1.currentScreen
   var29.previousScreens = var1.Dictionary.join(arg1.previousScreens, {})
   var29.nextScreens = {}
   return var27.join(var27, var29)
end

function var23.SetToPreviousScreen(arg1, arg2)
   if arg1.previousScreens > 0 then
      local var0 = false
   end
   assert(true, "previousScreens should not be empty")
   local var53 = var1.Dictionary
   var53 = arg1
   local var55 = {}
   var55.currentScreen = arg1.previousScreens[arg1.previousScreens]
   local var67 = unpack(arg1.previousScreens, 1, arg1.previousScreens - 1)
   var55.previousScreens = {}
   arg1.nextScreens + 1 = arg1.currentScreen
   var55.nextScreens = var1.Dictionary.join(arg1.nextScreens, {})
   return var53.join(var53, var55)
end

function var23.SetToNextScreen(arg1, arg2)
   if arg1.nextScreens > 0 then
      local var0 = false
   end
   assert(true, "nextScreens should not be empty")
   local var89 = var1.Dictionary
   var89 = arg1
   local var91 = {}
   var91.currentScreen = arg1.nextScreens[arg1.nextScreens]
   arg1.previousScreens + 1 = arg1.currentScreen
   var91.previousScreens = var1.Dictionary.join(arg1.previousScreens, {})
   local var0 = unpack(arg1.nextScreens, 1, arg1.nextScreens - 1)
   var91.nextScreens = {}
   return var89.join(var89, var91)
end

return require(var0.Packages.Rodux).createReducer(var18, var23)
