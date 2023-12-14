-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Components.Menu.MenuEntry)
local var4 = var1.PureComponent:extend("MenuBar")
local function fun1(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.SelectionChanged
   local var3 = var0.Entries
   if type(var3) == "table" then
      local var0 = false
   end
   assert(true, "MenuBar.Entries must be a table")
   local var4 = {}
   local var154 = {}
   local var158 = UDim.new(0, 1)
   var154.Padding = var158
   var4.Layout = var1.createElement("UIListLayout", var154)
   local var162 = ipairs(var3)
   local var163 = var4
   local var167 = {}
   var167.Title = var0.Localization:getText("MenuItem", var169)
   if var0.Selected ~= var158 then
      local var0 = false
   end
   var167.Selected = true
   var167.ShowError = false
   var167.ShowWarning = false
   function var167.OnClicked()
      var2(var158)
   end
   
   local var178 = var1.createElement(var3, var167)
   table.insert()
   local var183 = {}
   var183.Size = UDim2.new(0, var1.MENU_BAR_WIDTH, 1, 0)
   var183.BackgroundColor3 = var1.menuBar.backgroundColor
   local var192 = 0
   var183.BorderSizePixel = var192
   var192 = var4
   return var1.createElement("Frame", var183, var192)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.SelectionChanged
   local var3 = var0.Entries
   if type(var3) == "table" then
      local var0 = false
   end
   assert(true, "MenuBar.Entries must be a table")
   local var4 = {}
   local var154 = {}
   local var158 = UDim.new(0, 1)
   var154.Padding = var158
   var4.Layout = var1.createElement("UIListLayout", var154)
   local var162 = ipairs(var3)
   local var163 = var4
   local var167 = {}
   var167.Title = var0.Localization:getText("MenuItem", var169)
   if var0.Selected ~= var158 then
      local var0 = false
   end
   var167.Selected = true
   var167.ShowError = false
   var167.ShowWarning = false
   function var167.OnClicked()
      var2(var158)
   end
   
   local var178 = var1.createElement(var3, var167)
   table.insert()
   local var183 = {}
   var183.Size = UDim2.new(0, var1.MENU_BAR_WIDTH, 1, 0)
   var183.BackgroundColor3 = var1.menuBar.backgroundColor
   local var192 = 0
   var183.BorderSizePixel = var192
   var192 = var4
   return var1.createElement("Frame", var183, var192)
end

fun1 = var2.withContext
local var194 = {}
var194.Stylizer = var2.Stylizer
var194.Localization = var2.Localization
var4 = fun1(var194)(var4)
return var4
