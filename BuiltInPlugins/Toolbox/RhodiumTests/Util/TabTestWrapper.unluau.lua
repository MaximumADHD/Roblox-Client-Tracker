-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Components.TabSet)
local var3 = var1.PureComponent:extend("TabTestWrapper")
function var3.init(arg1)
   local var344 = {}
   var344.currentTab = "Marketplace"
   arg1.state = var344
   function arg1.changeTab()
      local var0 = {}
      var0.currentTab = arg1
      return var0
   end
   
end

function var3.render(arg1, arg2)
   local var353 = {}
   var353.Size = UDim2.new(1, 0, 1, 0)
   var353.Position = UDim2.new()
   var353.CurrentWidth = 565.5
   var353.CurrentTab = arg1.state.currentTab
   local var366 = {}
   var366.Image = "rbxasset://textures/StudioToolbox/Tabs/Shop.png"
   var366.Key = "Marketplace"
   var366.Text = "Marketplace"
   local var1 = {}
   var1.Image = "rbxasset://textures/StudioToolbox/Tabs/Shop.png"
   var1.Key = "Inventory"
   var1.Text = "Inventory"
   var353.Tabs = {}
   var353.onTabSelected = arg1.changeTab
   return var1.createElement(var2, var353)
end

return var3
