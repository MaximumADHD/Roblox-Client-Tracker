-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Components.TabSet)
local var3 = var1.PureComponent:extend("TabTestWrapper")
function var3.init(arg1)
   local var350 = {}
   var350.currentTab = "Marketplace"
   arg1.state = var350
   function arg1.changeTab()
      local var0 = {}
      var0.currentTab = arg1
      return var0
   end
   
end

function var3.render(arg1, arg2)
   local var359 = {}
   var359.Size = UDim2.new(1, 0, 1, 0)
   var359.Position = UDim2.new()
   var359.CurrentWidth = 565.5
   var359.CurrentTab = arg1.state.currentTab
   local var372 = {}
   var372.Image = "rbxasset://textures/StudioToolbox/Tabs/Shop.png"
   var372.Key = "Marketplace"
   var372.Text = "Marketplace"
   local var1 = {}
   var1.Image = "rbxasset://textures/StudioToolbox/Tabs/Shop.png"
   var1.Key = "Inventory"
   var1.Text = "Inventory"
   var359.Tabs = {}
   var359.onTabSelected = arg1.changeTab
   return var1.createElement(var2, var359)
end

return var3
