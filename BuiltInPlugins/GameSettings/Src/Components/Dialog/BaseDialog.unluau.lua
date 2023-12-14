-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Packages.Cryo)
local var4 = var2.UI.Pane
local var5 = var2.ContextServices
local var6 = require(var0.Src.Components.ButtonBar)
local var7 = var1.PureComponent:extend("BaseDialog")
local function var8(arg1)
   if arg1[2] then
      local var0 = {}
      var0.Name = arg1[1]
      var0.Active = true
      var0.Value = false
      local var1 = {}
      var1.Name = arg1[2]
      var1.Default = true
      var1.Active = true
      var1.Value = true
      return { {}, {} }
   end
   local var0 = {}
   var0.Name = arg1[1]
   var0.Default = true
   var0.Active = true
   var0.Value = true
   return { {} }
end

local function fun1(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var160 = {}
   var160.Size = UDim2.new(1, 0, 1, 0)
   var160.Layout = Enum.FillDirection.Vertical
   var160.AutomaticSize = Enum.AutomaticSize.Y
   var160.BackgroundColor3 = var1.dialog.background
   var160.Spacing = var1.dialog.spacing
   local var179 = {}
   local var183 = {}
   var183.Position = UDim2.new(0, 0, 1, var1.buttonBar.offset)
   var183.AnchorPoint = Vector2.new(0, 1)
   var183.Buttons = var8(var0.Buttons)
   var183.LayoutOrder = 100
   var183.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var183.ButtonClicked = var0.OnResult
   var179.Buttons = var1.createElement(var6, var183)
   return var1.createElement(var4, var160, var3.Dictionary.join(var0[var1.Children], var179))
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var160 = {}
   var160.Size = UDim2.new(1, 0, 1, 0)
   var160.Layout = Enum.FillDirection.Vertical
   var160.AutomaticSize = Enum.AutomaticSize.Y
   var160.BackgroundColor3 = var1.dialog.background
   var160.Spacing = var1.dialog.spacing
   local var179 = {}
   local var183 = {}
   var183.Position = UDim2.new(0, 0, 1, var1.buttonBar.offset)
   var183.AnchorPoint = Vector2.new(0, 1)
   var183.Buttons = var8(var0.Buttons)
   var183.LayoutOrder = 100
   var183.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var183.ButtonClicked = var0.OnResult
   var179.Buttons = var1.createElement(var6, var183)
   return var1.createElement(var4, var160, var3.Dictionary.join(var0[var1.Children], var179))
end

fun1 = var5.withContext
local var204 = {}
var204.Stylizer = var5.Stylizer
var7 = fun1(var204)(var7)
return var7
