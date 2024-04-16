-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework)
local var4 = require(var0.Core.Util.Constants)
local var5 = var3.ContextServices
local var6 = var3.Util.GetTextSize
local var456 = var0.Core.Components
local var8 = require(var456.RoundButton)
local var9 = var2.PureComponent:extend("SearchOptionsFooter")
var456 = require(var0.Core.Util.SharedFlags.getFFlagToolboxEnableSearchOptionsRefactor)
if var456() then
   return nil
end
function var9.init(arg1)
   function arg1.onButtonClicked(arg1, arg2)
      if arg1.props.onButtonClicked then
         local var471 = arg1
         local var472 = var471.props
         var472 = arg1
         var471 = arg2
         var472.onButtonClicked(var472, var471)
      end
   end
   
end

local function fun18(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = arg1.props.Localization:getText("General", "SearchOptionsApply")
   local var2 = arg1.props.Localization:getText("General", "SearchOptionsCancel")
   local var3 = var0.searchOptions.cancelButton
   local var4 = var0.searchOptions.applyButton
   local var518 = {}
   var518.AnchorPoint = arg1.props.AnchorPoint
   var518.Position = arg1.props.Position
   var518.LayoutOrder = arg1.props.LayoutOrder
   var518.Size = UDim2.new(1, 0, 0, var4.FOOTER_BUTTON_HEIGHT)
   var518.BackgroundTransparency = 1
   local var533 = {}
   local var537 = {}
   var537.FillDirection = Enum.FillDirection.Horizontal
   var537.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var537.SortOrder = Enum.SortOrder.LayoutOrder
   var537.Padding = UDim.new(0, 10)
   var533.UIListLayout = var2.createElement("UIListLayout", var537)
   local var549 = {}
   var549.LayoutOrder = 1
   var549.Size = UDim2.new(0, math.max(55, var6(var2, nil, nil, Vector2.new(0, 0)).X + 20), 1, 0)
   var549.BackgroundColor3 = var3.backgroundColor
   var549.BorderColor3 = var3.borderColor
   function var2.Event.Activated(arg1, arg2)
      if arg1.props.onButtonClicked then
         local var570 = arg1
         local var571 = var570.props
         var571 = arg1
         var570 = arg2
         var571.onButtonClicked(var571, var570)
      end
   end
   
   local var573 = {}
   local var577 = {}
   var577.Size = UDim2.new(1, 0, 1, 0)
   var577.BackgroundTransparency = 1
   var577.Font = var4.FONT
   var577.TextSize = var4.FONT_SIZE_MEDIUM
   var577.Text = var2
   local var589 = var3.textColor
   var577.TextColor3 = var589
   var573.TextLabel = var2.createElement("TextLabel", var577)
   var533.CancelButton = var2.createElement(var8, var549, var573)
   local var595 = {}
   var595.LayoutOrder = 2
   var589 = var6(var1, nil, nil, Vector2.new(0, 0)).X + 20
   var595.Size = UDim2.new(0, math.max(55, var589), 1, 0)
   var595.BackgroundColor3 = var4.backgroundColor
   var595.BorderColor3 = var4.borderColor
   function var2.Event.Activated(arg1)
      function arg1.onButtonClicked(arg1, arg2)
         if arg1.props.onButtonClicked then
            local var616 = arg1
            local var617 = var616.props
            var617 = arg1
            var616 = arg2
            var617.onButtonClicked(var617, var616)
         end
      end
      
   end
   
   local var619 = {}
   local var623 = {}
   var623.Size = UDim2.new(1, 0, 1, 0)
   var623.BackgroundTransparency = 1
   var623.Font = var4.FONT
   var623.TextSize = var4.FONT_SIZE_MEDIUM
   var623.Text = var1
   var623.TextColor3 = var4.textColor
   var619.TextLabel = var2.createElement("TextLabel", var623)
   var533.ApplyButton = var2.createElement(var8, var595, var619)
   return var2.createElement("Frame", var518, var533)
end

function var9.render(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = arg1.props.Localization:getText("General", "SearchOptionsApply")
   local var2 = arg1.props.Localization:getText("General", "SearchOptionsCancel")
   local var3 = var0.searchOptions.cancelButton
   local var4 = var0.searchOptions.applyButton
   local var518 = {}
   var518.AnchorPoint = arg1.props.AnchorPoint
   var518.Position = arg1.props.Position
   var518.LayoutOrder = arg1.props.LayoutOrder
   var518.Size = UDim2.new(1, 0, 0, var4.FOOTER_BUTTON_HEIGHT)
   var518.BackgroundTransparency = 1
   local var533 = {}
   local var537 = {}
   var537.FillDirection = Enum.FillDirection.Horizontal
   var537.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var537.SortOrder = Enum.SortOrder.LayoutOrder
   var537.Padding = UDim.new(0, 10)
   var533.UIListLayout = var2.createElement("UIListLayout", var537)
   local var549 = {}
   var549.LayoutOrder = 1
   var549.Size = UDim2.new(0, math.max(55, var6(var2, nil, nil, Vector2.new(0, 0)).X + 20), 1, 0)
   var549.BackgroundColor3 = var3.backgroundColor
   var549.BorderColor3 = var3.borderColor
   function var2.Event.Activated(arg1, arg2)
      if arg1.props.onButtonClicked then
         local var570 = arg1
         local var571 = var570.props
         var571 = arg1
         var570 = arg2
         var571.onButtonClicked(var571, var570)
      end
   end
   
   local var573 = {}
   local var577 = {}
   var577.Size = UDim2.new(1, 0, 1, 0)
   var577.BackgroundTransparency = 1
   var577.Font = var4.FONT
   var577.TextSize = var4.FONT_SIZE_MEDIUM
   var577.Text = var2
   local var589 = var3.textColor
   var577.TextColor3 = var589
   var573.TextLabel = var2.createElement("TextLabel", var577)
   var533.CancelButton = var2.createElement(var8, var549, var573)
   local var595 = {}
   var595.LayoutOrder = 2
   var589 = var6(var1, nil, nil, Vector2.new(0, 0)).X + 20
   var595.Size = UDim2.new(0, math.max(55, var589), 1, 0)
   var595.BackgroundColor3 = var4.backgroundColor
   var595.BorderColor3 = var4.borderColor
   function var2.Event.Activated(arg1)
      function arg1.onButtonClicked(arg1, arg2)
         if arg1.props.onButtonClicked then
            local var616 = arg1
            local var617 = var616.props
            var617 = arg1
            var616 = arg2
            var617.onButtonClicked(var617, var616)
         end
      end
      
   end
   
   local var619 = {}
   local var623 = {}
   var623.Size = UDim2.new(1, 0, 1, 0)
   var623.BackgroundTransparency = 1
   var623.Font = var4.FONT
   var623.TextSize = var4.FONT_SIZE_MEDIUM
   var623.Text = var1
   var623.TextColor3 = var4.textColor
   var619.TextLabel = var2.createElement("TextLabel", var623)
   var533.ApplyButton = var2.createElement(var8, var595, var619)
   return var2.createElement("Frame", var518, var533)
end

fun18 = var5.withContext
local var639 = {}
var639.Localization = var5.Localization
var639.Stylizer = var5.Stylizer
var9 = fun18(var639)(var9)
return var9
