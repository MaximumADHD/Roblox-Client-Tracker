-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.Pane
local var5 = require(var0.Src.Actions.ExampleAction)
local var6 = require(var0.Src.Reducers.ExampleReducer)
local var7 = var1.PureComponent:extend("ExampleRoactRoduxComponent")
local function fun0(arg1)
   return var1.createElement(var4)
end

function var7.render(arg1)
   return var1.createElement(var4)
end

fun0 = var3.withContext
local var43 = {}
var43.Analytics = var3.Analytics
var43.Localization = var3.Localization
var43.Stylizer = var2.Style.Stylizer
var7 = fun0(var43)(var7)
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
