-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = require(var0.Src.Util.Constants)
local var5 = var4.INPUT_PANE_LAYOUT
local var6 = var4.UNIMPLEMENTED_WARNING
local var7 = var2.UI.Button
local var8 = var1.PureComponent:extend("ButtonArray")
local function var9()
   warn(var6)
end

local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.OnSendClicked or var9
   local var2 = var0.Stylizer
   local var3 = var2.Sizes
   local var47 = {}
   var47.Size = UDim2.new(1, 0, 0, var3.ShortHeight)
   var47.BackgroundTransparency = 1
   var47.LayoutOrder = var5.ConfirmationButtons
   local var57 = {}
   var57.Layout = var1.createElement("UIListLayout", var2.Layout.Horizontal)
   local var66 = {}
   var66.Size = UDim2.new(0, var3.ConfirmationButtonWidth, 1, 0)
   var66.Text = "Clear"
   var66.LayoutOrder = 1
   var66.OnClick = var0.OnClearClicked or var9
   var57.Clear = var1.createElement(var7, var66)
   local var79 = {}
   var79.Size = UDim2.new(0, var3.ConfirmationButtonWidth, 1, 0)
   var79.Text = "Save"
   var79.LayoutOrder = 2
   var79.OnClick = var0.OnSaveClicked or var9
   var57.Save = var1.createElement(var7, var79)
   local var92 = {}
   var92.Size = UDim2.new(0, var3.ConfirmationButtonWidth, 1, 0)
   var92.Text = "Send"
   var92.LayoutOrder = 3
   function var92.OnClick()
      warn(var6)
   end
   
   var57.Send = var1.createElement(var7, var92)
   return var1.createElement("Frame", var47, var57)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.OnSendClicked or var9
   local var2 = var0.Stylizer
   local var3 = var2.Sizes
   local var47 = {}
   var47.Size = UDim2.new(1, 0, 0, var3.ShortHeight)
   var47.BackgroundTransparency = 1
   var47.LayoutOrder = var5.ConfirmationButtons
   local var57 = {}
   var57.Layout = var1.createElement("UIListLayout", var2.Layout.Horizontal)
   local var66 = {}
   var66.Size = UDim2.new(0, var3.ConfirmationButtonWidth, 1, 0)
   var66.Text = "Clear"
   var66.LayoutOrder = 1
   var66.OnClick = var0.OnClearClicked or var9
   var57.Clear = var1.createElement(var7, var66)
   local var79 = {}
   var79.Size = UDim2.new(0, var3.ConfirmationButtonWidth, 1, 0)
   var79.Text = "Save"
   var79.LayoutOrder = 2
   var79.OnClick = var0.OnSaveClicked or var9
   var57.Save = var1.createElement(var7, var79)
   local var92 = {}
   var92.Size = UDim2.new(0, var3.ConfirmationButtonWidth, 1, 0)
   var92.Text = "Send"
   var92.LayoutOrder = 3
   function var92.OnClick()
      warn(var6)
   end
   
   var57.Send = var1.createElement(var7, var92)
   return var1.createElement("Frame", var47, var57)
end

fun2 = var3.withContext
local var105 = {}
var105.Stylizer = var3.Stylizer
var8 = fun2(var105)(var8)
return var8
