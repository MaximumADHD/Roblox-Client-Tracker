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
            local var325 = var3.parseTime(arg1.Text, var0)
            local var334 = math.clamp(var326, 0, var2.TICK_FREQUENCY * var2.MAX_ANIMATION_LENGTH)
            local var1 = var334
            if var0.EndTick < var1 then
               var334 = var0.UpdateEditingLength
               var334(var1)
            end
            local var337 = var3
            var337 = var1
            local var341 = var337.formatTime(var337, var0, var0.ShowAsTime)
            arg1.Text = var341
            var341 = var0.StepAnimation
            var341(var1)
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
            local var357 = var3.parseTime(arg1.Text, var0)
            var1 = math.clamp(var1, math.max(var1.EndTick, var2.TICK_FREQUENCY), var2.MAX_ANIMATION_LENGTH)
            local var368 = var3
            var368 = var1
            local var372 = var368.formatTime(var368, var0, var0.ShowAsTime)
            arg1.Text = var372
            var372 = var0.UpdateEditingLength
            var372(var1)
         end
      end
   end
   
end

local function fun6(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.ShowAsTime
   local var3 = var0.FrameRate
   local var387 = {}
   var387.BackgroundTransparency = 1
   var387.Size = UDim2.new(0, var2.TIME_DISPLAY_WIDTH, 1, 0)
   var387.LayoutOrder = var0.LayoutOrder
   local var397 = {}
   local var401 = {}
   var401.FillDirection = Enum.FillDirection.Horizontal
   var401.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var401.SortOrder = Enum.SortOrder.LayoutOrder
   var401.VerticalAlignment = Enum.VerticalAlignment.Center
   var397.Layout = var1.createElement("UIListLayout", var401)
   local var410 = {}
   var410.Size = UDim2.new(0, 40, 1, 65530)
   local var417 = var3
   var417 = var0.Playhead
   var410.Text = var417.formatTime(var417, var3, var2)
   var410.TextXAlignment = Enum.TextXAlignment.Left
   var410.LayoutOrder = 0
   var410.ClearTextOnFocus = false
   var410.FocusChanged = arg1.setCurrentTime
   local var426 = {}
   local var430 = {}
   var430.TextKey = "CurrentFrameBox"
   var426.Tooltip = var1.createElement(var6, var430)
   var397.CurrentFrameBox = var1.createElement(var5, var410, var426)
   local var437 = {}
   var437.Text = "/"
   var437.TextSize = var1.textBox.textSize
   var437.Font = var1.font
   var437.Size = UDim2.new(0, 12, 1, 0)
   var437.BackgroundTransparency = 1
   var437.LayoutOrder = 1
   var437.TextColor3 = var1.playbackTheme.iconColor
   var397.DividerLabel = var1.createElement("TextLabel", var437)
   local var454 = {}
   var454.Size = UDim2.new(0, 40, 1, 65530)
   local var461 = var3
   var461 = var0.EditingLength
   var454.Text = var461.formatTime(var461, var3, var2)
   var454.TextXAlignment = Enum.TextXAlignment.Left
   var454.LayoutOrder = 2
   var454.ClearTextOnFocus = false
   var454.FocusChanged = arg1.setEndTime
   var454.ReadOnly = var0.ReadOnly
   local var470 = {}
   local var474 = {}
   var474.TextKey = "EndFrameBox"
   var470.Tooltip = var1.createElement(var6, var474)
   var397.EndFrameBox = var1.createElement(var5, var454, var470)
   return var1.createElement("Frame", var387, var397)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.ShowAsTime
   local var3 = var0.FrameRate
   local var387 = {}
   var387.BackgroundTransparency = 1
   var387.Size = UDim2.new(0, var2.TIME_DISPLAY_WIDTH, 1, 0)
   var387.LayoutOrder = var0.LayoutOrder
   local var397 = {}
   local var401 = {}
   var401.FillDirection = Enum.FillDirection.Horizontal
   var401.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var401.SortOrder = Enum.SortOrder.LayoutOrder
   var401.VerticalAlignment = Enum.VerticalAlignment.Center
   var397.Layout = var1.createElement("UIListLayout", var401)
   local var410 = {}
   var410.Size = UDim2.new(0, 40, 1, 65530)
   local var417 = var3
   var417 = var0.Playhead
   var410.Text = var417.formatTime(var417, var3, var2)
   var410.TextXAlignment = Enum.TextXAlignment.Left
   var410.LayoutOrder = 0
   var410.ClearTextOnFocus = false
   var410.FocusChanged = arg1.setCurrentTime
   local var426 = {}
   local var430 = {}
   var430.TextKey = "CurrentFrameBox"
   var426.Tooltip = var1.createElement(var6, var430)
   var397.CurrentFrameBox = var1.createElement(var5, var410, var426)
   local var437 = {}
   var437.Text = "/"
   var437.TextSize = var1.textBox.textSize
   var437.Font = var1.font
   var437.Size = UDim2.new(0, 12, 1, 0)
   var437.BackgroundTransparency = 1
   var437.LayoutOrder = 1
   var437.TextColor3 = var1.playbackTheme.iconColor
   var397.DividerLabel = var1.createElement("TextLabel", var437)
   local var454 = {}
   var454.Size = UDim2.new(0, 40, 1, 65530)
   local var461 = var3
   var461 = var0.EditingLength
   var454.Text = var461.formatTime(var461, var3, var2)
   var454.TextXAlignment = Enum.TextXAlignment.Left
   var454.LayoutOrder = 2
   var454.ClearTextOnFocus = false
   var454.FocusChanged = arg1.setEndTime
   var454.ReadOnly = var0.ReadOnly
   local var470 = {}
   local var474 = {}
   var474.TextKey = "EndFrameBox"
   var470.Tooltip = var1.createElement(var6, var474)
   var397.EndFrameBox = var1.createElement(var5, var454, var470)
   return var1.createElement("Frame", var387, var397)
end

fun6 = var4.withContext
local var479 = {}
var479.Stylizer = var4.Stylizer
var7 = fun6(var479)(var7)
return var7
