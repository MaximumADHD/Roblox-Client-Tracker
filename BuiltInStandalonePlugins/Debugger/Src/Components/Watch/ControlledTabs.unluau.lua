-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).UI.Tabs
local var3 = require(var0.Src.Models.Watch.TableTab)
local var4 = require(var0.Src.Actions.Watch.SetTab)
local var5 = var1.PureComponent:extend("Tabs")
function var5.render(arg1)
   local var0 = arg1.props
   local var40 = {}
   var40.Tabs = var0.Tabs
   var40.SelectedTab = var0.selectedTab
   var40.OnTabSelected = var0.onTabSelected
   var40.LayoutOrder = var0.LayoutOrder
   var40.Size = var0.Size
   var40.AutomaticSize = Enum.AutomaticSize.X
   return var1.createElement(var2, var40)
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
      local var70 = {}
      var70.Tabs = var0.Tabs
      var70.SelectedTab = var0.selectedTab
      var70.OnTabSelected = var0.onTabSelected
      var70.LayoutOrder = var0.LayoutOrder
      var70.Size = var0.Size
      var70.AutomaticSize = Enum.AutomaticSize.X
      return var1.createElement(var2, var70)
   end
   
   return var0
end)(var5)
return var5
