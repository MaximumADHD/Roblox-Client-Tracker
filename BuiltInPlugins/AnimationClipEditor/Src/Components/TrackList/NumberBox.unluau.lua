-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Util.StringUtils)
local var3 = require(var0.Src.Util.Constants)
local var4 = require(var0.Src.Components.DragListenerArea)
local var5 = require(var0.Packages.Framework)
local var6 = var5.UI.Pane
local var7 = var5.ContextServices
local var8 = require(var0.Src.Components.TextBox)
local var9 = var1.PureComponent:extend("NumberBox")
function var9.init(arg1)
   local var128 = {}
   var128.focused = false
   arg1.state = var128
   function arg1.getTextWidth(arg1, arg2)
      local var135 = var2
      var135 = arg1
      return var135.getTextWidth(var135, arg2.trackTheme.textSize, arg2.font)
   end
   
   function arg1.focusChanged(arg1, arg2, arg3)
      local var144 = {}
      var144.focused = arg2
      arg1:setState(var144)
      if not arg2 then
         if arg3 then
            local var0 = tonumber(arg1.Text)
            if var0 then
               if arg1.props.SetNumber then
                  local var154 = arg1.props
                  var154 = var0
                  local var0 = var154.SetNumber(var154)
                  if var0 then
                     arg1.Text = arg1:formatNumber(var0)
                     arg1.Text = arg1.props.Number
                     arg1.Text = arg1.props.Number
                  end
               end
            end
            arg1.Text = arg1.props.Number
         end
         arg1.Text = arg1.props.Number
      end
   end
   
   function arg1.onDragMoved(arg1)
      if arg1.props.OnDragMoved then
         local var178 = arg1.props
         var178 = arg1
         var178.OnDragMoved(var178)
      end
   end
   
   function arg1.onDragBegan(arg1)
      if arg1.props.OnDragBegan then
         local var185 = arg1.props
         var185 = arg1
         var185.OnDragBegan(var185)
      end
   end
   
end

function var9.formatNumber(arg1, arg2)
   local var0 = arg1.props.Precision or var3.NUMBER_PRECISION
   return tostring(math.floor(0.5 + arg2 * (var0)) / (var0))
end

