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
   local var48 = var0.TickHeightScale
   local var5 = var0.PastEnd
   local var6 = var0.TimeInSeconds
   local var56 = {}
   var56.Size = UDim2.new(0, var3, 0, var3)
   var56.BackgroundTransparency = 1
   var56.BorderSizePixel = 0
   var56.Position = var0.Position
   local var65 = {}
   local var69 = {}
   if var5 then
      local var0 = var2.dimmedColor or var2.textColor
   end
   var69.TextColor3 = var2.textColor
   var69.BorderSizePixel = 0
   var69.BackgroundTransparency = 1
   var69.TextSize = var2.textSize
   var69.TextXAlignment = Enum.TextXAlignment.Left
   var69.TextYAlignment = Enum.TextYAlignment.Center
   var69.Font = var1.font
   var69.Text = var0.Time
   var69.Position = var0.LabelPosition or var6
   var69.Size = var0.LabelSize or var5
   var69.Visible = var0.ShowTime
   var65.TimeLabel = var1.createElement("TextLabel", var69)
   local var84 = {}
   var84.AnchorPoint = Vector2.new(0, 1)
   var84.Position = UDim2.new(0, 0, 1, 0)
   var84.Size = UDim2.new(0, 1, var98, 0)
   var84.BorderSizePixel = 0
   if var5 then
      local var0 = var2.dimmedColor or var2.lineColor
   end
   var84.BackgroundColor3 = var2.lineColor
   local var106 = {}
   local var107 = var6
   if var107 then
      local var111 = {}
      var111.Text = var6
      var111.ShowDelay = 0
      local var0 = var1.createElement(var4, var111)
   end
   var106.Tooltip = var107
   var65.TickLine = var1.createElement("Frame", var84, var106)
   local var118 = {}
   var118.Position = UDim2.new(0, 0, 1, 0)
   var118.Size = UDim2.new(0, 1, 50, 0)
   var118.BorderSizePixel = 0
   var118.BackgroundColor3 = var2.lineColor
   if var0.Highlight then
      local var0 = var2.lowerBrightTransparency or var2.lowerTransparency
   end
   var118.BackgroundTransparency = var2.lowerTransparency
   var65.LowerTick = var1.createElement("Frame", var118)
   return var1.createElement("Frame", var56, var65)
end

function var3.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.timelineTheme
   local var3 = var0.Height
   local var48 = var0.TickHeightScale
   local var5 = var0.PastEnd
   local var6 = var0.TimeInSeconds
   local var56 = {}
   var56.Size = UDim2.new(0, var3, 0, var3)
   var56.BackgroundTransparency = 1
   var56.BorderSizePixel = 0
   var56.Position = var0.Position
   local var65 = {}
   local var69 = {}
   if var5 then
      local var0 = var2.dimmedColor or var2.textColor
   end
   var69.TextColor3 = var2.textColor
   var69.BorderSizePixel = 0
   var69.BackgroundTransparency = 1
   var69.TextSize = var2.textSize
   var69.TextXAlignment = Enum.TextXAlignment.Left
   var69.TextYAlignment = Enum.TextYAlignment.Center
   var69.Font = var1.font
   var69.Text = var0.Time
   var69.Position = var0.LabelPosition or var6
   var69.Size = var0.LabelSize or var5
   var69.Visible = var0.ShowTime
   var65.TimeLabel = var1.createElement("TextLabel", var69)
   local var84 = {}
   var84.AnchorPoint = Vector2.new(0, 1)
   var84.Position = UDim2.new(0, 0, 1, 0)
   var84.Size = UDim2.new(0, 1, var98, 0)
   var84.BorderSizePixel = 0
   if var5 then
      local var0 = var2.dimmedColor or var2.lineColor
   end
   var84.BackgroundColor3 = var2.lineColor
   local var106 = {}
   local var107 = var6
   if var107 then
      local var111 = {}
      var111.Text = var6
      var111.ShowDelay = 0
      local var0 = var1.createElement(var4, var111)
   end
   var106.Tooltip = var107
   var65.TickLine = var1.createElement("Frame", var84, var106)
   local var118 = {}
   var118.Position = UDim2.new(0, 0, 1, 0)
   var118.Size = UDim2.new(0, 1, 50, 0)
   var118.BorderSizePixel = 0
   var118.BackgroundColor3 = var2.lineColor
   if var0.Highlight then
      local var0 = var2.lowerBrightTransparency or var2.lowerTransparency
   end
   var118.BackgroundTransparency = var2.lowerTransparency
   var65.LowerTick = var1.createElement("Frame", var118)
   return var1.createElement("Frame", var56, var65)
end

fun0 = var2.withContext
local var139 = {}
var139.Stylizer = var2.Stylizer
var3 = fun0(var139)(var3)
return var3
