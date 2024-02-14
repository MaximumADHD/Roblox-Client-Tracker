-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Components.TabSet)
local var3 = var1.PureComponent:extend("TabTestWrapper")
function var3.init(arg1)
   local var328 = {}
   var328.currentTab = "Marketplace"
   arg1.state = var328
   function arg1.changeTab()
      local var0 = {}
      var0.currentTab = arg1
      return var0
   end
   
end

function var3.render(arg1, arg2)
   local var337 = {}
   var337.Size = UDim2.new(1, 0, 1, 0)
   var337.Position = UDim2.new()
   var337.CurrentWidth = 565.5
   var337.CurrentTab = arg1.state.currentTab
   local var350 = {}
   var350.Image = "rbxasset://textures/StudioToolbox/Tabs/Shop.png"
   var350.Key = "Marketplace"
   var350.Text = "Marketplace"
   local var1 = {}
   var1.Image = "rbxasset://textures/StudioToolbox/Tabs/Shop.png"
   var1.Key = "Inventory"
   var1.Text = "Inventory"
   var337.Tabs = {}
   var337.onTabSelected = arg1.changeTab
   return var1.createElement(var2, var337)
end

return var3
