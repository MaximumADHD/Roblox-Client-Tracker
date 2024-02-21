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
            local var53 = var3.parseTime(arg1.Text, var0)
            local var62 = math.clamp(var54, 0, var2.TICK_FREQUENCY * var2.MAX_ANIMATION_LENGTH)
            local var1 = var62
            if var0.EndTick < var1 then
               var62 = var0.UpdateEditingLength
               var62(var1)
            end
            local var65 = var3
            var65 = var1
            local var69 = var65.formatTime(var65, var0, var0.ShowAsTime)
            arg1.Text = var69
            var69 = var0.StepAnimation
            var69(var1)
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
            local var85 = var3.parseTime(arg1.Text, var0)
            var1 = math.clamp(var1, math.max(var1.EndTick, var2.TICK_FREQUENCY), var2.MAX_ANIMATION_LENGTH)
            local var96 = var3
            var96 = var1
            local var100 = var96.formatTime(var96, var0, var0.ShowAsTime)
            arg1.Text = var100
            var100 = var0.UpdateEditingLength
            var100(var1)
         end
      end
   end
   
end

local function fun3(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.ShowAsTime
   local var3 = var0.FrameRate
   local var115 = {}
   var115.BackgroundTransparency = 1
   var115.Size = UDim2.new(0, var2.TIME_DISPLAY_WIDTH, 1, 0)
   var115.LayoutOrder = var0.LayoutOrder
   local var125 = {}
   local var129 = {}
   var129.FillDirection = Enum.FillDirection.Horizontal
   var129.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var129.SortOrder = Enum.SortOrder.LayoutOrder
   var129.VerticalAlignment = Enum.VerticalAlignment.Center
   var125.Layout = var1.createElement("UIListLayout", var129)
   local var138 = {}
   var138.Size = UDim2.new(0, 40, 1, 65530)
   local var145 = var3
   var145 = var0.Playhead
   var138.Text = var145.formatTime(var145, var3, var2)
   var138.TextXAlignment = Enum.TextXAlignment.Left
   var138.LayoutOrder = 0
   var138.ClearTextOnFocus = false
   var138.FocusChanged = arg1.setCurrentTime
   local var154 = {}
   local var158 = {}
   var158.TextKey = "CurrentFrameBox"
   var154.Tooltip = var1.createElement(var6, var158)
   var125.CurrentFrameBox = var1.createElement(var5, var138, var154)
   local var165 = {}
   var165.Text = "/"
   var165.TextSize = var1.textBox.textSize
   var165.Font = var1.font
   var165.Size = UDim2.new(0, 12, 1, 0)
   var165.BackgroundTransparency = 1
   var165.LayoutOrder = 1
   var165.TextColor3 = var1.playbackTheme.iconColor
   var125.DividerLabel = var1.createElement("TextLabel", var165)
   local var182 = {}
   var182.Size = UDim2.new(0, 40, 1, 65530)
   local var189 = var3
   var189 = var0.EditingLength
   var182.Text = var189.formatTime(var189, var3, var2)
   var182.TextXAlignment = Enum.TextXAlignment.Left
   var182.LayoutOrder = 2
   var182.ClearTextOnFocus = false
   var182.FocusChanged = arg1.setEndTime
   var182.ReadOnly = var0.ReadOnly
   local var198 = {}
   local var202 = {}
   var202.TextKey = "EndFrameBox"
   var198.Tooltip = var1.createElement(var6, var202)
   var125.EndFrameBox = var1.createElement(var5, var182, var198)
   return var1.createElement("Frame", var115, var125)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.ShowAsTime
   local var3 = var0.FrameRate
   local var115 = {}
   var115.BackgroundTransparency = 1
   var115.Size = UDim2.new(0, var2.TIME_DISPLAY_WIDTH, 1, 0)
   var115.LayoutOrder = var0.LayoutOrder
   local var125 = {}
   local var129 = {}
   var129.FillDirection = Enum.FillDirection.Horizontal
   var129.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var129.SortOrder = Enum.SortOrder.LayoutOrder
   var129.VerticalAlignment = Enum.VerticalAlignment.Center
   var125.Layout = var1.createElement("UIListLayout", var129)
   local var138 = {}
   var138.Size = UDim2.new(0, 40, 1, 65530)
   local var145 = var3
   var145 = var0.Playhead
   var138.Text = var145.formatTime(var145, var3, var2)
   var138.TextXAlignment = Enum.TextXAlignment.Left
   var138.LayoutOrder = 0
   var138.ClearTextOnFocus = false
   var138.FocusChanged = arg1.setCurrentTime
   local var154 = {}
   local var158 = {}
   var158.TextKey = "CurrentFrameBox"
   var154.Tooltip = var1.createElement(var6, var158)
   var125.CurrentFrameBox = var1.createElement(var5, var138, var154)
   local var165 = {}
   var165.Text = "/"
   var165.TextSize = var1.textBox.textSize
   var165.Font = var1.font
   var165.Size = UDim2.new(0, 12, 1, 0)
   var165.BackgroundTransparency = 1
   var165.LayoutOrder = 1
   var165.TextColor3 = var1.playbackTheme.iconColor
   var125.DividerLabel = var1.createElement("TextLabel", var165)
   local var182 = {}
   var182.Size = UDim2.new(0, 40, 1, 65530)
   local var189 = var3
   var189 = var0.EditingLength
   var182.Text = var189.formatTime(var189, var3, var2)
   var182.TextXAlignment = Enum.TextXAlignment.Left
   var182.LayoutOrder = 2
   var182.ClearTextOnFocus = false
   var182.FocusChanged = arg1.setEndTime
   var182.ReadOnly = var0.ReadOnly
   local var198 = {}
   local var202 = {}
   var202.TextKey = "EndFrameBox"
   var198.Tooltip = var1.createElement(var6, var202)
   var125.EndFrameBox = var1.createElement(var5, var182, var198)
   return var1.createElement("Frame", var115, var125)
end

fun3 = var4.withContext
local var207 = {}
var207.Stylizer = var4.Stylizer
var7 = fun3(var207)(var7)
return var7
