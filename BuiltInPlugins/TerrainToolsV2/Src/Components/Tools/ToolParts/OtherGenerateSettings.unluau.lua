-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = script.Parent
local var4 = require(var3.LabeledElementPair)
local var5 = require(var3.LabeledTextInput)
local var6 = require(var3.Panel)
local var7 = var1.PureComponent:extend(script.Name)
function var7.init(arg1)
   function arg1.onSeedFocusLost(arg1, arg2)
      if utf8.len(arg2) == 0 then
         arg1.props.setSeed(arg1.props.seed)
         return arg1.props.seed
      end
      local var48 = arg1.props
      var48 = arg2
      var48.setSeed(var48)
   end
   
end

local function fun2(arg1)
   local var0 = arg1.props.Localization
   local var56 = {}
   var56.Title = var0:getText("Generate", "OtherSettings")
   var56.LayoutOrder = arg1.props.LayoutOrder
   local var63 = {}
   local var67 = {}
   var67.Size = UDim2.new(1, 0, 0, 60)
   var67.Text = var0:getText("Generate", "Seed")
   var67.SizeToContent = true
   local var79 = {}
   local var83 = {}
   var83.MaxGraphemes = 12
   var83.IgnoreNumFormatting = true
   var83.Text = arg1.props.seed
   var83.OnFocusLost = arg1.onSeedFocusLost
   var79.SeedTextBox = var1.createElement(var5, var83)
   var63.Seed = var1.createElement(var4, var67, var79)
   return var1.createElement(var6, var56, var63)
end

function var7.render(arg1)
   local var0 = arg1.props.Localization
   local var56 = {}
   var56.Title = var0:getText("Generate", "OtherSettings")
   var56.LayoutOrder = arg1.props.LayoutOrder
   local var63 = {}
   local var67 = {}
   var67.Size = UDim2.new(1, 0, 0, 60)
   var67.Text = var0:getText("Generate", "Seed")
   var67.SizeToContent = true
   local var79 = {}
   local var83 = {}
   var83.MaxGraphemes = 12
   var83.IgnoreNumFormatting = true
   var83.Text = arg1.props.seed
   var83.OnFocusLost = arg1.onSeedFocusLost
   var79.SeedTextBox = var1.createElement(var5, var83)
   var63.Seed = var1.createElement(var4, var67, var79)
   return var1.createElement(var6, var56, var63)
end

fun2 = var2.withContext
local var92 = {}
var92.Localization = var2.Localization
var7 = fun2(var92)(var7)
return var7
