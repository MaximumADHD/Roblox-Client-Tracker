-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework)
local var4 = require(var0.Core.Util.Constants)
local var5 = require(var0.Core.Util.ContextHelper).withLocalization
local var6 = var3.ContextServices
local var7 = var3.Util.GetTextSize
local var166 = var0.Core.Components
local var9 = require(var166.RoundButton)
local var10 = var2.PureComponent:extend("SearchOptionsFooter")
var166 = require(var0.Core.Util.SharedFlags.getFFlagToolboxEnableSearchOptionsRefactor)
if var166() then
   return nil
end
function var10.init(arg1)
   function arg1.onButtonClicked(arg1, arg2)
      if arg1.props.onButtonClicked then
         local var181 = arg1
         local var182 = var181.props
         var182 = arg1
         var181 = arg2
         var182.onButtonClicked(var182, var181)
      end
   end
   
end

function var10.render(arg1)
   return var5(function(arg1, arg2)
      if arg1.props.onButtonClicked then
         local var191 = arg1
         local var192 = var191.props
         var192 = arg1
         var191 = arg2
         var192.onButtonClicked(var192, var191)
      end
   end)
end

local function fun7(arg1, arg2, arg3)
   local var0 = arg1.props.Stylizer
   local var1 = arg1.props.Localization:getText("General", "SearchOptionsApply")
   local var2 = arg1.props.Localization:getText("General", "SearchOptionsCancel")
   local var3 = var0.searchOptions.cancelButton
   local var4 = var0.searchOptions.applyButton
   local var241 = {}
   var241.AnchorPoint = arg1.props.AnchorPoint
   var241.Position = arg1.props.Position
   var241.LayoutOrder = arg1.props.LayoutOrder
   var241.Size = UDim2.new(1, 0, 0, var4.FOOTER_BUTTON_HEIGHT)
   var241.BackgroundTransparency = 1
   local var256 = {}
   local var260 = {}
   var260.FillDirection = Enum.FillDirection.Horizontal
   var260.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var260.SortOrder = Enum.SortOrder.LayoutOrder
   var260.Padding = UDim.new(0, 10)
   var256.UIListLayout = var2.createElement("UIListLayout", var260)
   local var272 = {}
   var272.LayoutOrder = 1
   var272.Size = UDim2.new(0, math.max(55, var7(var2, nil, nil, Vector2.new(0, 0)).X + 20), 1, 0)
   var272.BackgroundColor3 = var3.backgroundColor
   var272.BorderColor3 = var3.borderColor
   function var2.Event.Activated(arg1, arg2)
      if arg1.props.onButtonClicked then
         local var293 = arg1
         local var294 = var293.props
         var294 = arg1
         var293 = arg2
         var294.onButtonClicked(var294, var293)
      end
   end
   
   local var296 = {}
   local var300 = {}
   var300.Size = UDim2.new(1, 0, 1, 0)
   var300.BackgroundTransparency = 1
   var300.Font = var4.FONT
   var300.TextSize = var4.FONT_SIZE_MEDIUM
   var300.Text = var2
   local var312 = var3.textColor
   var300.TextColor3 = var312
   var296.TextLabel = var2.createElement("TextLabel", var300)
   var256.CancelButton = var2.createElement(var9, var272, var296)
   local var318 = {}
   var318.LayoutOrder = 2
   var312 = var7(var1, nil, nil, Vector2.new(0, 0)).X + 20
   var318.Size = UDim2.new(0, math.max(55, var312), 1, 0)
   var318.BackgroundColor3 = var4.backgroundColor
   var318.BorderColor3 = var4.borderColor
   function var2.Event.Activated(arg1)
      function arg1.onButtonClicked(arg1, arg2)
         if arg1.props.onButtonClicked then
            local var339 = arg1
            local var340 = var339.props
            var340 = arg1
            var339 = arg2
            var340.onButtonClicked(var340, var339)
         end
      end
      
   end
   
   local var342 = {}
   local var346 = {}
   var346.Size = UDim2.new(1, 0, 1, 0)
   var346.BackgroundTransparency = 1
   var346.Font = var4.FONT
   var346.TextSize = var4.FONT_SIZE_MEDIUM
   var346.Text = var1
   var346.TextColor3 = var4.textColor
   var342.TextLabel = var2.createElement("TextLabel", var346)
   var256.ApplyButton = var2.createElement(var9, var318, var342)
   return var2.createElement("Frame", var241, var256)
