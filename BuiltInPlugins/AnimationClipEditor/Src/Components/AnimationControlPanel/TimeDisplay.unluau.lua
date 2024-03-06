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
            local var452 = var3.parseTime(arg1.Text, var0)
            local var461 = math.clamp(var453, 0, var2.TICK_FREQUENCY * var2.MAX_ANIMATION_LENGTH)
            local var1 = var461
            if var0.EndTick < var1 then
               var461 = var0.UpdateEditingLength
               var461(var1)
            end
            local var474 = var3
            var474 = var1
            local var479 = var474.formatTime(var474, var0, var0.ShowAsTime)
            arg1.Text = var479
            var479 = var0.StepAnimation
            var479(var1)
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
            local var531 = var3.parseTime(arg1.Text, var0)
            var1 = math.clamp(var1, math.max(var1.EndTick, var2.TICK_FREQUENCY), var2.MAX_ANIMATION_LENGTH)
            local var551 = var3
            var551 = var1
            local var561 = var551.formatTime(var551, var0, var0.ShowAsTime)
            arg1.Text = var561
            var561 = var0.UpdateEditingLength
            var561(var1)
         end
      end
   end
   
end

local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.ShowAsTime
   local var3 = var0.FrameRate
   local var635 = {}
   var635.BackgroundTransparency = 1
   var635.Size = UDim2.new(0, var2.TIME_DISPLAY_WIDTH, 1, 0)
   var635.LayoutOrder = var0.LayoutOrder
   local var660 = {}
   local var664 = {}
   var664.FillDirection = Enum.FillDirection.Horizontal
   var664.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var664.SortOrder = Enum.SortOrder.LayoutOrder
   var664.VerticalAlignment = Enum.VerticalAlignment.Center
   var660.Layout = var1.createElement("UIListLayout", var664)
   local var673 = {}
   var673.Size = UDim2.new(0, 40, 1, 65530)
   local var680 = var3
   var680 = var0.Playhead
   var673.Text = var680.formatTime(var680, var3, var2)
   var673.TextXAlignment = Enum.TextXAlignment.Left
   var673.LayoutOrder = 0
   var673.ClearTextOnFocus = false
   var673.FocusChanged = arg1.setCurrentTime
   local var7 = {}
   local var11 = {}
   var11.TextKey = "CurrentFrameBox"
   var7.Tooltip = var1.createElement(var6, var11)
   var660.CurrentFrameBox = var1.createElement(var5, var673, var7)
   local var18 = {}
   var18.Text = "/"
   var18.TextSize = var1.textBox.textSize
   var18.Font = var1.font
   var18.Size = UDim2.new(0, 12, 1, 0)
   var18.BackgroundTransparency = 1
   var18.LayoutOrder = 1
   var18.TextColor3 = var1.playbackTheme.iconColor
   var660.DividerLabel = var1.createElement("TextLabel", var18)
   local var35 = {}
   var35.Size = UDim2.new(0, 40, 1, 65530)
   local var42 = var3
   var42 = var0.EditingLength
   var35.Text = var42.formatTime(var42, var3, var2)
   var35.TextXAlignment = Enum.TextXAlignment.Left
   var35.LayoutOrder = 2
   var35.ClearTextOnFocus = false
   var35.FocusChanged = arg1.setEndTime
   var35.ReadOnly = var0.ReadOnly
   local var51 = {}
   local var55 = {}
   var55.TextKey = "EndFrameBox"
   var51.Tooltip = var1.createElement(var6, var55)
   var660.EndFrameBox = var1.createElement(var5, var35, var51)
   return var1.createElement("Frame", var635, var660)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.ShowAsTime
   local var3 = var0.FrameRate
   local var635 = {}
   var635.BackgroundTransparency = 1
   var635.Size = UDim2.new(0, var2.TIME_DISPLAY_WIDTH, 1, 0)
   var635.LayoutOrder = var0.LayoutOrder
   local var660 = {}
   local var664 = {}
   var664.FillDirection = Enum.FillDirection.Horizontal
   var664.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var664.SortOrder = Enum.SortOrder.LayoutOrder
   var664.VerticalAlignment = Enum.VerticalAlignment.Center
   var660.Layout = var1.createElement("UIListLayout", var664)
   local var673 = {}
   var673.Size = UDim2.new(0, 40, 1, 65530)
   local var680 = var3
   var680 = var0.Playhead
   var673.Text = var680.formatTime(var680, var3, var2)
   var673.TextXAlignment = Enum.TextXAlignment.Left
   var673.LayoutOrder = 0
   var673.ClearTextOnFocus = false
   var673.FocusChanged = arg1.setCurrentTime
   local var7 = {}
   local var11 = {}
   var11.TextKey = "CurrentFrameBox"
   var7.Tooltip = var1.createElement(var6, var11)
   var660.CurrentFrameBox = var1.createElement(var5, var673, var7)
   local var18 = {}
   var18.Text = "/"
   var18.TextSize = var1.textBox.textSize
   var18.Font = var1.font
   var18.Size = UDim2.new(0, 12, 1, 0)
   var18.BackgroundTransparency = 1
   var18.LayoutOrder = 1
   var18.TextColor3 = var1.playbackTheme.iconColor
   var660.DividerLabel = var1.createElement("TextLabel", var18)
   local var35 = {}
   var35.Size = UDim2.new(0, 40, 1, 65530)
   local var42 = var3
   var42 = var0.EditingLength
   var35.Text = var42.formatTime(var42, var3, var2)
   var35.TextXAlignment = Enum.TextXAlignment.Left
   var35.LayoutOrder = 2
   var35.ClearTextOnFocus = false
   var35.FocusChanged = arg1.setEndTime
   var35.ReadOnly = var0.ReadOnly
   local var51 = {}
   local var55 = {}
   var55.TextKey = "EndFrameBox"
   var51.Tooltip = var1.createElement(var6, var55)
   var660.EndFrameBox = var1.createElement(var5, var35, var51)
   return var1.createElement("Frame", var635, var660)
end

fun0 = var4.withContext
local var60 = {}
var60.Stylizer = var4.Stylizer
var7 = fun0(var60)(var7)
return var7
