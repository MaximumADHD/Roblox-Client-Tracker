-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.Pane
local var5 = require(var0.Src.Actions.ExampleAction)
local var6 = require(var0.Src.Reducers.ExampleReducer)
local var7 = var1.PureComponent:extend("ExampleRoactRoduxComponent")
local function fun9(arg1)
   return var1.createElement(var4)
end

function var7.render(arg1)
   return var1.createElement(var4)
end

fun9 = var3.withContext
local var579 = {}
var579.Analytics = var3.Analytics
var579.Localization = var3.Localization
var579.Stylizer = var2.Style.Stylizer
var7 = fun9(var579)(var7)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.DefaultStateObject = arg1.DefaultStateObject
   return var0
end, function(arg1)
   local var0 = {}
   function var0.dispatchExampleAction(arg1)
      return var1.createElement(var4)
   end
   
   return var0
end)(var7)
