-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = var1.PureComponent:extend("TimelineTick")
local var4 = require(var0.Src.Components.Tooltip)
local var5 = UDim2.new(0, 25, 0, 15)
local var6 = UDim2.new(0, 5, 0, 0)
local function fun1(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.timelineTheme
   local var3 = var0.Height
   local var176 = var0.TickHeightScale
   local var5 = var0.PastEnd
   local var6 = var0.TimeInSeconds
   local var184 = {}
   var184.Size = UDim2.new(0, var3, 0, var3)
   var184.BackgroundTransparency = 1
   var184.BorderSizePixel = 0
   var184.Position = var0.Position
   local var193 = {}
   local var197 = {}
   if var5 then
      local var0 = var2.dimmedColor or var2.textColor
   end
   var197.TextColor3 = var2.textColor
   var197.BorderSizePixel = 0
   var197.BackgroundTransparency = 1
   var197.TextSize = var2.textSize
   var197.TextXAlignment = Enum.TextXAlignment.Left
   var197.TextYAlignment = Enum.TextYAlignment.Center
   var197.Font = var1.font
   var197.Text = var0.Time
   var197.Position = var0.LabelPosition or var6
   var197.Size = var0.LabelSize or var5
   var197.Visible = var0.ShowTime
   var193.TimeLabel = var1.createElement("TextLabel", var197)
   local var212 = {}
   var212.AnchorPoint = Vector2.new(0, 1)
   var212.Position = UDim2.new(0, 0, 1, 0)
   var212.Size = UDim2.new(0, 1, var226, 0)
   var212.BorderSizePixel = 0
   if var5 then
      local var0 = var2.dimmedColor or var2.lineColor
   end
   var212.BackgroundColor3 = var2.lineColor
   local var234 = {}
   local var235 = var6
   if var235 then
      local var239 = {}
      var239.Text = var6
      var239.ShowDelay = 0
      local var0 = var1.createElement(var4, var239)
   end
   var234.Tooltip = var235
   var193.TickLine = var1.createElement("Frame", var212, var234)
   local var246 = {}
   var246.Position = UDim2.new(0, 0, 1, 0)
   var246.Size = UDim2.new(0, 1, 50, 0)
   var246.BorderSizePixel = 0
   var246.BackgroundColor3 = var2.lineColor
   if var0.Highlight then
      local var0 = var2.lowerBrightTransparency or var2.lowerTransparency
   end
   var246.BackgroundTransparency = var2.lowerTransparency
   var193.LowerTick = var1.createElement("Frame", var246)
   return var1.createElement("Frame", var184, var193)
end

function var3.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.timelineTheme
   local var3 = var0.Height
   local var176 = var0.TickHeightScale
   local var5 = var0.PastEnd
   local var6 = var0.TimeInSeconds
   local var184 = {}
   var184.Size = UDim2.new(0, var3, 0, var3)
   var184.BackgroundTransparency = 1
   var184.BorderSizePixel = 0
   var184.Position = var0.Position
   local var193 = {}
   local var197 = {}
   if var5 then
      local var0 = var2.dimmedColor or var2.textColor
   end
   var197.TextColor3 = var2.textColor
   var197.BorderSizePixel = 0
   var197.BackgroundTransparency = 1
   var197.TextSize = var2.textSize
   var197.TextXAlignment = Enum.TextXAlignment.Left
   var197.TextYAlignment = Enum.TextYAlignment.Center
   var197.Font = var1.font
   var197.Text = var0.Time
   var197.Position = var0.LabelPosition or var6
   var197.Size = var0.LabelSize or var5
   var197.Visible = var0.ShowTime
   var193.TimeLabel = var1.createElement("TextLabel", var197)
   local var212 = {}
   var212.AnchorPoint = Vector2.new(0, 1)
   var212.Position = UDim2.new(0, 0, 1, 0)
   var212.Size = UDim2.new(0, 1, var226, 0)
   var212.BorderSizePixel = 0
   if var5 then
      local var0 = var2.dimmedColor or var2.lineColor
   end
   var212.BackgroundColor3 = var2.lineColor
   local var234 = {}
   local var235 = var6
   if var235 then
      local var239 = {}
      var239.Text = var6
      var239.ShowDelay = 0
      local var0 = var1.createElement(var4, var239)
   end
   var234.Tooltip = var235
   var193.TickLine = var1.createElement("Frame", var212, var234)
   local var246 = {}
   var246.Position = UDim2.new(0, 0, 1, 0)
   var246.Size = UDim2.new(0, 1, 50, 0)
   var246.BorderSizePixel = 0
   var246.BackgroundColor3 = var2.lineColor
   if var0.Highlight then
      local var0 = var2.lowerBrightTransparency or var2.lowerTransparency
   end
   var246.BackgroundTransparency = var2.lowerTransparency
   var193.LowerTick = var1.createElement("Frame", var246)
   return var1.createElement("Frame", var184, var193)
end

fun1 = var2.withContext
local var267 = {}
var267.Stylizer = var2.Stylizer
var3 = fun1(var267)(var3)
return var3
