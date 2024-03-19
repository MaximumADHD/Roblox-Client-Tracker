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
      local var41 = {}
      var41.navigation = arg1
      return var2.createElement(var1, var41, var3(arg1, arg2))
   end
end

local function fun2(arg1, arg2)
   local var55 = {}
   var55.navigation = arg1
   return var1.createElement(var4, var55)
end

function var6.APP_PAGE.Main(arg1)
   return function(arg1, arg2)
      local var63 = {}
      var63.navigation = arg1
      return var2.createElement(var1, var63, var3(arg1, arg2))
   end
end

local function fun5(arg1, arg2)
   local var79 = {}
   var79.assetId = arg1.getParam("assetId")
   var79.navigation = arg1
   var79.Size = UDim2.new(1, 0, 1, 0)
   return var1.createElement(var5, var79)
end

function var6.APP_PAGE.Detail(arg1)
   return function(arg1, arg2)
      local var93 = {}
      var93.navigation = arg1
      return var2.createElement(var1, var93, var3(arg1, arg2))
   end
end

local var100 = {}
var100.routes = {}
local var102 = var6.APP_PAGE.Main
var100.initialRouteName = var102
var102 = var2.createStackNavigator(var100)
return var2.createAppContainer(var102)
