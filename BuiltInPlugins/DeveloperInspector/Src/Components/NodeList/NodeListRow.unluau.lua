-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Util.getInspectorIcon)
local var3 = game:GetService("TweenService")
local var4 = require(var0.Packages.Dash).join
local var5 = var1.PureComponent:extend("NodeListRow")
local var6 = require(var0.Packages.Framework).UI
local var7 = var6.Pane
local var8 = var6.LinkText
local var9 = var6.TextLabel
function var5.init(arg1)
   arg1.containerRef = var1.createRef()
   local var39 = {}
   var39.isHovering = false
   arg1.state = var39
   function arg1.onMouseEnter()
      local var42 = {}
      var42.isHovering = true
      arg1:setState(var42)
   end
   
   function arg1.onMouseLeave()
      local var46 = {}
      var46.isHovering = false
      arg1:setState(var46)
   end
   
   function arg1.onInputBegan(arg1, arg2)
      if arg2.UserInputType == Enum.UserInputType.MouseButton1 then
         arg1.props.OnSelect(arg1.props.Index)
      end
   end
   
   function arg1.onClick()
      arg1.props.OnClickLink(arg1.props.Index)
   end
   
end

function var5.didUpdate(arg1)
   if arg1.props.Flash then
      arg1:flash(arg1.props.Flash.heat)
   end
end

function var5.flash(arg1, arg2)
   local var0 = arg1.containerRef:getValue()
   if not var0 then
   end
   if arg1.flashTween then
      arg1.flashTween:Cancel()
   end
   if arg1.props.IsSelected then
   end
   local var89 = {}
   var89.BackgroundColor3 = arg1.props.Style.BackgroundColor
   arg1.flashTween = var3:create(var0, TweenInfo.new(1, Enum.EasingStyle.Linear), var89)
   local var96 = 255
   var96 = math.max(0, var96 - arg2 * 10)
   var0.BackgroundColor3 = Color3.fromRGB(255, var96, 100)
   arg1.flashTween:Play()
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var0.Style
   local var3 = var0.IsSelected
   local var4 = var2.IconPadding
   local var5 = var2(var0.Icon)
   local var6 = var5.ImageRectSize.X
   if var3 then
      if not var2.SelectedColor then
         if var1.isHovering then
            local var0 = var2.HoverColor or var2.BackgroundColor
         end
         local var0 = var2.BackgroundColor
      end
   end
   if var1.isHovering then
      local var0 = var2.HoverColor or var2.BackgroundColor
   end
   if var3 then
      local var0 = var2.SelectedTextColor or nil
   end
   local var7 = nil
   local var138 = {}
   var138.TextColor = var7
   local var143 = {}
   var1.Event.MouseEnter = arg1.onMouseEnter
   var1.Event.MouseLeave = arg1.onMouseLeave
   var1.Event.InputBegan = arg1.onInputBegan
   var1.Ref = arg1.containerRef
   var143.LayoutOrder = var0.Index
   var143.BackgroundColor3 = var2.BackgroundColor
   var143.Size = UDim2.new(1, 0, 0, var2.RowHeight)
   local var166 = {}
   local var170 = {}
   var170.Size = UDim2.fromOffset(var6, var5.ImageRectSize.Y)
   var170.BackgroundTransparency = 1
   var170.Image = var5.Image
   var170.ImageRectSize = var5.ImageRectSize
   var170.ImageRectOffset = var5.ImageRectOffset
   var170.Position = UDim2.new(0, var4, 0.5, 0)
   var170.AnchorPoint = Vector2.new(0, 0.5)
   var166.Icon = var1.createElement("ImageLabel", var170)
   local var194 = {}
   var194.Style = var2.Text
   var194.Text = var0.Name
   var194.TextColor = var7
   var194.Size = UDim2.new(1, 0, 0, var2.RowHeight)
   var194.Position = UDim2.fromOffset(var6 + 3 * var4, 0)
   var194.TextXAlignment = Enum.TextXAlignment.Left
   var194.TextYAlignment = Enum.TextYAlignment.Center
   var166.Text = var1.createElement(var9, var194)
   local var213 = {}
   var213.OnClick = arg1.onClick
   var213.Style = var4(var2.Link, var138)
   var213.AnchorPoint = Vector2.new(1, 0)
   var213.Position = UDim2.new(1, 65526, 0, 0)
   var213.Text = arg1.props.LinkText
   var213.Size = UDim2.new(1, 0, 0, var2.RowHeight)
   var213.TextXAlignment = Enum.TextXAlignment.Right
   var213.TextYAlignment = Enum.TextYAlignment.Center
   var166.Link = var1.createElement(var8, var213)
   return var1.createElement(var7, var143, var166)
end

return var5
