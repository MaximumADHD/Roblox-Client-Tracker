-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = var1.PureComponent:extend("TimelineTick")
local var4 = require(var0.Src.Components.Tooltip)
local var5 = UDim2.new(0, 25, 0, 15)
local var6 = UDim2.new(0, 5, 0, 0)
local function fun7(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.timelineTheme
   local var3 = var0.Height
   local var263 = var0.TickHeightScale
   local var5 = var0.PastEnd
   local var6 = var0.TimeInSeconds
   local var271 = {}
   var271.Size = UDim2.new(0, var3, 0, var3)
   var271.BackgroundTransparency = 1
   var271.BorderSizePixel = 0
   var271.Position = var0.Position
   local var280 = {}
   local var284 = {}
   if var5 then
      local var0 = var2.dimmedColor or var2.textColor
   end
   var284.TextColor3 = var2.textColor
   var284.BorderSizePixel = 0
   var284.BackgroundTransparency = 1
   var284.TextSize = var2.textSize
   var284.TextXAlignment = Enum.TextXAlignment.Left
   var284.TextYAlignment = Enum.TextYAlignment.Center
   var284.Font = var1.font
   var284.Text = var0.Time
   var284.Position = var0.LabelPosition or var6
   var284.Size = var0.LabelSize or var5
   var284.Visible = var0.ShowTime
   var280.TimeLabel = var1.createElement("TextLabel", var284)
   local var299 = {}
   var299.AnchorPoint = Vector2.new(0, 1)
   var299.Position = UDim2.new(0, 0, 1, 0)
   var299.Size = UDim2.new(0, 1, var313, 0)
   var299.BorderSizePixel = 0
   if var5 then
      local var0 = var2.dimmedColor or var2.lineColor
   end
   var299.BackgroundColor3 = var2.lineColor
   local var321 = {}
   local var322 = var6
   if var322 then
      local var326 = {}
      var326.Text = var6
      var326.ShowDelay = 0
      local var0 = var1.createElement(var4, var326)
   end
   var321.Tooltip = var322
   var280.TickLine = var1.createElement("Frame", var299, var321)
   local var333 = {}
   var333.Position = UDim2.new(0, 0, 1, 0)
   var333.Size = UDim2.new(0, 1, 50, 0)
   var333.BorderSizePixel = 0
   var333.BackgroundColor3 = var2.lineColor
   if var0.Highlight then
      local var0 = var2.lowerBrightTransparency or var2.lowerTransparency
   end
   var333.BackgroundTransparency = var2.lowerTransparency
   var280.LowerTick = var1.createElement("Frame", var333)
   return var1.createElement("Frame", var271, var280)
end

function var3.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.timelineTheme
   local var3 = var0.Height
   local var263 = var0.TickHeightScale
   local var5 = var0.PastEnd
   local var6 = var0.TimeInSeconds
   local var271 = {}
   var271.Size = UDim2.new(0, var3, 0, var3)
   var271.BackgroundTransparency = 1
   var271.BorderSizePixel = 0
   var271.Position = var0.Position
   local var280 = {}
   local var284 = {}
   if var5 then
      local var0 = var2.dimmedColor or var2.textColor
   end
   var284.TextColor3 = var2.textColor
   var284.BorderSizePixel = 0
   var284.BackgroundTransparency = 1
   var284.TextSize = var2.textSize
   var284.TextXAlignment = Enum.TextXAlignment.Left
   var284.TextYAlignment = Enum.TextYAlignment.Center
   var284.Font = var1.font
   var284.Text = var0.Time
   var284.Position = var0.LabelPosition or var6
   var284.Size = var0.LabelSize or var5
   var284.Visible = var0.ShowTime
   var280.TimeLabel = var1.createElement("TextLabel", var284)
   local var299 = {}
   var299.AnchorPoint = Vector2.new(0, 1)
   var299.Position = UDim2.new(0, 0, 1, 0)
   var299.Size = UDim2.new(0, 1, var313, 0)
   var299.BorderSizePixel = 0
   if var5 then
      local var0 = var2.dimmedColor or var2.lineColor
   end
   var299.BackgroundColor3 = var2.lineColor
   local var321 = {}
   local var322 = var6
   if var322 then
      local var326 = {}
      var326.Text = var6
      var326.ShowDelay = 0
      local var0 = var1.createElement(var4, var326)
   end
   var321.Tooltip = var322
   var280.TickLine = var1.createElement("Frame", var299, var321)
   local var333 = {}
   var333.Position = UDim2.new(0, 0, 1, 0)
   var333.Size = UDim2.new(0, 1, 50, 0)
   var333.BorderSizePixel = 0
   var333.BackgroundColor3 = var2.lineColor
   if var0.Highlight then
      local var0 = var2.lowerBrightTransparency or var2.lowerTransparency
   end
   var333.BackgroundTransparency = var2.lowerTransparency
   var280.LowerTick = var1.createElement("Frame", var333)
   return var1.createElement("Frame", var271, var280)
end

fun7 = var2.withContext
local var354 = {}
var354.Stylizer = var2.Stylizer
var3 = fun7(var354)(var3)
return var3
