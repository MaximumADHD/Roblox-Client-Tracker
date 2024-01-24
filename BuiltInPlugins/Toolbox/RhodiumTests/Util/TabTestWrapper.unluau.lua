-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Components.TabSet)
local var3 = var1.PureComponent:extend("TabTestWrapper")
function var3.init(arg1)
   local var322 = {}
   var322.currentTab = "Marketplace"
   arg1.state = var322
   function arg1.changeTab()
      local var0 = {}
      var0.currentTab = arg1
      return var0
   end
   
end

function var3.render(arg1, arg2)
   local var331 = {}
   var331.Size = UDim2.new(1, 0, 1, 0)
   var331.Position = UDim2.new()
   var331.CurrentWidth = 565.5
   var331.CurrentTab = arg1.state.currentTab
   local var344 = {}
   var344.Image = "rbxasset://textures/StudioToolbox/Tabs/Shop.png"
   var344.Key = "Marketplace"
   var344.Text = "Marketplace"
   local var1 = {}
   var1.Image = "rbxasset://textures/StudioToolbox/Tabs/Shop.png"
   var1.Key = "Inventory"
   var1.Text = "Inventory"
   var331.Tabs = {}
   var331.onTabSelected = arg1.changeTab
   return var1.createElement(var2, var331)
end

return var3
