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
         local var194 = arg1.props
         var194 = arg1
         var194.onDurationChange(var194, arg1.props.maxDuration)
      end
   end
   
   function arg1.onMaxDurationChange(arg1)
      if arg1 ~= arg1.props.maxDuration then
         local var207 = arg1.props
         var207 = arg1
         arg1.props.onDurationChange(var207.minDuration, var207)
      end
   end
   
   function arg1.onSliderChange(arg1, arg2)
      arg2 = math.max(1, arg2)
      local var215 = arg1
      local var216 = var215.props
      var216 = arg1
      var215 = arg2
      var216.onDurationChange(var216, var215)
   end
   
end

local function fun5(arg1)
   local var0 = arg1.props
   local var1 = var0.minDuration
   local var2 = var0.maxDuration
   local var233 = {}
   var233.BackgroundTransparency = 1
   var233.AutomaticSize = Enum.AutomaticSize.Y
   var233.Size = UDim2.fromScale(1, 0)
   local var240 = {}
   local var244 = {}
   var244.SortOrder = Enum.SortOrder.LayoutOrder
   var244.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var244.Padding = UDim.new(0, var11.Y)
   var240.Layout = var2.createElement("UIListLayout", var244)
   local var256 = {}
   var256.BackgroundTransparency = 1
   var256.LayoutOrder = 1
   var256.Size = UDim2.new(1, 0, 0, var10.Y)
   local var266 = {}
   local var270 = {}
   var270.FillDirection = Enum.FillDirection.Horizontal
   var270.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var270.Padding = UDim.new(0, var11.X)
   var270.SortOrder = Enum.SortOrder.LayoutOrder
   var270.VerticalAlignment = Enum.VerticalAlignment.Center
   var266.UIListLayout = var2.createElement("UIListLayout", var270)
   local var284 = {}
   var284.currentValue = var1
   var284.defaultValue = 0
   var284.layoutOrder = 1
   var284.max = var2
   var284.min = 0
   var284.onDurationChange = arg1.onMinDurationChange
   var284.size = UDim2.new(0, var10.X, 0, var10.Y)
   var266.MinTextBox = var2.createElement(var4, var284)
   local var301 = {}
   var301.BackgroundTransparency = 1
   var301.LayoutOrder = 2
   var301.Size = UDim2.new(0, 20, 1, 0)
   var301.Text = var0.Localization:getText("General", "SearchOptionAudioTo")
   var301.TextColor3 = var0.Stylizer.searchOptions.audioSearch.textColor
   var266.ToLabel = var2.createElement("TextLabel", var301)
   local var315 = {}
   var315.currentValue = var2
   var315.defaultValue = var8
   var315.layoutOrder = 3
   var315.max = var8
   var315.min = var1
   var315.onDurationChange = arg1.onMaxDurationChange
   var315.size = UDim2.new(0, var10.X, 0, var10.Y)
   var266.MaxTextBox = var2.createElement(var4, var315)
   var240.AudioDuration = var2.createElement("Frame", var256, var266)
   local var333 = {}
   var333.LayoutOrder = 2
   var333.LowerRangeValue = var1
   var333.UpperRangeValue = var2
   var333.Min = var9
   var333.Max = var8
   var333.OnValuesChanged = arg1.onSliderChange
   var333.Size = UDim2.new(1, 0, 0, 20)
   var333.SnapIncrement = 1
   var240.RangeSlider = var2.createElement(var6, var333)
   return var2.createElement("Frame", var233, var240)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.minDuration
   local var2 = var0.maxDuration
   local var233 = {}
   var233.BackgroundTransparency = 1
   var233.AutomaticSize = Enum.AutomaticSize.Y
   var233.Size = UDim2.fromScale(1, 0)
   local var240 = {}
   local var244 = {}
   var244.SortOrder = Enum.SortOrder.LayoutOrder
   var244.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var244.Padding = UDim.new(0, var11.Y)
   var240.Layout = var2.createElement("UIListLayout", var244)
   local var256 = {}
   var256.BackgroundTransparency = 1
   var256.LayoutOrder = 1
   var256.Size = UDim2.new(1, 0, 0, var10.Y)
   local var266 = {}
   local var270 = {}
   var270.FillDirection = Enum.FillDirection.Horizontal
   var270.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var270.Padding = UDim.new(0, var11.X)
   var270.SortOrder = Enum.SortOrder.LayoutOrder
   var270.VerticalAlignment = Enum.VerticalAlignment.Center
   var266.UIListLayout = var2.createElement("UIListLayout", var270)
   local var284 = {}
   var284.currentValue = var1
   var284.defaultValue = 0
   var284.layoutOrder = 1
   var284.max = var2
   var284.min = 0
   var284.onDurationChange = arg1.onMinDurationChange
   var284.size = UDim2.new(0, var10.X, 0, var10.Y)
   var266.MinTextBox = var2.createElement(var4, var284)
   local var301 = {}
   var301.BackgroundTransparency = 1
   var301.LayoutOrder = 2
   var301.Size = UDim2.new(0, 20, 1, 0)
   var301.Text = var0.Localization:getText("General", "SearchOptionAudioTo")
   var301.TextColor3 = var0.Stylizer.searchOptions.audioSearch.textColor
   var266.ToLabel = var2.createElement("TextLabel", var301)
   local var315 = {}
   var315.currentValue = var2
   var315.defaultValue = var8
   var315.layoutOrder = 3
   var315.max = var8
   var315.min = var1
   var315.onDurationChange = arg1.onMaxDurationChange
   var315.size = UDim2.new(0, var10.X, 0, var10.Y)
   var266.MaxTextBox = var2.createElement(var4, var315)
   var240.AudioDuration = var2.createElement("Frame", var256, var266)
   local var333 = {}
   var333.LayoutOrder = 2
   var333.LowerRangeValue = var1
   var333.UpperRangeValue = var2
   var333.Min = var9
   var333.Max = var8
   var333.OnValuesChanged = arg1.onSliderChange
   var333.Size = UDim2.new(1, 0, 0, 20)
   var333.SnapIncrement = 1
   var240.RangeSlider = var2.createElement(var6, var333)
   return var2.createElement("Frame", var233, var240)
end

fun5 = var5.withContext
local var347 = {}
var347.Localization = var5.Localization
var347.Stylizer = var5.Stylizer
var12 = fun5(var347)(var12)
return var12
