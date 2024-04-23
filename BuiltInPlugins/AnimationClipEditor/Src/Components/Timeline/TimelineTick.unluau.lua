-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = var1.PureComponent:extend("TimelineTick")
local var4 = require(var0.Src.Components.Tooltip)
local var5 = UDim2.new(0, 25, 0, 15)
local var6 = UDim2.new(0, 5, 0, 0)
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.timelineTheme
   local var3 = var0.Height
   local var132 = var0.TickHeightScale
   local var5 = var0.PastEnd
   local var6 = var0.TimeInSeconds
   local var140 = {}
   var140.Size = UDim2.new(0, var3, 0, var3)
   var140.BackgroundTransparency = 1
   var140.BorderSizePixel = 0
   var140.Position = var0.Position
   local var149 = {}
   local var153 = {}
   if var5 then
      local var0 = var2.dimmedColor or var2.textColor
   end
   var153.TextColor3 = var2.textColor
   var153.BorderSizePixel = 0
   var153.BackgroundTransparency = 1
   var153.TextSize = var2.textSize
   var153.TextXAlignment = Enum.TextXAlignment.Left
   var153.TextYAlignment = Enum.TextYAlignment.Center
   var153.Font = var1.font
   var153.Text = var0.Time
   var153.Position = var0.LabelPosition or var6
   var153.Size = var0.LabelSize or var5
   var153.Visible = var0.ShowTime
   var149.TimeLabel = var1.createElement("TextLabel", var153)
   local var168 = {}
   var168.AnchorPoint = Vector2.new(0, 1)
   var168.Position = UDim2.new(0, 0, 1, 0)
   var168.Size = UDim2.new(0, 1, var182, 0)
   var168.BorderSizePixel = 0
   if var5 then
      local var0 = var2.dimmedColor or var2.lineColor
   end
   var168.BackgroundColor3 = var2.lineColor
   local var190 = {}
   local var191 = var6
   if var191 then
      local var195 = {}
      var195.Text = var6
      var195.ShowDelay = 0
      local var0 = var1.createElement(var4, var195)
   end
   var190.Tooltip = var191
   var149.TickLine = var1.createElement("Frame", var168, var190)
   local var202 = {}
   var202.Position = UDim2.new(0, 0, 1, 0)
   var202.Size = UDim2.new(0, 1, 50, 0)
   var202.BorderSizePixel = 0
   var202.BackgroundColor3 = var2.lineColor
   if var0.Highlight then
      local var0 = var2.lowerBrightTransparency or var2.lowerTransparency
   end
   var202.BackgroundTransparency = var2.lowerTransparency
   var149.LowerTick = var1.createElement("Frame", var202)
   return var1.createElement("Frame", var140, var149)
end

function var3.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.timelineTheme
   local var3 = var0.Height
   local var132 = var0.TickHeightScale
   local var5 = var0.PastEnd
   local var6 = var0.TimeInSeconds
   local var140 = {}
   var140.Size = UDim2.new(0, var3, 0, var3)
   var140.BackgroundTransparency = 1
   var140.BorderSizePixel = 0
   var140.Position = var0.Position
   local var149 = {}
   local var153 = {}
   if var5 then
      local var0 = var2.dimmedColor or var2.textColor
   end
   var153.TextColor3 = var2.textColor
   var153.BorderSizePixel = 0
   var153.BackgroundTransparency = 1
   var153.TextSize = var2.textSize
   var153.TextXAlignment = Enum.TextXAlignment.Left
   var153.TextYAlignment = Enum.TextYAlignment.Center
   var153.Font = var1.font
   var153.Text = var0.Time
   var153.Position = var0.LabelPosition or var6
   var153.Size = var0.LabelSize or var5
   var153.Visible = var0.ShowTime
   var149.TimeLabel = var1.createElement("TextLabel", var153)
   local var168 = {}
   var168.AnchorPoint = Vector2.new(0, 1)
   var168.Position = UDim2.new(0, 0, 1, 0)
   var168.Size = UDim2.new(0, 1, var182, 0)
   var168.BorderSizePixel = 0
   if var5 then
      local var0 = var2.dimmedColor or var2.lineColor
   end
   var168.BackgroundColor3 = var2.lineColor
   local var190 = {}
   local var191 = var6
   if var191 then
      local var195 = {}
      var195.Text = var6
      var195.ShowDelay = 0
      local var0 = var1.createElement(var4, var195)
   end
   var190.Tooltip = var191
   var149.TickLine = var1.createElement("Frame", var168, var190)
   local var202 = {}
   var202.Position = UDim2.new(0, 0, 1, 0)
   var202.Size = UDim2.new(0, 1, 50, 0)
   var202.BorderSizePixel = 0
   var202.BackgroundColor3 = var2.lineColor
   if var0.Highlight then
      local var0 = var2.lowerBrightTransparency or var2.lowerTransparency
   end
   var202.BackgroundTransparency = var2.lowerTransparency
   var149.LowerTick = var1.createElement("Frame", var202)
   return var1.createElement("Frame", var140, var149)
end

fun0 = var2.withContext
local var6 = {}
var6.Stylizer = var2.Stylizer
var3 = fun0(var6)(var3)
return var3
