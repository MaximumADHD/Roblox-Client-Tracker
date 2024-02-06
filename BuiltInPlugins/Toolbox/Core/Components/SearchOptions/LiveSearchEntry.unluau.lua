-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Util.Constants)
local var4 = require(var1.Framework).ContextServices
local var5 = var2.PureComponent:extend("LiveSearchEntry")
function var5.init(arg1, arg2)
   local var370 = {}
   var370.hovering = false
   arg1.state = var370
   function arg1.closeDropdown()
      if arg1.props.closeDropdown then
         arg1.props.closeDropdown()
      end
   end
   
   function arg1.onClick()
      if arg1.props.onClick then
         arg1.props.onClick()
      end
      arg1.closeDropdown()
   end
   
   function arg1.mouseEnter()
      local var387 = {}
      var387.hovering = true
      arg1:setState(var387)
   end
   
   function arg1.mouseLeave()
      local var391 = {}
      var391.hovering = false
      arg1:setState(var391)
   end
   
end

local function fun15(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = var0.dropdownMenu
   local var2 = var1.item
   local var3 = arg1.state.hovering
   local var415 = {}
   local var422 = var3.SCROLLBAR_PADDING
   var422 = var3.SEARCH_ENTRY_HEIGHT
   var415.Size = UDim2.new(1, var3.SCROLLBAR_BACKGROUND_THICKNESS + var422, 0, var422)
   if var3 then
      local var0 = var2.backgroundSelectedColor or var2.backgroundColor
   end
   var415.BackgroundColor3 = var2.backgroundColor
   var415.BorderSizePixel = 0
   var415.LayoutOrder = arg1.props.LayoutOrder
   var415.ZIndex = 2
   var415.AutoButtonColor = false
   var2.Event.Activated = arg1.onClick
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var445 = {}
   local var446 = var0.isDarkerTheme
   if var446 then
      local var450 = {}
      var450.Size = UDim2.new(0, var3.DROPDOWN_SELECTED_BAR, 1, 0)
      var450.BorderSizePixel = 0
      var450.BackgroundColor3 = var1.item.selectedBarColor
      var450.Visible = var3
      var450.ZIndex = 2
      local var0 = var2.createElement("Frame", var450)
   end
   var445.SelectedBar = var446
   local var465 = {}
   var465.Size = UDim2.new(1, 0, 1, 0)
   var465.BackgroundTransparency = 1
   local var473 = {}
   local var477 = {}
   var477.PaddingLeft = UDim.new(0, 10)
   var477.PaddingRight = UDim.new(0, 10)
   var477.PaddingTop = UDim.new(0, 2)
   var477.PaddingBottom = UDim.new(0, 2)
   var473.UIPadding = var2.createElement("UIPadding", var477)
   local var498 = {}
   var498.FillDirection = Enum.FillDirection.Horizontal
   var498.SortOrder = Enum.SortOrder.LayoutOrder
   var498.VerticalAlignment = Enum.VerticalAlignment.Center
   var498.Padding = UDim.new(0, 10)
   var473.UIListLayout = var2.createElement("UIListLayout", var498)
   local var510 = {}
   var510.LayoutOrder = 2
   var510.Size = UDim2.new(0.8, 0, 0.8, 0)
   var510.SizeConstraint = Enum.SizeConstraint.RelativeYY
   var510.AnchorPoint = Vector2.new(0, 0.5)
   var510.Image = arg1.props.Thumbnail
   var510.BackgroundTransparency = 1
   var510.ZIndex = 3
   var473.Thumbnail = var2.createElement("ImageLabel", var510)
   local var529 = {}
   var529.LayoutOrder = 3
   var529.Size = UDim2.new(1, 0, 1, 0)
   var529.BackgroundTransparency = 1
   var529.Text = arg1.props.Name
   var529.TextColor3 = var2.textColor
   var529.Font = var3.FONT
   var529.TextSize = var3.FONT_SIZE_MEDIUM
   var529.TextXAlignment = Enum.TextXAlignment.Left
   var529.TextYAlignment = Enum.TextYAlignment.Center
   var529.TextTruncate = Enum.TextTruncate.AtEnd
   var529.ClipsDescendants = true
   var529.ZIndex = 3
   var473.TextLabel = var2.createElement("TextLabel", var529)
   var445.Container = var2.createElement("Frame", var465, var473)
   return var2.createElement("ImageButton", var415, var445)
end

function var5.render(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = var0.dropdownMenu
   local var2 = var1.item
   local var3 = arg1.state.hovering
   local var415 = {}
   local var422 = var3.SCROLLBAR_PADDING
   var422 = var3.SEARCH_ENTRY_HEIGHT
   var415.Size = UDim2.new(1, var3.SCROLLBAR_BACKGROUND_THICKNESS + var422, 0, var422)
   if var3 then
      local var0 = var2.backgroundSelectedColor or var2.backgroundColor
   end
   var415.BackgroundColor3 = var2.backgroundColor
   var415.BorderSizePixel = 0
   var415.LayoutOrder = arg1.props.LayoutOrder
   var415.ZIndex = 2
   var415.AutoButtonColor = false
   var2.Event.Activated = arg1.onClick
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var445 = {}
   local var446 = var0.isDarkerTheme
   if var446 then
      local var450 = {}
      var450.Size = UDim2.new(0, var3.DROPDOWN_SELECTED_BAR, 1, 0)
      var450.BorderSizePixel = 0
      var450.BackgroundColor3 = var1.item.selectedBarColor
      var450.Visible = var3
      var450.ZIndex = 2
      local var0 = var2.createElement("Frame", var450)
   end
   var445.SelectedBar = var446
   local var465 = {}
   var465.Size = UDim2.new(1, 0, 1, 0)
   var465.BackgroundTransparency = 1
   local var473 = {}
   local var477 = {}
   var477.PaddingLeft = UDim.new(0, 10)
   var477.PaddingRight = UDim.new(0, 10)
   var477.PaddingTop = UDim.new(0, 2)
   var477.PaddingBottom = UDim.new(0, 2)
   var473.UIPadding = var2.createElement("UIPadding", var477)
   local var498 = {}
   var498.FillDirection = Enum.FillDirection.Horizontal
   var498.SortOrder = Enum.SortOrder.LayoutOrder
   var498.VerticalAlignment = Enum.VerticalAlignment.Center
   var498.Padding = UDim.new(0, 10)
   var473.UIListLayout = var2.createElement("UIListLayout", var498)
   local var510 = {}
   var510.LayoutOrder = 2
   var510.Size = UDim2.new(0.8, 0, 0.8, 0)
   var510.SizeConstraint = Enum.SizeConstraint.RelativeYY
   var510.AnchorPoint = Vector2.new(0, 0.5)
   var510.Image = arg1.props.Thumbnail
   var510.BackgroundTransparency = 1
   var510.ZIndex = 3
   var473.Thumbnail = var2.createElement("ImageLabel", var510)
   local var529 = {}
   var529.LayoutOrder = 3
   var529.Size = UDim2.new(1, 0, 1, 0)
   var529.BackgroundTransparency = 1
   var529.Text = arg1.props.Name
   var529.TextColor3 = var2.textColor
   var529.Font = var3.FONT
   var529.TextSize = var3.FONT_SIZE_MEDIUM
   var529.TextXAlignment = Enum.TextXAlignment.Left
   var529.TextYAlignment = Enum.TextYAlignment.Center
   var529.TextTruncate = Enum.TextTruncate.AtEnd
   var529.ClipsDescendants = true
   var529.ZIndex = 3
   var473.TextLabel = var2.createElement("TextLabel", var529)
   var445.Container = var2.createElement("Frame", var465, var473)
   return var2.createElement("ImageButton", var415, var445)
end

fun15 = var4.withContext
local var551 = {}
var551.Stylizer = var4.Stylizer
var5 = fun15(var551)(var5)
return var5
