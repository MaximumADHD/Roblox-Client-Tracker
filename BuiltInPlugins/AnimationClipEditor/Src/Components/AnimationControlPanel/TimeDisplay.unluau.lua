-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Util.Constants)
local var3 = require(var0.Src.Util.StringUtils)
local var4 = require(var0.Packages.Framework).ContextServices
local var5 = require(var0.Src.Components.TextBox)
local var6 = require(var0.Src.Components.Tooltip)
local var7 = var1.PureComponent:extend("TimeDisplay")
function var7.init(arg1)
   function arg1.setCurrentTime(arg1, arg2)
      local var0 = arg1.props
      if not arg2 then
         if var0.AnimationData then
            local var0 = var0.FrameRate
            local var378 = var3.parseTime(arg1.Text, var0)
            local var387 = math.clamp(var379, 0, var2.TICK_FREQUENCY * var2.MAX_ANIMATION_LENGTH)
            local var1 = var387
            if var0.EndTick < var1 then
               var387 = var0.UpdateEditingLength
               var387(var1)
            end
            local var390 = var3
            var390 = var1
            local var394 = var390.formatTime(var390, var0, var0.ShowAsTime)
            arg1.Text = var394
            var394 = var0.StepAnimation
            var394(var1)
         end
      end
   end
   
   function arg1.setEndTime(arg1, arg2)
      local var0 = arg1.props
      local var1 = var0.AnimationData
      if not arg2 then
         if var1 then
            local var0 = var0.FrameRate
            local var1 = var1.Metadata
            local var410 = var3.parseTime(arg1.Text, var0)
            var1 = math.clamp(var1, math.max(var1.EndTick, var2.TICK_FREQUENCY), var2.MAX_ANIMATION_LENGTH)
            local var421 = var3
            var421 = var1
            local var425 = var421.formatTime(var421, var0, var0.ShowAsTime)
            arg1.Text = var425
            var425 = var0.UpdateEditingLength
            var425(var1)
         end
      end
   end
   
end

local function fun6(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.ShowAsTime
   local var3 = var0.FrameRate
   local var440 = {}
   var440.BackgroundTransparency = 1
   var440.Size = UDim2.new(0, var2.TIME_DISPLAY_WIDTH, 1, 0)
   var440.LayoutOrder = var0.LayoutOrder
   local var450 = {}
   local var454 = {}
   var454.FillDirection = Enum.FillDirection.Horizontal
   var454.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var454.SortOrder = Enum.SortOrder.LayoutOrder
   var454.VerticalAlignment = Enum.VerticalAlignment.Center
   var450.Layout = var1.createElement("UIListLayout", var454)
   local var463 = {}
   var463.Size = UDim2.new(0, 40, 1, 65530)
   local var470 = var3
   var470 = var0.Playhead
   var463.Text = var470.formatTime(var470, var3, var2)
   var463.TextXAlignment = Enum.TextXAlignment.Left
   var463.LayoutOrder = 0
   var463.ClearTextOnFocus = false
   var463.FocusChanged = arg1.setCurrentTime
   local var479 = {}
   local var483 = {}
   var483.TextKey = "CurrentFrameBox"
   var479.Tooltip = var1.createElement(var6, var483)
   var450.CurrentFrameBox = var1.createElement(var5, var463, var479)
   local var490 = {}
   var490.Text = "/"
   var490.TextSize = var1.textBox.textSize
   var490.Font = var1.font
   var490.Size = UDim2.new(0, 12, 1, 0)
   var490.BackgroundTransparency = 1
   var490.LayoutOrder = 1
   var490.TextColor3 = var1.playbackTheme.iconColor
   var450.DividerLabel = var1.createElement("TextLabel", var490)
   local var507 = {}
   var507.Size = UDim2.new(0, 40, 1, 65530)
   local var514 = var3
   var514 = var0.EditingLength
   var507.Text = var514.formatTime(var514, var3, var2)
   var507.TextXAlignment = Enum.TextXAlignment.Left
   var507.LayoutOrder = 2
   var507.ClearTextOnFocus = false
   var507.FocusChanged = arg1.setEndTime
   var507.ReadOnly = var0.ReadOnly
   local var523 = {}
   local var527 = {}
   var527.TextKey = "EndFrameBox"
   var523.Tooltip = var1.createElement(var6, var527)
   var450.EndFrameBox = var1.createElement(var5, var507, var523)
   return var1.createElement("Frame", var440, var450)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.ShowAsTime
   local var3 = var0.FrameRate
   local var440 = {}
   var440.BackgroundTransparency = 1
   var440.Size = UDim2.new(0, var2.TIME_DISPLAY_WIDTH, 1, 0)
   var440.LayoutOrder = var0.LayoutOrder
   local var450 = {}
   local var454 = {}
   var454.FillDirection = Enum.FillDirection.Horizontal
   var454.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var454.SortOrder = Enum.SortOrder.LayoutOrder
   var454.VerticalAlignment = Enum.VerticalAlignment.Center
   var450.Layout = var1.createElement("UIListLayout", var454)
   local var463 = {}
   var463.Size = UDim2.new(0, 40, 1, 65530)
   local var470 = var3
   var470 = var0.Playhead
   var463.Text = var470.formatTime(var470, var3, var2)
   var463.TextXAlignment = Enum.TextXAlignment.Left
   var463.LayoutOrder = 0
   var463.ClearTextOnFocus = false
   var463.FocusChanged = arg1.setCurrentTime
   local var479 = {}
   local var483 = {}
   var483.TextKey = "CurrentFrameBox"
   var479.Tooltip = var1.createElement(var6, var483)
   var450.CurrentFrameBox = var1.createElement(var5, var463, var479)
   local var490 = {}
   var490.Text = "/"
   var490.TextSize = var1.textBox.textSize
   var490.Font = var1.font
   var490.Size = UDim2.new(0, 12, 1, 0)
   var490.BackgroundTransparency = 1
   var490.LayoutOrder = 1
   var490.TextColor3 = var1.playbackTheme.iconColor
   var450.DividerLabel = var1.createElement("TextLabel", var490)
   local var507 = {}
   var507.Size = UDim2.new(0, 40, 1, 65530)
   local var514 = var3
   var514 = var0.EditingLength
   var507.Text = var514.formatTime(var514, var3, var2)
   var507.TextXAlignment = Enum.TextXAlignment.Left
   var507.LayoutOrder = 2
   var507.ClearTextOnFocus = false
   var507.FocusChanged = arg1.setEndTime
   var507.ReadOnly = var0.ReadOnly
   local var523 = {}
   local var527 = {}
   var527.TextKey = "EndFrameBox"
   var523.Tooltip = var1.createElement(var6, var527)
   var450.EndFrameBox = var1.createElement(var5, var507, var523)
   return var1.createElement("Frame", var440, var450)
end

fun6 = var4.withContext
local var532 = {}
var532.Stylizer = var4.Stylizer
var7 = fun6(var532)(var7)
return var7
