-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Components.TabSet)
local var3 = var1.PureComponent:extend("TabTestWrapper")
function var3.init(arg1)
   local var270 = {}
   var270.currentTab = "Marketplace"
   arg1.state = var270
   function arg1.changeTab()
      local var0 = {}
      var0.currentTab = arg1
      return var0
   end
   
end

function var3.render(arg1, arg2)
   local var279 = {}
   var279.Size = UDim2.new(1, 0, 1, 0)
   var279.Position = UDim2.new()
   var279.CurrentWidth = 565.5
   var279.CurrentTab = arg1.state.currentTab
   local var292 = {}
   var292.Image = "rbxasset://textures/StudioToolbox/Tabs/Shop.png"
   var292.Key = "Marketplace"
   var292.Text = "Marketplace"
   local var1 = {}
   var1.Image = "rbxasset://textures/StudioToolbox/Tabs/Shop.png"
   var1.Key = "Inventory"
   var1.Text = "Inventory"
   var279.Tabs = {}
   var279.onTabSelected = arg1.changeTab
   return var1.createElement(var2, var279)
end

return var3
