-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Packages.Framework)
local var4 = var3.ContextServices
local var5 = var3.UI
local var6 = var5.TextLabel
local var7 = var5.List
local var8 = var2.PureComponent:extend("LongText")
local function fun2(arg1)
   local var0 = string.split(arg1.props.Text, "\n")
   local var38 = {}
   var38.BackgroundTransparency = 1
   var38.Size = UDim2.new(1, 0, 0, math.min(arg1.props.MaxHeight, var0 * 20))
   var38.Position = arg1.props.Position
   var38.AnchorPoint = arg1.props.AnchorPoint
   var38.AutomaticSize = arg1.props.AutomaticSize
   var38.LayoutOrder = arg1.props.LayoutOrder
   local var59 = {}
   local var63 = {}
   var63.Rows = var0
   var63.RowHeight = 20
   function var63.RowComponent(arg1)
      local var69 = {}
      var69.Text = arg1.Text
      var69.LayoutOrder = arg1.LayoutOrder
      var69.Position = arg1.Position
      var69.Size = arg1.Size
      var69.Font = arg1.Font
      var69.FontFace = arg1.FontFace
      var69.TextXAlignment = arg1.TextXAlignment
      var69.TextYAlignment = arg1.TextYAlignment
      var69.RichText = arg1.RichText
      return var2.createElement(var6, var69)
   end
   
   function var63.GetRowProps(arg1, arg2, arg3, arg4)
      local var0 = {}
      var0.Text = arg1
      var0.LayoutOrder = arg2
      var0.Position = arg3
      var0.Size = arg4
      var0.Font = arg1.props.Font
      var0.FontFace = arg1.props.FontFace
      var0.TextXAlignment = arg1.props.TextXAlignment
      var0.TextYAlignment = arg1.props.TextYAlignment
      var0.RichText = arg1.props.RichText
      return var0
   end
   
   var59.List = var2.createElement(var7, var63)
   return var2.createElement("Frame", var38, var59)
end

function var8.render(arg1)
   local var0 = string.split(arg1.props.Text, "\n")
   local var38 = {}
   var38.BackgroundTransparency = 1
   var38.Size = UDim2.new(1, 0, 0, math.min(arg1.props.MaxHeight, var0 * 20))
   var38.Position = arg1.props.Position
   var38.AnchorPoint = arg1.props.AnchorPoint
   var38.AutomaticSize = arg1.props.AutomaticSize
   var38.LayoutOrder = arg1.props.LayoutOrder
   local var59 = {}
   local var63 = {}
   var63.Rows = var0
   var63.RowHeight = 20
   function var63.RowComponent(arg1)
      local var69 = {}
      var69.Text = arg1.Text
      var69.LayoutOrder = arg1.LayoutOrder
      var69.Position = arg1.Position
      var69.Size = arg1.Size
      var69.Font = arg1.Font
      var69.FontFace = arg1.FontFace
      var69.TextXAlignment = arg1.TextXAlignment
      var69.TextYAlignment = arg1.TextYAlignment
      var69.RichText = arg1.RichText
      return var2.createElement(var6, var69)
   end
   
   function var63.GetRowProps(arg1, arg2, arg3, arg4)
      local var0 = {}
      var0.Text = arg1
      var0.LayoutOrder = arg2
      var0.Position = arg3
      var0.Size = arg4
      var0.Font = arg1.props.Font
      var0.FontFace = arg1.props.FontFace
      var0.TextXAlignment = arg1.props.TextXAlignment
      var0.TextYAlignment = arg1.props.TextYAlignment
      var0.RichText = arg1.props.RichText
      return var0
   end
   
   var59.List = var2.createElement(var7, var63)
   return var2.createElement("Frame", var38, var59)
end

fun2 = var4.withContext
local var102 = {}
var102.Analytics = var4.Analytics
var102.Localization = var4.Localization
var102.Stylizer = var3.Style.Stylizer
var8 = fun2(var102)(var8)
return var8
