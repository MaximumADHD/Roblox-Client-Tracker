-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.Checkbox
local var5 = var1.PureComponent:extend("CheckBoxModule")
function var5.init(arg1, arg2)
   function arg1.onActivated()
      arg2.CheckBoxCallback(arg2.ItemKey)
   end
   
end

local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.ItemKey
   local var35 = {}
   var35.Size = var1.CHECKBOX_FRAME_SIZE
   var35.BackgroundTransparency = 1
   local var38 = {}
   local var42 = {}
   var42.PaddingLeft = var1.LISTITEM_INDENT_LEFT
   var38.Padding = var1.createElement("UIPadding", var42)
   local var48 = {}
   var48.Checked = var0.Selected
   var48.Disabled = var0.Enabled
   var48.Key = var2
   var48.OnClick = arg1.onActivated
   var48.Text = var2
   var38.CheckBox = var1.createElement(var4, var48)
   return var1.createElement("Frame", var35, var38)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.ItemKey
   local var35 = {}
   var35.Size = var1.CHECKBOX_FRAME_SIZE
   var35.BackgroundTransparency = 1
   local var38 = {}
   local var42 = {}
   var42.PaddingLeft = var1.LISTITEM_INDENT_LEFT
   var38.Padding = var1.createElement("UIPadding", var42)
   local var48 = {}
   var48.Checked = var0.Selected
   var48.Disabled = var0.Enabled
   var48.Key = var2
   var48.OnClick = arg1.onActivated
   var48.Text = var2
   var38.CheckBox = var1.createElement(var4, var48)
   return var1.createElement("Frame", var35, var38)
end

fun2 = var3.withContext
local var53 = {}
var53.Stylizer = var3.Stylizer
var5 = fun2(var53)(var5)
return var5
