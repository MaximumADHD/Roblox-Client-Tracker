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
   local var121 = {}
   var121.focused = false
   arg1.state = var121
   function arg1.getTextWidth(arg1, arg2)
      local var128 = var2
      var128 = arg1
      return var128.getTextWidth(var128, arg2.trackTheme.textSize, arg2.font)
   end
   
   function arg1.focusChanged(arg1, arg2, arg3)
      local var137 = {}
      var137.focused = arg2
      arg1:setState(var137)
      if not arg2 then
         if arg3 then
            local var0 = tonumber(arg1.Text)
            if var0 then
               if arg1.props.SetNumber then
                  local var147 = arg1.props
                  var147 = var0
                  local var0 = var147.SetNumber(var147)
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
         local var171 = arg1.props
         var171 = arg1
         var171.OnDragMoved(var171)
      end
   end
   
   function arg1.onDragBegan(arg1)
      if arg1.props.OnDragBegan then
         local var178 = arg1.props
         var178 = arg1
         var178.OnDragBegan(var178)
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
   local var222 = {}
   var222.Style = "BorderBox"
   var222.Size = var0.Size
   var222.Position = var0.Position
   var222.ZIndex = 2
   var222.AnchorPoint = var0.AnchorPoint
   var222.BackgroundColor3 = var2.backgroundColor
   var222.BorderColor3 = var6
   var222.LayoutOrder = var0.LayoutOrder
   local var226 = {}
   local var230 = {}
   var230.SortOrder = Enum.SortOrder.LayoutOrder
   var230.FillDirection = Enum.FillDirection.Horizontal
   var226.Layout = var1.createElement("UIListLayout", var230)
   local var237 = {}
   var237.Style = "BorderBox"
   var237.Size = UDim2.new(0, var7, 1, 0)
   var237.BackgroundColor3 = var3.shadedBackgroundColor
   var237.BorderColor3 = var6
   var237.LayoutOrder = 1
   local var247 = {}
   local var251 = {}
   var251.Size = UDim2.new(1, 0, 1, 0)
   var251.BackgroundTransparency = 1
   var251.ZIndex = 2
   var251.Text = var4
   var251.Font = var1.font
   local var261 = var3.textSize
   var251.TextSize = var261
   var261 = var0.Color
   var251.TextColor3 = var261 or var3.textColor
   var251.TextXAlignment = Enum.TextXAlignment.Center
   var247.NameLabel = var1.createElement("TextLabel", var251)
   local var269 = {}
   var269.Size = UDim2.new(0, 5, 1, 65534)
   var269.Position = UDim2.new(1, 0, 0.5, 0)
   var269.AnchorPoint = Vector2.new(1, 0.5)
   var269.BackgroundColor3 = var3.shadedBackgroundColor
   var269.BorderSizePixel = 0
   var247.LeftBorderOverlay = var1.createElement("Frame", var269)
   local var292 = {}
   var292.Size = UDim2.new(0, 5, 1, 65534)
   var292.Position = UDim2.new(1, 0, 0.5, 0)
   var292.AnchorPoint = Vector2.new(0, 0.5)
   var292.BackgroundColor3 = var2.backgroundColor
   var292.BorderSizePixel = 0
   var247.RightBorderOverlay = var1.createElement("Frame", var292)
   if not var5 then
      local var315 = {}
      var315.Size = UDim2.new(1, 0, 1, 0)
      var315.Cursor = "SizeEW"
      var315.OnDragMoved = arg1.onDragMoved
      var315.OnDragBegan = arg1.onDragBegan
      local var0 = var1.createElement(var4, var315) or nil
   end
   var247.DragArea = nil
   var226.LabelFrame = var1.createElement(var6, var237, var247)
   local var333 = {}
   var333.Size = UDim2.new(1, var7, 1, 0)
   var333.Text = arg1:formatNumber(var0.Number)
   var333.TextXAlignment = Enum.TextXAlignment.Left
   var333.ReadOnly = var5
   var333.LayoutOrder = 2
   var333.ClearTextOnFocus = false
   var333.FocusChanged = arg1.focusChanged
   var226.TextBox = var1.createElement(var8, var333)
   return var1.createElement(var6, var222, var226)
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
   local var222 = {}
   var222.Style = "BorderBox"
   var222.Size = var0.Size
   var222.Position = var0.Position
   var222.ZIndex = 2
   var222.AnchorPoint = var0.AnchorPoint
   var222.BackgroundColor3 = var2.backgroundColor
   var222.BorderColor3 = var6
   var222.LayoutOrder = var0.LayoutOrder
   local var226 = {}
   local var230 = {}
   var230.SortOrder = Enum.SortOrder.LayoutOrder
   var230.FillDirection = Enum.FillDirection.Horizontal
   var226.Layout = var1.createElement("UIListLayout", var230)
   local var237 = {}
   var237.Style = "BorderBox"
   var237.Size = UDim2.new(0, var7, 1, 0)
   var237.BackgroundColor3 = var3.shadedBackgroundColor
   var237.BorderColor3 = var6
   var237.LayoutOrder = 1
   local var247 = {}
   local var251 = {}
   var251.Size = UDim2.new(1, 0, 1, 0)
   var251.BackgroundTransparency = 1
   var251.ZIndex = 2
   var251.Text = var4
   var251.Font = var1.font
   local var261 = var3.textSize
   var251.TextSize = var261
   var261 = var0.Color
   var251.TextColor3 = var261 or var3.textColor
   var251.TextXAlignment = Enum.TextXAlignment.Center
   var247.NameLabel = var1.createElement("TextLabel", var251)
   local var269 = {}
   var269.Size = UDim2.new(0, 5, 1, 65534)
   var269.Position = UDim2.new(1, 0, 0.5, 0)
   var269.AnchorPoint = Vector2.new(1, 0.5)
   var269.BackgroundColor3 = var3.shadedBackgroundColor
   var269.BorderSizePixel = 0
   var247.LeftBorderOverlay = var1.createElement("Frame", var269)
   local var292 = {}
   var292.Size = UDim2.new(0, 5, 1, 65534)
   var292.Position = UDim2.new(1, 0, 0.5, 0)
   var292.AnchorPoint = Vector2.new(0, 0.5)
   var292.BackgroundColor3 = var2.backgroundColor
   var292.BorderSizePixel = 0
   var247.RightBorderOverlay = var1.createElement("Frame", var292)
   if not var5 then
      local var315 = {}
      var315.Size = UDim2.new(1, 0, 1, 0)
      var315.Cursor = "SizeEW"
      var315.OnDragMoved = arg1.onDragMoved
      var315.OnDragBegan = arg1.onDragBegan
      local var0 = var1.createElement(var4, var315) or nil
   end
   var247.DragArea = nil
   var226.LabelFrame = var1.createElement(var6, var237, var247)
   local var333 = {}
   var333.Size = UDim2.new(1, var7, 1, 0)
   var333.Text = arg1:formatNumber(var0.Number)
   var333.TextXAlignment = Enum.TextXAlignment.Left
   var333.ReadOnly = var5
   var333.LayoutOrder = 2
   var333.ClearTextOnFocus = false
   var333.FocusChanged = arg1.focusChanged
   var226.TextBox = var1.createElement(var8, var333)
   return var1.createElement(var6, var222, var226)
end

fun8 = var7.withContext
local var349 = {}
var349.Stylizer = var7.Stylizer
var9 = fun8(var349)(var9)
return var9
