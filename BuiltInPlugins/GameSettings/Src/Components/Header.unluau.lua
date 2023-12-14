-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Packages.Cryo)
local var4 = var2.ContextServices
local var5 = var2.Util.GetTextSize
local var6 = var1.PureComponent:extend("Header")
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = nil
   local var3 = var5(var0.Title, var1.fontStyle.Header.TextSize, var1.fontStyle.Header.Font)
   var2 = UDim2.new(0, var3.X, 0, var3.Y)
   local var51 = {}
   var51.Size = var2
   var51.Text = var0.Title
   var51.BackgroundTransparency = 1
   var51.BorderSizePixel = 0
   var51.TextXAlignment = Enum.TextXAlignment.Left
   local var4 = Enum.TextYAlignment.Bottom
   var51.TextYAlignment = var4
   local var5 = var0.LayoutOrder
   var51.LayoutOrder = var4
   return var1.createElement("TextLabel", var3.Dictionary.join(var1.fontStyle.Header, var51))
end

function var6.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = nil
   local var3 = var5(var0.Title, var1.fontStyle.Header.TextSize, var1.fontStyle.Header.Font)
   var2 = UDim2.new(0, var3.X, 0, var3.Y)
   local var51 = {}
   var51.Size = var2
   var51.Text = var0.Title
   var51.BackgroundTransparency = 1
   var51.BorderSizePixel = 0
   var51.TextXAlignment = Enum.TextXAlignment.Left
   local var4 = Enum.TextYAlignment.Bottom
   var51.TextYAlignment = var4
   local var5 = var0.LayoutOrder
   var51.LayoutOrder = var4
   return var1.createElement("TextLabel", var3.Dictionary.join(var1.fontStyle.Header, var51))
end

fun0 = var4.withContext
local var60 = {}
var60.Stylizer = var4.Stylizer
var6 = fun0(var60)(var6)
return var6