end

function var10.renderContent(arg1, arg2, arg3)
   local var0 = arg1.props.Stylizer
   local var1 = arg1.props.Localization:getText("General", "SearchOptionsApply")
   local var2 = arg1.props.Localization:getText("General", "SearchOptionsCancel")
   local var3 = var0.searchOptions.cancelButton
   local var4 = var0.searchOptions.applyButton
   local var241 = {}
   var241.AnchorPoint = arg1.props.AnchorPoint
   var241.Position = arg1.props.Position
   var241.LayoutOrder = arg1.props.LayoutOrder
   var241.Size = UDim2.new(1, 0, 0, var4.FOOTER_BUTTON_HEIGHT)
   var241.BackgroundTransparency = 1
   local var256 = {}
   local var260 = {}
   var260.FillDirection = Enum.FillDirection.Horizontal
   var260.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var260.SortOrder = Enum.SortOrder.LayoutOrder
   var260.Padding = UDim.new(0, 10)
   var256.UIListLayout = var2.createElement("UIListLayout", var260)
   local var272 = {}
   var272.LayoutOrder = 1
   var272.Size = UDim2.new(0, math.max(55, var7(var2, nil, nil, Vector2.new(0, 0)).X + 20), 1, 0)
   var272.BackgroundColor3 = var3.backgroundColor
   var272.BorderColor3 = var3.borderColor
   function var2.Event.Activated(arg1, arg2)
      if arg1.props.onButtonClicked then
         local var293 = arg1
         local var294 = var293.props
         var294 = arg1
         var293 = arg2
         var294.onButtonClicked(var294, var293)
      end
   end
   
   local var296 = {}
   local var300 = {}
   var300.Size = UDim2.new(1, 0, 1, 0)
   var300.BackgroundTransparency = 1
   var300.Font = var4.FONT
   var300.TextSize = var4.FONT_SIZE_MEDIUM
   var300.Text = var2
   local var312 = var3.textColor
   var300.TextColor3 = var312
   var296.TextLabel = var2.createElement("TextLabel", var300)
   var256.CancelButton = var2.createElement(var9, var272, var296)
   local var318 = {}
   var318.LayoutOrder = 2
   var312 = var7(var1, nil, nil, Vector2.new(0, 0)).X + 20
   var318.Size = UDim2.new(0, math.max(55, var312), 1, 0)
   var318.BackgroundColor3 = var4.backgroundColor
   var318.BorderColor3 = var4.borderColor
   function var2.Event.Activated(arg1)
      function arg1.onButtonClicked(arg1, arg2)
         if arg1.props.onButtonClicked then
            local var339 = arg1
            local var340 = var339.props
            var340 = arg1
            var339 = arg2
            var340.onButtonClicked(var340, var339)
         end
      end
      
   end
   
   local var342 = {}
   local var346 = {}
   var346.Size = UDim2.new(1, 0, 1, 0)
   var346.BackgroundTransparency = 1
   var346.Font = var4.FONT
   var346.TextSize = var4.FONT_SIZE_MEDIUM
   var346.Text = var1
   var346.TextColor3 = var4.textColor
   var342.TextLabel = var2.createElement("TextLabel", var346)
   var256.ApplyButton = var2.createElement(var9, var318, var342)
   return var2.createElement("Frame", var241, var256)
end

fun7 = var6.withContext
local var362 = {}
var362.Localization = var6.Localization
var362.Stylizer = var6.Stylizer
var10 = fun7(var362)(var10)
return var10
