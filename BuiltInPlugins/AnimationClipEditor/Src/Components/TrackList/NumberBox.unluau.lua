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
   local var64 = {}
   var64.focused = false
   arg1.state = var64
   function arg1.getTextWidth(arg1, arg2)
      local var71 = var2
      var71 = arg1
      return var71.getTextWidth(var71, arg2.trackTheme.textSize, arg2.font)
   end
   
   function arg1.focusChanged(arg1, arg2, arg3)
      local var80 = {}
      var80.focused = arg2
      arg1:setState(var80)
      if not arg2 then
         if arg3 then
            local var0 = tonumber(arg1.Text)
            if var0 then
               if arg1.props.SetNumber then
                  local var90 = arg1.props
                  var90 = var0
                  local var0 = var90.SetNumber(var90)
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
         local var114 = arg1.props
         var114 = arg1
         var114.OnDragMoved(var114)
      end
   end
   
   function arg1.onDragBegan(arg1)
      if arg1.props.OnDragBegan then
         local var121 = arg1.props
         var121 = arg1
         var121.OnDragBegan(var121)
      end
   end
   
end

function var9.formatNumber(arg1, arg2)
   local var0 = arg1.props.Precision or var3.NUMBER_PRECISION
   return tostring(math.floor(0.5 + arg2 * (var0)) / (var0))
end

