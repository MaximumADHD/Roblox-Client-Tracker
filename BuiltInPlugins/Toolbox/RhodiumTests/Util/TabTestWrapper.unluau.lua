-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Components.TabSet)
local var3 = var1.PureComponent:extend("TabTestWrapper")
function var3.init(arg1)
   local var264 = {}
   var264.currentTab = "Marketplace"
   arg1.state = var264
   function arg1.changeTab()
      local var0 = {}
      var0.currentTab = arg1
      return var0
   end
   
end

function var3.render(arg1, arg2)
   local var273 = {}
   var273.Size = UDim2.new(1, 0, 1, 0)
   var273.Position = UDim2.new()
   var273.CurrentWidth = 565.5
   var273.CurrentTab = arg1.state.currentTab
   local var286 = {}
   var286.Image = "rbxasset://textures/StudioToolbox/Tabs/Shop.png"
   var286.Key = "Marketplace"
   var286.Text = "Marketplace"
   local var1 = {}
   var1.Image = "rbxasset://textures/StudioToolbox/Tabs/Shop.png"
   var1.Key = "Inventory"
   var1.Text = "Inventory"
   var273.Tabs = {}
   var273.onTabSelected = arg1.changeTab
   return var1.createElement(var2, var273)
end

return var3
