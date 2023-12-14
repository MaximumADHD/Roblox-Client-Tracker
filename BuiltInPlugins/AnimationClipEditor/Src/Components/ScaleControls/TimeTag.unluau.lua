-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.Pane
local var5 = var1.PureComponent:extend("TimeTag")
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var31 = {}
   var31.Style = "BorderBox"
   var31.BackgroundColor3 = var1.scaleControlsTheme.mainColor
   var31.BorderSizePixel = 0
   var31.AnchorPoint = var0.AnchorPoint
   var31.Size = var0.Size
   var31.Position = var0.Position
   var31.ZIndex = var0.ZIndex
   local var36 = {}
   local var40 = {}
   var40.BackgroundTransparency = 1
   var40.Position = UDim2.new(0.5, 0, 0.5, 0)
   var40.AnchorPoint = Vector2.new(0.5, 0.5)
   var40.Size = UDim2.new(1, 65532, 1, 65534)
   var40.TextXAlignment = Enum.TextXAlignment.Center
   var40.TextYAlignment = Enum.TextYAlignment.Center
   var40.Text = var0.Time
   var40.TextColor3 = var1.scaleControlsTheme.textColor
   var40.TextSize = var1.scaleControlsTheme.textSize
   var40.Font = var1.font
   var36.Time = var1.createElement("TextLabel", var40)
   return var1.createElement(var4, var31, var36)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var31 = {}
   var31.Style = "BorderBox"
   var31.BackgroundColor3 = var1.scaleControlsTheme.mainColor
   var31.BorderSizePixel = 0
   var31.AnchorPoint = var0.AnchorPoint
   var31.Size = var0.Size
   var31.Position = var0.Position
   var31.ZIndex = var0.ZIndex
   local var36 = {}
   local var40 = {}
   var40.BackgroundTransparency = 1
   var40.Position = UDim2.new(0.5, 0, 0.5, 0)
   var40.AnchorPoint = Vector2.new(0.5, 0.5)
   var40.Size = UDim2.new(1, 65532, 1, 65534)
   var40.TextXAlignment = Enum.TextXAlignment.Center
   var40.TextYAlignment = Enum.TextYAlignment.Center
   var40.Text = var0.Time
   var40.TextColor3 = var1.scaleControlsTheme.textColor
   var40.TextSize = var1.scaleControlsTheme.textSize
   var40.Font = var1.font
   var36.Time = var1.createElement("TextLabel", var40)
   return var1.createElement(var4, var31, var36)
end

fun0 = var3.withContext
local var67 = {}
var67.Stylizer = var3.Stylizer
var5 = fun0(var67)(var5)
return var5
