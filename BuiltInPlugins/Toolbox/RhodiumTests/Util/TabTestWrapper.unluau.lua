-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Components.TabSet)
local var3 = var1.PureComponent:extend("TabTestWrapper")
function var3.init(arg1)
   local var354 = {}
   var354.currentTab = "Marketplace"
   arg1.state = var354
   function arg1.changeTab()
      local var0 = {}
      var0.currentTab = arg1
      return var0
   end
   
end

function var3.render(arg1, arg2)
   local var363 = {}
   var363.Size = UDim2.new(1, 0, 1, 0)
   var363.Position = UDim2.new()
   var363.CurrentWidth = 565.5
   var363.CurrentTab = arg1.state.currentTab
   local var376 = {}
   var376.Image = "rbxasset://textures/StudioToolbox/Tabs/Shop.png"
   var376.Key = "Marketplace"
   var376.Text = "Marketplace"
   local var1 = {}
   var1.Image = "rbxasset://textures/StudioToolbox/Tabs/Shop.png"
   var1.Key = "Inventory"
   var1.Text = "Inventory"
   var363.Tabs = {}
   var363.onTabSelected = arg1.changeTab
   return var1.createElement(var2, var363)
end

return var3
