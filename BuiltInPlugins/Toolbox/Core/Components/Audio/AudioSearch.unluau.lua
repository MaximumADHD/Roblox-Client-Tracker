-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Util.Constants)
local var4 = require(var0.Core.Components.SearchOptions.TimeTextBox)
local var5 = require(var1.Framework).ContextServices
local var6 = require(var1.Framework).UI.RangeSlider
local var7 = require(var1.Framework).Util
local var8 = var3.MAX_AUDIO_SEARCH_DURATION
local var9 = var3.MIN_AUDIO_SEARCH_DURATION
local var10 = Vector2.new(80, 32)
local var11 = Vector2.new(6, 12)
local var12 = var2.PureComponent:extend("AudioSearch")
function var12.init(arg1, arg2)
   function arg1.onMinDurationChange(arg1)
      if arg1 ~= arg1.props.minDuration then
         local var264 = arg1.props
         var264 = arg1
         var264.onDurationChange(var264, arg1.props.maxDuration)
      end
   end
   
   function arg1.onMaxDurationChange(arg1)
      if arg1 ~= arg1.props.maxDuration then
         local var277 = arg1.props
         var277 = arg1
         arg1.props.onDurationChange(var277.minDuration, var277)
      end
   end
   
   function arg1.onSliderChange(arg1, arg2)
      arg2 = math.max(1, arg2)
      local var285 = arg1
      local var286 = var285.props
      var286 = arg1
      var285 = arg2
      var286.onDurationChange(var286, var285)
   end
   
end

local function fun9(arg1)
   local var0 = arg1.props
   local var1 = var0.minDuration
   local var2 = var0.maxDuration
   local var303 = {}
   var303.BackgroundTransparency = 1
   var303.AutomaticSize = Enum.AutomaticSize.Y
   var303.Size = UDim2.fromScale(1, 0)
   local var310 = {}
   local var314 = {}
   var314.SortOrder = Enum.SortOrder.LayoutOrder
   var314.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var314.Padding = UDim.new(0, var11.Y)
   var310.Layout = var2.createElement("UIListLayout", var314)
   local var326 = {}
   var326.BackgroundTransparency = 1
   var326.LayoutOrder = 1
   var326.Size = UDim2.new(1, 0, 0, var10.Y)
   local var336 = {}
   local var340 = {}
   var340.FillDirection = Enum.FillDirection.Horizontal
   var340.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var340.Padding = UDim.new(0, var11.X)
   var340.SortOrder = Enum.SortOrder.LayoutOrder
   var340.VerticalAlignment = Enum.VerticalAlignment.Center
   var336.UIListLayout = var2.createElement("UIListLayout", var340)
   local var354 = {}
   var354.currentValue = var1
   var354.defaultValue = 0
   var354.layoutOrder = 1
   var354.max = var2
   var354.min = 0
   var354.onDurationChange = arg1.onMinDurationChange
   var354.size = UDim2.new(0, var10.X, 0, var10.Y)
   var336.MinTextBox = var2.createElement(var4, var354)
   local var371 = {}
   var371.BackgroundTransparency = 1
   var371.LayoutOrder = 2
   var371.Size = UDim2.new(0, 20, 1, 0)
   var371.Text = var0.Localization:getText("General", "SearchOptionAudioTo")
   var371.TextColor3 = var0.Stylizer.searchOptions.audioSearch.textColor
   var336.ToLabel = var2.createElement("TextLabel", var371)
   local var385 = {}
   var385.currentValue = var2
   var385.defaultValue = var8
   var385.layoutOrder = 3
   var385.max = var8
   var385.min = var1
   var385.onDurationChange = arg1.onMaxDurationChange
   var385.size = UDim2.new(0, var10.X, 0, var10.Y)
   var336.MaxTextBox = var2.createElement(var4, var385)
   var310.AudioDuration = var2.createElement("Frame", var326, var336)
   local var403 = {}
   var403.LayoutOrder = 2
   var403.LowerRangeValue = var1
   var403.UpperRangeValue = var2
   var403.Min = var9
   var403.Max = var8
   var403.OnValuesChanged = arg1.onSliderChange
   var403.Size = UDim2.new(1, 0, 0, 20)
   var403.SnapIncrement = 1
   var310.RangeSlider = var2.createElement(var6, var403)
   return var2.createElement("Frame", var303, var310)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.minDuration
   local var2 = var0.maxDuration
   local var303 = {}
   var303.BackgroundTransparency = 1
   var303.AutomaticSize = Enum.AutomaticSize.Y
   var303.Size = UDim2.fromScale(1, 0)
   local var310 = {}
   local var314 = {}
   var314.SortOrder = Enum.SortOrder.LayoutOrder
   var314.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var314.Padding = UDim.new(0, var11.Y)
   var310.Layout = var2.createElement("UIListLayout", var314)
   local var326 = {}
   var326.BackgroundTransparency = 1
   var326.LayoutOrder = 1
   var326.Size = UDim2.new(1, 0, 0, var10.Y)
   local var336 = {}
   local var340 = {}
   var340.FillDirection = Enum.FillDirection.Horizontal
   var340.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var340.Padding = UDim.new(0, var11.X)
   var340.SortOrder = Enum.SortOrder.LayoutOrder
   var340.VerticalAlignment = Enum.VerticalAlignment.Center
   var336.UIListLayout = var2.createElement("UIListLayout", var340)
   local var354 = {}
   var354.currentValue = var1
   var354.defaultValue = 0
   var354.layoutOrder = 1
   var354.max = var2
   var354.min = 0
   var354.onDurationChange = arg1.onMinDurationChange
   var354.size = UDim2.new(0, var10.X, 0, var10.Y)
   var336.MinTextBox = var2.createElement(var4, var354)
   local var371 = {}
   var371.BackgroundTransparency = 1
   var371.LayoutOrder = 2
   var371.Size = UDim2.new(0, 20, 1, 0)
   var371.Text = var0.Localization:getText("General", "SearchOptionAudioTo")
   var371.TextColor3 = var0.Stylizer.searchOptions.audioSearch.textColor
   var336.ToLabel = var2.createElement("TextLabel", var371)
   local var385 = {}
   var385.currentValue = var2
   var385.defaultValue = var8
   var385.layoutOrder = 3
   var385.max = var8
   var385.min = var1
   var385.onDurationChange = arg1.onMaxDurationChange
   var385.size = UDim2.new(0, var10.X, 0, var10.Y)
   var336.MaxTextBox = var2.createElement(var4, var385)
   var310.AudioDuration = var2.createElement("Frame", var326, var336)
   local var403 = {}
   var403.LayoutOrder = 2
   var403.LowerRangeValue = var1
   var403.UpperRangeValue = var2
   var403.Min = var9
   var403.Max = var8
   var403.OnValuesChanged = arg1.onSliderChange
   var403.Size = UDim2.new(1, 0, 0, 20)
   var403.SnapIncrement = 1
   var310.RangeSlider = var2.createElement(var6, var403)
   return var2.createElement("Frame", var303, var310)
end

fun9 = var5.withContext
local var417 = {}
var417.Localization = var5.Localization
var417.Stylizer = var5.Stylizer
var12 = fun9(var417)(var12)
return var12
