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
   local var41 = {}
   var41.focused = false
   arg1.state = var41
   function arg1.getTextWidth(arg1, arg2)
      local var48 = var2
      var48 = arg1
      return var48.getTextWidth(var48, arg2.trackTheme.textSize, arg2.font)
   end
   
   function arg1.focusChanged(arg1, arg2, arg3)
      local var57 = {}
      var57.focused = arg2
      arg1:setState(var57)
      if not arg2 then
         if arg3 then
            local var0 = tonumber(arg1.Text)
            if var0 then
               if arg1.props.SetNumber then
                  local var67 = arg1.props
                  var67 = var0
                  local var0 = var67.SetNumber(var67)
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
         local var91 = arg1.props
         var91 = arg1
         var91.OnDragMoved(var91)
      end
   end
   
   function arg1.onDragBegan(arg1)
      if arg1.props.OnDragBegan then
         local var98 = arg1.props
         var98 = arg1
         var98.OnDragBegan(var98)
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
   local var142 = {}
   var142.Style = "BorderBox"
   var142.Size = var0.Size
   var142.Position = var0.Position
   var142.ZIndex = 2
   var142.AnchorPoint = var0.AnchorPoint
   var142.BackgroundColor3 = var2.backgroundColor
   var142.BorderColor3 = var6
   var142.LayoutOrder = var0.LayoutOrder
   local var146 = {}
   local var150 = {}
   var150.SortOrder = Enum.SortOrder.LayoutOrder
   var150.FillDirection = Enum.FillDirection.Horizontal
   var146.Layout = var1.createElement("UIListLayout", var150)
   local var157 = {}
   var157.Style = "BorderBox"
   var157.Size = UDim2.new(0, var7, 1, 0)
   var157.BackgroundColor3 = var3.shadedBackgroundColor
   var157.BorderColor3 = var6
   var157.LayoutOrder = 1
   local var167 = {}
   local var171 = {}
   var171.Size = UDim2.new(1, 0, 1, 0)
   var171.BackgroundTransparency = 1
   var171.ZIndex = 2
   var171.Text = var4
   var171.Font = var1.font
   local var181 = var3.textSize
   var171.TextSize = var181
   var181 = var0.Color
   var171.TextColor3 = var181 or var3.textColor
   var171.TextXAlignment = Enum.TextXAlignment.Center
   var167.NameLabel = var1.createElement("TextLabel", var171)
   local var189 = {}
   var189.Size = UDim2.new(0, 5, 1, 65534)
   var189.Position = UDim2.new(1, 0, 0.5, 0)
   var189.AnchorPoint = Vector2.new(1, 0.5)
   var189.BackgroundColor3 = var3.shadedBackgroundColor
   var189.BorderSizePixel = 0
   var167.LeftBorderOverlay = var1.createElement("Frame", var189)
   local var212 = {}
   var212.Size = UDim2.new(0, 5, 1, 65534)
   var212.Position = UDim2.new(1, 0, 0.5, 0)
   var212.AnchorPoint = Vector2.new(0, 0.5)
   var212.BackgroundColor3 = var2.backgroundColor
   var212.BorderSizePixel = 0
   var167.RightBorderOverlay = var1.createElement("Frame", var212)
   if not var5 then
      local var235 = {}
      var235.Size = UDim2.new(1, 0, 1, 0)
      var235.Cursor = "SizeEW"
      var235.OnDragMoved = arg1.onDragMoved
      var235.OnDragBegan = arg1.onDragBegan
      local var0 = var1.createElement(var4, var235) or nil
   end
   var167.DragArea = nil
   var146.LabelFrame = var1.createElement(var6, var157, var167)
   local var253 = {}
   var253.Size = UDim2.new(1, var7, 1, 0)
   var253.Text = arg1:formatNumber(var0.Number)
   var253.TextXAlignment = Enum.TextXAlignment.Left
   var253.ReadOnly = var5
   var253.LayoutOrder = 2
   var253.ClearTextOnFocus = false
   var253.FocusChanged = arg1.focusChanged
   var146.TextBox = var1.createElement(var8, var253)
   return var1.createElement(var6, var142, var146)
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
   local var142 = {}
   var142.Style = "BorderBox"
   var142.Size = var0.Size
   var142.Position = var0.Position
   var142.ZIndex = 2
   var142.AnchorPoint = var0.AnchorPoint
   var142.BackgroundColor3 = var2.backgroundColor
   var142.BorderColor3 = var6
   var142.LayoutOrder = var0.LayoutOrder
   local var146 = {}
   local var150 = {}
   var150.SortOrder = Enum.SortOrder.LayoutOrder
   var150.FillDirection = Enum.FillDirection.Horizontal
   var146.Layout = var1.createElement("UIListLayout", var150)
   local var157 = {}
   var157.Style = "BorderBox"
   var157.Size = UDim2.new(0, var7, 1, 0)
   var157.BackgroundColor3 = var3.shadedBackgroundColor
   var157.BorderColor3 = var6
   var157.LayoutOrder = 1
   local var167 = {}
   local var171 = {}
   var171.Size = UDim2.new(1, 0, 1, 0)
   var171.BackgroundTransparency = 1
   var171.ZIndex = 2
   var171.Text = var4
   var171.Font = var1.font
   local var181 = var3.textSize
   var171.TextSize = var181
   var181 = var0.Color
   var171.TextColor3 = var181 or var3.textColor
   var171.TextXAlignment = Enum.TextXAlignment.Center
   var167.NameLabel = var1.createElement("TextLabel", var171)
   local var189 = {}
   var189.Size = UDim2.new(0, 5, 1, 65534)
   var189.Position = UDim2.new(1, 0, 0.5, 0)
   var189.AnchorPoint = Vector2.new(1, 0.5)
   var189.BackgroundColor3 = var3.shadedBackgroundColor
   var189.BorderSizePixel = 0
   var167.LeftBorderOverlay = var1.createElement("Frame", var189)
   local var212 = {}
   var212.Size = UDim2.new(0, 5, 1, 65534)
   var212.Position = UDim2.new(1, 0, 0.5, 0)
   var212.AnchorPoint = Vector2.new(0, 0.5)
   var212.BackgroundColor3 = var2.backgroundColor
   var212.BorderSizePixel = 0
   var167.RightBorderOverlay = var1.createElement("Frame", var212)
   if not var5 then
      local var235 = {}
      var235.Size = UDim2.new(1, 0, 1, 0)
      var235.Cursor = "SizeEW"
      var235.OnDragMoved = arg1.onDragMoved
      var235.OnDragBegan = arg1.onDragBegan
      local var0 = var1.createElement(var4, var235) or nil
   end
   var167.DragArea = nil
   var146.LabelFrame = var1.createElement(var6, var157, var167)
   local var253 = {}
   var253.Size = UDim2.new(1, var7, 1, 0)
   var253.Text = arg1:formatNumber(var0.Number)
   var253.TextXAlignment = Enum.TextXAlignment.Left
   var253.ReadOnly = var5
   var253.LayoutOrder = 2
   var253.ClearTextOnFocus = false
   var253.FocusChanged = arg1.focusChanged
   var146.TextBox = var1.createElement(var8, var253)
   return var1.createElement(var6, var142, var146)
end

fun6 = var7.withContext
local var269 = {}
var269.Stylizer = var7.Stylizer
var9 = fun6(var269)(var9)
return var9