local function fun6(arg1)
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
   local var165 = {}
   var165.Style = "BorderBox"
   var165.Size = var0.Size
   var165.Position = var0.Position
   var165.ZIndex = 2
   var165.AnchorPoint = var0.AnchorPoint
   var165.BackgroundColor3 = var2.backgroundColor
   var165.BorderColor3 = var6
   var165.LayoutOrder = var0.LayoutOrder
   local var169 = {}
   local var173 = {}
   var173.SortOrder = Enum.SortOrder.LayoutOrder
   var173.FillDirection = Enum.FillDirection.Horizontal
   var169.Layout = var1.createElement("UIListLayout", var173)
   local var180 = {}
   var180.Style = "BorderBox"
   var180.Size = UDim2.new(0, var7, 1, 0)
   var180.BackgroundColor3 = var3.shadedBackgroundColor
   var180.BorderColor3 = var6
   var180.LayoutOrder = 1
   local var190 = {}
   local var194 = {}
   var194.Size = UDim2.new(1, 0, 1, 0)
   var194.BackgroundTransparency = 1
   var194.ZIndex = 2
   var194.Text = var4
   var194.Font = var1.font
   local var204 = var3.textSize
   var194.TextSize = var204
   var204 = var0.Color
   var194.TextColor3 = var204 or var3.textColor
   var194.TextXAlignment = Enum.TextXAlignment.Center
   var190.NameLabel = var1.createElement("TextLabel", var194)
   local var212 = {}
   var212.Size = UDim2.new(0, 5, 1, 65534)
   var212.Position = UDim2.new(1, 0, 0.5, 0)
   var212.AnchorPoint = Vector2.new(1, 0.5)
   var212.BackgroundColor3 = var3.shadedBackgroundColor
   var212.BorderSizePixel = 0
   var190.LeftBorderOverlay = var1.createElement("Frame", var212)
   local var235 = {}
   var235.Size = UDim2.new(0, 5, 1, 65534)
   var235.Position = UDim2.new(1, 0, 0.5, 0)
   var235.AnchorPoint = Vector2.new(0, 0.5)
   var235.BackgroundColor3 = var2.backgroundColor
   var235.BorderSizePixel = 0
   var190.RightBorderOverlay = var1.createElement("Frame", var235)
   if not var5 then
      local var258 = {}
      var258.Size = UDim2.new(1, 0, 1, 0)
      var258.Cursor = "SizeEW"
      var258.OnDragMoved = arg1.onDragMoved
      var258.OnDragBegan = arg1.onDragBegan
      local var0 = var1.createElement(var4, var258) or nil
   end
   var190.DragArea = nil
   var169.LabelFrame = var1.createElement(var6, var180, var190)
   local var276 = {}
   var276.Size = UDim2.new(1, var7, 1, 0)
   var276.Text = arg1:formatNumber(var0.Number)
   var276.TextXAlignment = Enum.TextXAlignment.Left
   var276.ReadOnly = var5
   var276.LayoutOrder = 2
   var276.ClearTextOnFocus = false
   var276.FocusChanged = arg1.focusChanged
   var169.TextBox = var1.createElement(var8, var276)
   return var1.createElement(var6, var165, var169)
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
   local var165 = {}
   var165.Style = "BorderBox"
   var165.Size = var0.Size
   var165.Position = var0.Position
   var165.ZIndex = 2
   var165.AnchorPoint = var0.AnchorPoint
   var165.BackgroundColor3 = var2.backgroundColor
   var165.BorderColor3 = var6
   var165.LayoutOrder = var0.LayoutOrder
   local var169 = {}
   local var173 = {}
   var173.SortOrder = Enum.SortOrder.LayoutOrder
   var173.FillDirection = Enum.FillDirection.Horizontal
   var169.Layout = var1.createElement("UIListLayout", var173)
   local var180 = {}
   var180.Style = "BorderBox"
   var180.Size = UDim2.new(0, var7, 1, 0)
   var180.BackgroundColor3 = var3.shadedBackgroundColor
   var180.BorderColor3 = var6
   var180.LayoutOrder = 1
   local var190 = {}
   local var194 = {}
   var194.Size = UDim2.new(1, 0, 1, 0)
   var194.BackgroundTransparency = 1
   var194.ZIndex = 2
   var194.Text = var4
   var194.Font = var1.font
   local var204 = var3.textSize
   var194.TextSize = var204
   var204 = var0.Color
   var194.TextColor3 = var204 or var3.textColor
   var194.TextXAlignment = Enum.TextXAlignment.Center
   var190.NameLabel = var1.createElement("TextLabel", var194)
   local var212 = {}
   var212.Size = UDim2.new(0, 5, 1, 65534)
   var212.Position = UDim2.new(1, 0, 0.5, 0)
   var212.AnchorPoint = Vector2.new(1, 0.5)
   var212.BackgroundColor3 = var3.shadedBackgroundColor
   var212.BorderSizePixel = 0
   var190.LeftBorderOverlay = var1.createElement("Frame", var212)
   local var235 = {}
   var235.Size = UDim2.new(0, 5, 1, 65534)
   var235.Position = UDim2.new(1, 0, 0.5, 0)
   var235.AnchorPoint = Vector2.new(0, 0.5)
   var235.BackgroundColor3 = var2.backgroundColor
   var235.BorderSizePixel = 0
   var190.RightBorderOverlay = var1.createElement("Frame", var235)
   if not var5 then
      local var258 = {}
      var258.Size = UDim2.new(1, 0, 1, 0)
      var258.Cursor = "SizeEW"
      var258.OnDragMoved = arg1.onDragMoved
      var258.OnDragBegan = arg1.onDragBegan
      local var0 = var1.createElement(var4, var258) or nil
   end
   var190.DragArea = nil
   var169.LabelFrame = var1.createElement(var6, var180, var190)
   local var276 = {}
   var276.Size = UDim2.new(1, var7, 1, 0)
   var276.Text = arg1:formatNumber(var0.Number)
   var276.TextXAlignment = Enum.TextXAlignment.Left
   var276.ReadOnly = var5
   var276.LayoutOrder = 2
   var276.ClearTextOnFocus = false
   var276.FocusChanged = arg1.focusChanged
   var169.TextBox = var1.createElement(var8, var276)
   return var1.createElement(var6, var165, var169)
end

fun6 = var7.withContext
local var292 = {}
var292.Stylizer = var7.Stylizer
var9 = fun6(var292)(var9)
return var9