local function fun8(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.textBox
   local var3 = var1.trackTheme
   local var4 = var0.Name
   local var5 = var0.ReadOnly
   if arg1.state.focused then
      local var0 = var2.focusedBorder or var2.defaultBorder
   end
   local var6 = var2.defaultBorder
   local var7 = arg1.getTextWidth(var4, var1) + 12
   local var229 = {}
   var229.Style = "BorderBox"
   var229.Size = var0.Size
   var229.Position = var0.Position
   var229.ZIndex = 2
   var229.AnchorPoint = var0.AnchorPoint
   var229.BackgroundColor3 = var2.backgroundColor
   var229.BorderColor3 = var6
   var229.LayoutOrder = var0.LayoutOrder
   local var233 = {}
   local var237 = {}
   var237.SortOrder = Enum.SortOrder.LayoutOrder
   var237.FillDirection = Enum.FillDirection.Horizontal
   var233.Layout = var1.createElement("UIListLayout", var237)
   local var244 = {}
   var244.Style = "BorderBox"
   var244.Size = UDim2.new(0, var7, 1, 0)
   var244.BackgroundColor3 = var3.shadedBackgroundColor
   var244.BorderColor3 = var6
   var244.LayoutOrder = 1
   local var254 = {}
   local var258 = {}
   var258.Size = UDim2.new(1, 0, 1, 0)
   var258.BackgroundTransparency = 1
   var258.ZIndex = 2
   var258.Text = var4
   var258.Font = var1.font
   local var268 = var3.textSize
   var258.TextSize = var268
   var268 = var0.Color
   var258.TextColor3 = var268 or var3.textColor
   var258.TextXAlignment = Enum.TextXAlignment.Center
   var254.NameLabel = var1.createElement("TextLabel", var258)
   local var276 = {}
   var276.Size = UDim2.new(0, 5, 1, 65534)
   var276.Position = UDim2.new(1, 0, 0.5, 0)
   var276.AnchorPoint = Vector2.new(1, 0.5)
   var276.BackgroundColor3 = var3.shadedBackgroundColor
   var276.BorderSizePixel = 0
   var254.LeftBorderOverlay = var1.createElement("Frame", var276)
   local var299 = {}
   var299.Size = UDim2.new(0, 5, 1, 65534)
   var299.Position = UDim2.new(1, 0, 0.5, 0)
   var299.AnchorPoint = Vector2.new(0, 0.5)
   var299.BackgroundColor3 = var2.backgroundColor
   var299.BorderSizePixel = 0
   var254.RightBorderOverlay = var1.createElement("Frame", var299)
   if not var5 then
      local var322 = {}
      var322.Size = UDim2.new(1, 0, 1, 0)
      var322.Cursor = "SizeEW"
      var322.OnDragMoved = arg1.onDragMoved
      var322.OnDragBegan = arg1.onDragBegan
      local var0 = var1.createElement(var4, var322) or nil
   end
   var254.DragArea = nil
   var233.LabelFrame = var1.createElement(var6, var244, var254)
   local var340 = {}
   var340.Size = UDim2.new(1, var7, 1, 0)
   var340.Text = arg1:formatNumber(var0.Number)
   var340.TextXAlignment = Enum.TextXAlignment.Left
   var340.ReadOnly = var5
   var340.LayoutOrder = 2
   var340.ClearTextOnFocus = false
   var340.FocusChanged = arg1.focusChanged
   var233.TextBox = var1.createElement(var8, var340)
   return var1.createElement(var6, var229, var233)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.textBox
   local var3 = var1.trackTheme
   local var4 = var0.Name
   local var5 = var0.ReadOnly
   if arg1.state.focused then
      local var0 = var2.focusedBorder or var2.defaultBorder
   end
   local var6 = var2.defaultBorder
   local var7 = arg1.getTextWidth(var4, var1) + 12
   local var229 = {}
   var229.Style = "BorderBox"
   var229.Size = var0.Size
   var229.Position = var0.Position
   var229.ZIndex = 2
   var229.AnchorPoint = var0.AnchorPoint
   var229.BackgroundColor3 = var2.backgroundColor
   var229.BorderColor3 = var6
   var229.LayoutOrder = var0.LayoutOrder
   local var233 = {}
   local var237 = {}
   var237.SortOrder = Enum.SortOrder.LayoutOrder
   var237.FillDirection = Enum.FillDirection.Horizontal
   var233.Layout = var1.createElement("UIListLayout", var237)
   local var244 = {}
   var244.Style = "BorderBox"
   var244.Size = UDim2.new(0, var7, 1, 0)
   var244.BackgroundColor3 = var3.shadedBackgroundColor
   var244.BorderColor3 = var6
   var244.LayoutOrder = 1
   local var254 = {}
   local var258 = {}
   var258.Size = UDim2.new(1, 0, 1, 0)
   var258.BackgroundTransparency = 1
   var258.ZIndex = 2
   var258.Text = var4
   var258.Font = var1.font
   local var268 = var3.textSize
   var258.TextSize = var268
   var268 = var0.Color
   var258.TextColor3 = var268 or var3.textColor
   var258.TextXAlignment = Enum.TextXAlignment.Center
   var254.NameLabel = var1.createElement("TextLabel", var258)
   local var276 = {}
   var276.Size = UDim2.new(0, 5, 1, 65534)
   var276.Position = UDim2.new(1, 0, 0.5, 0)
   var276.AnchorPoint = Vector2.new(1, 0.5)
   var276.BackgroundColor3 = var3.shadedBackgroundColor
   var276.BorderSizePixel = 0
   var254.LeftBorderOverlay = var1.createElement("Frame", var276)
   local var299 = {}
   var299.Size = UDim2.new(0, 5, 1, 65534)
   var299.Position = UDim2.new(1, 0, 0.5, 0)
   var299.AnchorPoint = Vector2.new(0, 0.5)
   var299.BackgroundColor3 = var2.backgroundColor
   var299.BorderSizePixel = 0
   var254.RightBorderOverlay = var1.createElement("Frame", var299)
   if not var5 then
      local var322 = {}
      var322.Size = UDim2.new(1, 0, 1, 0)
      var322.Cursor = "SizeEW"
      var322.OnDragMoved = arg1.onDragMoved
      var322.OnDragBegan = arg1.onDragBegan
      local var0 = var1.createElement(var4, var322) or nil
   end
   var254.DragArea = nil
   var233.LabelFrame = var1.createElement(var6, var244, var254)
   local var340 = {}
   var340.Size = UDim2.new(1, var7, 1, 0)
   var340.Text = arg1:formatNumber(var0.Number)
   var340.TextXAlignment = Enum.TextXAlignment.Left
   var340.ReadOnly = var5
   var340.LayoutOrder = 2
   var340.ClearTextOnFocus = false
   var340.FocusChanged = arg1.focusChanged
   var233.TextBox = var1.createElement(var8, var340)
   return var1.createElement(var6, var229, var233)
end

fun8 = var7.withContext
local var356 = {}
var356.Stylizer = var7.Stylizer
var9 = fun8(var356)(var9)
return var9
