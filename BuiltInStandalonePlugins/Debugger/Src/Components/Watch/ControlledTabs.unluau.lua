-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).UI.Tabs
local var3 = require(var0.Src.Models.Watch.TableTab)
local var4 = require(var0.Src.Actions.Watch.SetTab)
local var5 = var1.PureComponent:extend("Tabs")
function var5.render(arg1)
   local var0 = arg1.props
   local var459 = {}
   var459.Tabs = var0.Tabs
   var459.SelectedTab = var0.selectedTab
   var459.OnTabSelected = var0.onTabSelected
   var459.LayoutOrder = var0.LayoutOrder
   var459.Size = var0.Size
   var459.AutomaticSize = Enum.AutomaticSize.X
   return var1.createElement(var2, var459)
end

var5 = require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   if arg1.Watch.currentTab == "selectedTab" then
      local var0 = arg2.Tabs[1] or arg2.Tabs[2]
   end
   local var0 = {}
   var0.selectedTab = arg2.Tabs[2]
   return var0
end, function(arg1)
   local var0 = {}
   function var0.onTabSelected(arg1)
      local var0 = arg1.props
      local var489 = {}
      var489.Tabs = var0.Tabs
      var489.SelectedTab = var0.selectedTab
      var489.OnTabSelected = var0.onTabSelected
      var489.LayoutOrder = var0.LayoutOrder
      var489.Size = var0.Size
      var489.AutomaticSize = Enum.AutomaticSize.X
      return var1.createElement(var2, var489)
   end
   
   return var0
end)(var5)
return var5
