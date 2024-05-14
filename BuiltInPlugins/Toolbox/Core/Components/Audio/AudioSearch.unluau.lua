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
         local var272 = arg1.props
         var272 = arg1
         var272.onDurationChange(var272, arg1.props.maxDuration)
      end
   end
   
   function arg1.onMaxDurationChange(arg1)
      if arg1 ~= arg1.props.maxDuration then
         local var285 = arg1.props
         var285 = arg1
         arg1.props.onDurationChange(var285.minDuration, var285)
      end
   end
   
   function arg1.onSliderChange(arg1, arg2)
      arg2 = math.max(1, arg2)
      local var293 = arg1
      local var294 = var293.props
      var294 = arg1
      var293 = arg2
      var294.onDurationChange(var294, var293)
   end
   
end

local function fun8(arg1)
   local var0 = arg1.props
   local var1 = var0.minDuration
   local var2 = var0.maxDuration
   local var311 = {}
   var311.BackgroundTransparency = 1
   var311.AutomaticSize = Enum.AutomaticSize.Y
   var311.Size = UDim2.fromScale(1, 0)
   local var318 = {}
   local var322 = {}
   var322.SortOrder = Enum.SortOrder.LayoutOrder
   var322.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var322.Padding = UDim.new(0, var11.Y)
   var318.Layout = var2.createElement("UIListLayout", var322)
   local var334 = {}
   var334.BackgroundTransparency = 1
   var334.LayoutOrder = 1
   var334.Size = UDim2.new(1, 0, 0, var10.Y)
   local var344 = {}
   local var348 = {}
   var348.FillDirection = Enum.FillDirection.Horizontal
   var348.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var348.Padding = UDim.new(0, var11.X)
   var348.SortOrder = Enum.SortOrder.LayoutOrder
   var348.VerticalAlignment = Enum.VerticalAlignment.Center
   var344.UIListLayout = var2.createElement("UIListLayout", var348)
   local var362 = {}
   var362.currentValue = var1
   var362.defaultValue = 0
   var362.layoutOrder = 1
   var362.max = var2
   var362.min = 0
   var362.onDurationChange = arg1.onMinDurationChange
   var362.size = UDim2.new(0, var10.X, 0, var10.Y)
   var344.MinTextBox = var2.createElement(var4, var362)
   local var379 = {}
   var379.BackgroundTransparency = 1
   var379.LayoutOrder = 2
   var379.Size = UDim2.new(0, 20, 1, 0)
   var379.Text = var0.Localization:getText("General", "SearchOptionAudioTo")
   var379.TextColor3 = var0.Stylizer.searchOptions.audioSearch.textColor
   var344.ToLabel = var2.createElement("TextLabel", var379)
   local var393 = {}
   var393.currentValue = var2
   var393.defaultValue = var8
   var393.layoutOrder = 3
   var393.max = var8
   var393.min = var1
   var393.onDurationChange = arg1.onMaxDurationChange
   var393.size = UDim2.new(0, var10.X, 0, var10.Y)
   var344.MaxTextBox = var2.createElement(var4, var393)
   var318.AudioDuration = var2.createElement("Frame", var334, var344)
   local var411 = {}
   var411.LayoutOrder = 2
   var411.LowerRangeValue = var1
   var411.UpperRangeValue = var2
   var411.Min = var9
   var411.Max = var8
   var411.OnValuesChanged = arg1.onSliderChange
   var411.Size = UDim2.new(1, 0, 0, 20)
   var411.SnapIncrement = 1
   var318.RangeSlider = var2.createElement(var6, var411)
   return var2.createElement("Frame", var311, var318)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.minDuration
   local var2 = var0.maxDuration
   local var311 = {}
   var311.BackgroundTransparency = 1
   var311.AutomaticSize = Enum.AutomaticSize.Y
   var311.Size = UDim2.fromScale(1, 0)
   local var318 = {}
   local var322 = {}
   var322.SortOrder = Enum.SortOrder.LayoutOrder
   var322.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var322.Padding = UDim.new(0, var11.Y)
   var318.Layout = var2.createElement("UIListLayout", var322)
   local var334 = {}
   var334.BackgroundTransparency = 1
   var334.LayoutOrder = 1
   var334.Size = UDim2.new(1, 0, 0, var10.Y)
   local var344 = {}
   local var348 = {}
   var348.FillDirection = Enum.FillDirection.Horizontal
   var348.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var348.Padding = UDim.new(0, var11.X)
   var348.SortOrder = Enum.SortOrder.LayoutOrder
   var348.VerticalAlignment = Enum.VerticalAlignment.Center
   var344.UIListLayout = var2.createElement("UIListLayout", var348)
   local var362 = {}
   var362.currentValue = var1
   var362.defaultValue = 0
   var362.layoutOrder = 1
   var362.max = var2
   var362.min = 0
   var362.onDurationChange = arg1.onMinDurationChange
   var362.size = UDim2.new(0, var10.X, 0, var10.Y)
   var344.MinTextBox = var2.createElement(var4, var362)
   local var379 = {}
   var379.BackgroundTransparency = 1
   var379.LayoutOrder = 2
   var379.Size = UDim2.new(0, 20, 1, 0)
   var379.Text = var0.Localization:getText("General", "SearchOptionAudioTo")
   var379.TextColor3 = var0.Stylizer.searchOptions.audioSearch.textColor
   var344.ToLabel = var2.createElement("TextLabel", var379)
   local var393 = {}
   var393.currentValue = var2
   var393.defaultValue = var8
   var393.layoutOrder = 3
   var393.max = var8
   var393.min = var1
   var393.onDurationChange = arg1.onMaxDurationChange
   var393.size = UDim2.new(0, var10.X, 0, var10.Y)
   var344.MaxTextBox = var2.createElement(var4, var393)
   var318.AudioDuration = var2.createElement("Frame", var334, var344)
   local var411 = {}
   var411.LayoutOrder = 2
   var411.LowerRangeValue = var1
   var411.UpperRangeValue = var2
   var411.Min = var9
   var411.Max = var8
   var411.OnValuesChanged = arg1.onSliderChange
   var411.Size = UDim2.new(1, 0, 0, 20)
   var411.SnapIncrement = 1
   var318.RangeSlider = var2.createElement(var6, var411)
   return var2.createElement("Frame", var311, var318)
end

fun8 = var5.withContext
local var425 = {}
var425.Localization = var5.Localization
var425.Stylizer = var5.Stylizer
var12 = fun8(var425)(var12)
return var12
