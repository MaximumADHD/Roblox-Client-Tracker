-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.RoactNavigation)
local var3 = require(var0.Src.Components.Navigation.NavigatableView)
local var4 = require(var0.Src.Components.ManagementMainView)
local var5 = require(var0.Src.Components.PluginDetails.PluginDetailsView)
local var6 = require(var0.Src.Util.Constants)
local function fun0(arg1)
   return function(arg1, arg2)
      local var55 = {}
      var55.navigation = arg1
      return var2.createElement(var1, var55, var3(arg1, arg2))
   end
end

local function fun2(arg1, arg2)
   local var10 = {}
   var10.navigation = arg1
   return var1.createElement(var4, var10)
end

function var6.APP_PAGE.Main(arg1)
   return function(arg1, arg2)
      local var18 = {}
      var18.navigation = arg1
      return var2.createElement(var1, var18, var3(arg1, arg2))
   end
end

local function fun5(arg1, arg2)
   local var34 = {}
   var34.assetId = arg1.getParam("assetId")
   var34.navigation = arg1
   var34.Size = UDim2.new(1, 0, 1, 0)
   return var1.createElement(var5, var34)
end

function var6.APP_PAGE.Detail(arg1)
   return function(arg1, arg2)
      local var48 = {}
      var48.navigation = arg1
      return var2.createElement(var1, var48, var3(arg1, arg2))
   end
end

local var55 = {}
var55.routes = {}
local var57 = var6.APP_PAGE.Main
var55.initialRouteName = var57
var57 = var2.createStackNavigator(var55)
return var2.createAppContainer(var57)
