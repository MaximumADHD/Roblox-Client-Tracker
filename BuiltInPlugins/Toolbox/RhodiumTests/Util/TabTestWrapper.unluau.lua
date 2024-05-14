-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Components.TabSet)
local var3 = var1.PureComponent:extend("TabTestWrapper")
function var3.init(arg1)
   local var258 = {}
   var258.currentTab = "Marketplace"
   arg1.state = var258
   function arg1.changeTab()
      local var0 = {}
      var0.currentTab = arg1
      return var0
   end
   
end

function var3.render(arg1, arg2)
   local var267 = {}
   var267.Size = UDim2.new(1, 0, 1, 0)
   var267.Position = UDim2.new()
   var267.CurrentWidth = 565.5
   var267.CurrentTab = arg1.state.currentTab
   local var280 = {}
   var280.Image = "rbxasset://textures/StudioToolbox/Tabs/Shop.png"
   var280.Key = "Marketplace"
   var280.Text = "Marketplace"
   local var1 = {}
   var1.Image = "rbxasset://textures/StudioToolbox/Tabs/Shop.png"
   var1.Key = "Inventory"
   var1.Text = "Inventory"
   var267.Tabs = {}
   var267.onTabSelected = arg1.changeTab
   return var1.createElement(var2, var267)
end

return var3
