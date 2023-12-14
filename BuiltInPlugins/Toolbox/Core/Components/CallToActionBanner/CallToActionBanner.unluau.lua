-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox").Packages
local var1 = require(var0.Roact)
local var2 = require(var0.Framework).UI.HoverArea
local var3 = var1.PureComponent:extend("CallToActionBanner")
local var17 = {}
local var25 = ColorSequenceKeypoint.new(0, Color3.fromHex("#0C2859"))
local var5 = ColorSequenceKeypoint.new(1, Color3.fromHex("#B8425f"))
var17.Gradient = ColorSequence.new({})
var17.GradientOff = Vector2.new(-0.34, 0)
var3.defaultProps = var17
function var3.init(arg1, arg2)
   arg1.ref = var1.createRef()
   local var42 = {}
   var42.fontSize = 14
   var42.imageWidth = 197
   var42.height = 75
   arg1.state = var42
   function arg1.onAbsoluteSizeChange(arg1)
      if arg1.AbsoluteSize.X < 285 then
         local var51 = {}
         var51.fontSize = 12
         var51.imageWidth = 125
         var51.height = 47
         arg1:setState(var51)
      end
      if arg1.AbsoluteSize.X < 350 then
         local var60 = {}
         var60.fontSize = 13
         var60.imageWidth = 150
         var60.height = 57
         arg1:setState(var60)
      end
      local var66 = {}
      var66.fontSize = 14
      var66.imageWidth = 197
      var66.height = 75
      arg1:setState(var66)
   end
   
end

function var3.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var0.Text
   local var3 = var1.fontSize
   local var4 = var1.imageWidth
   local var86 = {}
   var86.BackgroundTransparency = 1
   var86.Size = UDim2.new(1, 0, 0, var1.height)
   var86.LayoutOrder = var0.LayoutOrder
   var1.Ref = arg1.ref
   var1.Change.AbsoluteSize = arg1.onAbsoluteSizeChange
   var1.Event.MouseButton1Click = var0.OnClick
   local var104 = {}
   local var108 = {}
   var108.Cursor = "PointingHand"
   var104.HoverArea = var1.createElement(var2, var108)
   local var114 = {}
   var114.Size = UDim2.new(1, 0, 1, 0)
   local var121 = {}
   local var125 = {}
   var125.Color = var0.Gradient
   var125.Offset = var0.GradientOff
   var121.UIGradient = var1.createElement("UIGradient", var125)
   local var130 = {}
   var130.FillDirection = Enum.FillDirection.Horizontal
   var130.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var130.VerticalAlignment = Enum.VerticalAlignment.Center
   var130.SortOrder = Enum.SortOrder.LayoutOrder
   var130.Padding = UDim.new(0, 10)
   var121.UIListLayout = var1.createElement("UIListLayout", var130)
   local var143 = {}
   var143.Size = UDim2.new(1, var4 - 10, 1, 0)
   var143.BackgroundTransparency = 1
   var143.Font = Enum.Font.GothamSemibold
   var143.Text = var2 ... "  >"
   var143.TextColor3 = Color3.fromHex("#FFFFFF")
   var143.TextSize = var3
   var143.TextWrapped = true
   var143.TextXAlignment = Enum.TextXAlignment.Left
   local var161 = {}
   local var165 = {}
   var165.FillDirection = Enum.FillDirection.Horizontal
   var165.VerticalAlignment = Enum.VerticalAlignment.Center
   var165.SortOrder = Enum.SortOrder.LayoutOrder
   var161.UIListLayout = var1.createElement("UIListLayout", var165)
   local var173 = {}
   var173.PaddingLeft = UDim.new(0, 14)
   var161.Padding = var1.createElement("UIPadding", var173)
   local var182 = {}
   var182.Size = UDim2.new(1, 0, 1, 0)
   var182.BackgroundTransparency = 1
   var182.Font = Enum.Font.GothamSemibold
   var182.Text = var2 ... "  >"
   var182.TextColor3 = Color3.fromHex("#FFFFFF")
   var182.TextSize = var3
   var182.TextWrapped = true
   var182.TextXAlignment = Enum.TextXAlignment.Left
   var161.Text = var1.createElement("TextLabel", var182)
   var121.Text = var1.createElement("TextLabel", var143, var161)
   local var204 = {}
   var204.LayoutOrder = 2
   var204.Size = UDim2.new(0, var4, 1, 0)
   var204.BackgroundTransparency = 1
   var204.Image = var0.Image
   var121.Image = var1.createElement("ImageLabel", var204)
   local var6 = var1.createElement("Frame", var114, var121)
   return var1.createElement("ImageButton", var86, var104)
end

function TypedCallToActionBanner(arg1, arg2)
   return var1.createElement(var3, arg1, arg2)
end

local var6 = {}
var6.Component = var3
var6.Generator = TypedCallToActionBanner
return var6
