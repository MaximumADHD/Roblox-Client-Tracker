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
   local var233 = {}
   var233.focused = false
   arg1.state = var233
   function arg1.getTextWidth(arg1, arg2)
      local var240 = var2
      var240 = arg1
      return var240.getTextWidth(var240, arg2.trackTheme.textSize, arg2.font)
   end
   
   function arg1.focusChanged(arg1, arg2, arg3)
      local var249 = {}
      var249.focused = arg2
      arg1:setState(var249)
      if not arg2 then
         if arg3 then
            local var0 = tonumber(arg1.Text)
            if var0 then
               if arg1.props.SetNumber then
                  local var259 = arg1.props
                  var259 = var0
                  local var0 = var259.SetNumber(var259)
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
         local var283 = arg1.props
         var283 = arg1
         var283.OnDragMoved(var283)
      end
   end
   
   function arg1.onDragBegan(arg1)
      if arg1.props.OnDragBegan then
         local var290 = arg1.props
         var290 = arg1
         var290.OnDragBegan(var290)
      end
   end
   
end

function var9.formatNumber(arg1, arg2)
   local var0 = arg1.props.Precision or var3.NUMBER_PRECISION
   return tostring(math.floor(0.5 + arg2 * (var0)) / (var0))
end

local function fun20(arg1)
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
   local var334 = {}
   var334.Style = "BorderBox"
   var334.Size = var0.Size
   var334.Position = var0.Position
   var334.ZIndex = 2
   var334.AnchorPoint = var0.AnchorPoint
   var334.BackgroundColor3 = var2.backgroundColor
   var334.BorderColor3 = var6
   var334.LayoutOrder = var0.LayoutOrder
   local var338 = {}
   local var342 = {}
   var342.SortOrder = Enum.SortOrder.LayoutOrder
   var342.FillDirection = Enum.FillDirection.Horizontal
   var338.Layout = var1.createElement("UIListLayout", var342)
   local var349 = {}
   var349.Style = "BorderBox"
   var349.Size = UDim2.new(0, var7, 1, 0)
   var349.BackgroundColor3 = var3.shadedBackgroundColor
   var349.BorderColor3 = var6
   var349.LayoutOrder = 1
   local var359 = {}
   local var363 = {}
   var363.Size = UDim2.new(1, 0, 1, 0)
   var363.BackgroundTransparency = 1
   var363.ZIndex = 2
   var363.Text = var4
   var363.Font = var1.font
   local var373 = var3.textSize
   var363.TextSize = var373
   var373 = var0.Color
   var363.TextColor3 = var373 or var3.textColor
   var363.TextXAlignment = Enum.TextXAlignment.Center
   var359.NameLabel = var1.createElement("TextLabel", var363)
   local var381 = {}
   var381.Size = UDim2.new(0, 5, 1, 65534)
   var381.Position = UDim2.new(1, 0, 0.5, 0)
   var381.AnchorPoint = Vector2.new(1, 0.5)
   var381.BackgroundColor3 = var3.shadedBackgroundColor
   var381.BorderSizePixel = 0
   var359.LeftBorderOverlay = var1.createElement("Frame", var381)
   local var404 = {}
   var404.Size = UDim2.new(0, 5, 1, 65534)
   var404.Position = UDim2.new(1, 0, 0.5, 0)
   var404.AnchorPoint = Vector2.new(0, 0.5)
   var404.BackgroundColor3 = var2.backgroundColor
   var404.BorderSizePixel = 0
   var359.RightBorderOverlay = var1.createElement("Frame", var404)
   if not var5 then
      local var427 = {}
      var427.Size = UDim2.new(1, 0, 1, 0)
      var427.Cursor = "SizeEW"
      var427.OnDragMoved = arg1.onDragMoved
      var427.OnDragBegan = arg1.onDragBegan
      local var0 = var1.createElement(var4, var427) or nil
   end
   var359.DragArea = nil
   var338.LabelFrame = var1.createElement(var6, var349, var359)
   local var445 = {}
   var445.Size = UDim2.new(1, var7, 1, 0)
   var445.Text = arg1:formatNumber(var0.Number)
   var445.TextXAlignment = Enum.TextXAlignment.Left
   var445.ReadOnly = var5
   var445.LayoutOrder = 2
   var445.ClearTextOnFocus = false
   var445.FocusChanged = arg1.focusChanged
   var338.TextBox = var1.createElement(var8, var445)
   return var1.createElement(var6, var334, var338)
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
   local var334 = {}
   var334.Style = "BorderBox"
   var334.Size = var0.Size
   var334.Position = var0.Position
   var334.ZIndex = 2
   var334.AnchorPoint = var0.AnchorPoint
   var334.BackgroundColor3 = var2.backgroundColor
   var334.BorderColor3 = var6
   var334.LayoutOrder = var0.LayoutOrder
   local var338 = {}
   local var342 = {}
   var342.SortOrder = Enum.SortOrder.LayoutOrder
   var342.FillDirection = Enum.FillDirection.Horizontal
   var338.Layout = var1.createElement("UIListLayout", var342)
   local var349 = {}
   var349.Style = "BorderBox"
   var349.Size = UDim2.new(0, var7, 1, 0)
   var349.BackgroundColor3 = var3.shadedBackgroundColor
   var349.BorderColor3 = var6
   var349.LayoutOrder = 1
   local var359 = {}
   local var363 = {}
   var363.Size = UDim2.new(1, 0, 1, 0)
   var363.BackgroundTransparency = 1
   var363.ZIndex = 2
   var363.Text = var4
   var363.Font = var1.font
   local var373 = var3.textSize
   var363.TextSize = var373
   var373 = var0.Color
   var363.TextColor3 = var373 or var3.textColor
   var363.TextXAlignment = Enum.TextXAlignment.Center
   var359.NameLabel = var1.createElement("TextLabel", var363)
   local var381 = {}
   var381.Size = UDim2.new(0, 5, 1, 65534)
   var381.Position = UDim2.new(1, 0, 0.5, 0)
   var381.AnchorPoint = Vector2.new(1, 0.5)
   var381.BackgroundColor3 = var3.shadedBackgroundColor
   var381.BorderSizePixel = 0
   var359.LeftBorderOverlay = var1.createElement("Frame", var381)
   local var404 = {}
   var404.Size = UDim2.new(0, 5, 1, 65534)
   var404.Position = UDim2.new(1, 0, 0.5, 0)
   var404.AnchorPoint = Vector2.new(0, 0.5)
   var404.BackgroundColor3 = var2.backgroundColor
   var404.BorderSizePixel = 0
   var359.RightBorderOverlay = var1.createElement("Frame", var404)
   if not var5 then
      local var427 = {}
      var427.Size = UDim2.new(1, 0, 1, 0)
      var427.Cursor = "SizeEW"
      var427.OnDragMoved = arg1.onDragMoved
      var427.OnDragBegan = arg1.onDragBegan
      local var0 = var1.createElement(var4, var427) or nil
   end
   var359.DragArea = nil
   var338.LabelFrame = var1.createElement(var6, var349, var359)
   local var445 = {}
   var445.Size = UDim2.new(1, var7, 1, 0)
   var445.Text = arg1:formatNumber(var0.Number)
   var445.TextXAlignment = Enum.TextXAlignment.Left
   var445.ReadOnly = var5
   var445.LayoutOrder = 2
   var445.ClearTextOnFocus = false
   var445.FocusChanged = arg1.focusChanged
   var338.TextBox = var1.createElement(var8, var445)
   return var1.createElement(var6, var334, var338)
end

fun20 = var7.withContext
local var461 = {}
var461.Stylizer = var7.Stylizer
var9 = fun20(var461)(var9)
return var9
