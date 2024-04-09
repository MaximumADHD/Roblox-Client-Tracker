-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Util.Constants)
local var4 = require(var1.Framework).ContextServices
local var5 = var2.PureComponent:extend("LiveSearchEntry")
function var5.init(arg1, arg2)
   local var353 = {}
   var353.hovering = false
   arg1.state = var353
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
      local var370 = {}
      var370.hovering = true
      arg1:setState(var370)
   end
   
   function arg1.mouseLeave()
      local var374 = {}
      var374.hovering = false
      arg1:setState(var374)
   end
   
end

local function fun15(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = var0.dropdownMenu
   local var2 = var1.item
   local var3 = arg1.state.hovering
   local var398 = {}
   local var405 = var3.SCROLLBAR_PADDING
   var405 = var3.SEARCH_ENTRY_HEIGHT
   var398.Size = UDim2.new(1, var3.SCROLLBAR_BACKGROUND_THICKNESS + var405, 0, var405)
   if var3 then
      local var0 = var2.backgroundSelectedColor or var2.backgroundColor
   end
   var398.BackgroundColor3 = var2.backgroundColor
   var398.BorderSizePixel = 0
   var398.LayoutOrder = arg1.props.LayoutOrder
   var398.ZIndex = 2
   var398.AutoButtonColor = false
   var2.Event.Activated = arg1.onClick
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var428 = {}
   local var429 = var0.isDarkerTheme
   if var429 then
      local var433 = {}
      var433.Size = UDim2.new(0, var3.DROPDOWN_SELECTED_BAR, 1, 0)
      var433.BorderSizePixel = 0
      var433.BackgroundColor3 = var1.item.selectedBarColor
      var433.Visible = var3
      var433.ZIndex = 2
      local var0 = var2.createElement("Frame", var433)
   end
   var428.SelectedBar = var429
   local var448 = {}
   var448.Size = UDim2.new(1, 0, 1, 0)
   var448.BackgroundTransparency = 1
   local var456 = {}
   local var460 = {}
   var460.PaddingLeft = UDim.new(0, 10)
   var460.PaddingRight = UDim.new(0, 10)
   var460.PaddingTop = UDim.new(0, 2)
   var460.PaddingBottom = UDim.new(0, 2)
   var456.UIPadding = var2.createElement("UIPadding", var460)
   local var481 = {}
   var481.FillDirection = Enum.FillDirection.Horizontal
   var481.SortOrder = Enum.SortOrder.LayoutOrder
   var481.VerticalAlignment = Enum.VerticalAlignment.Center
   var481.Padding = UDim.new(0, 10)
   var456.UIListLayout = var2.createElement("UIListLayout", var481)
   local var493 = {}
   var493.LayoutOrder = 2
   var493.Size = UDim2.new(0.8, 0, 0.8, 0)
   var493.SizeConstraint = Enum.SizeConstraint.RelativeYY
   var493.AnchorPoint = Vector2.new(0, 0.5)
   var493.Image = arg1.props.Thumbnail
   var493.BackgroundTransparency = 1
   var493.ZIndex = 3
   var456.Thumbnail = var2.createElement("ImageLabel", var493)
   local var512 = {}
   var512.LayoutOrder = 3
   var512.Size = UDim2.new(1, 0, 1, 0)
   var512.BackgroundTransparency = 1
   var512.Text = arg1.props.Name
   var512.TextColor3 = var2.textColor
   var512.Font = var3.FONT
   var512.TextSize = var3.FONT_SIZE_MEDIUM
   var512.TextXAlignment = Enum.TextXAlignment.Left
   var512.TextYAlignment = Enum.TextYAlignment.Center
   var512.TextTruncate = Enum.TextTruncate.AtEnd
   var512.ClipsDescendants = true
   var512.ZIndex = 3
   var456.TextLabel = var2.createElement("TextLabel", var512)
   var428.Container = var2.createElement("Frame", var448, var456)
   return var2.createElement("ImageButton", var398, var428)
end

function var5.render(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = var0.dropdownMenu
   local var2 = var1.item
   local var3 = arg1.state.hovering
   local var398 = {}
   local var405 = var3.SCROLLBAR_PADDING
   var405 = var3.SEARCH_ENTRY_HEIGHT
   var398.Size = UDim2.new(1, var3.SCROLLBAR_BACKGROUND_THICKNESS + var405, 0, var405)
   if var3 then
      local var0 = var2.backgroundSelectedColor or var2.backgroundColor
   end
   var398.BackgroundColor3 = var2.backgroundColor
   var398.BorderSizePixel = 0
   var398.LayoutOrder = arg1.props.LayoutOrder
   var398.ZIndex = 2
   var398.AutoButtonColor = false
   var2.Event.Activated = arg1.onClick
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var428 = {}
   local var429 = var0.isDarkerTheme
   if var429 then
      local var433 = {}
      var433.Size = UDim2.new(0, var3.DROPDOWN_SELECTED_BAR, 1, 0)
      var433.BorderSizePixel = 0
      var433.BackgroundColor3 = var1.item.selectedBarColor
      var433.Visible = var3
      var433.ZIndex = 2
      local var0 = var2.createElement("Frame", var433)
   end
   var428.SelectedBar = var429
   local var448 = {}
   var448.Size = UDim2.new(1, 0, 1, 0)
   var448.BackgroundTransparency = 1
   local var456 = {}
   local var460 = {}
   var460.PaddingLeft = UDim.new(0, 10)
   var460.PaddingRight = UDim.new(0, 10)
   var460.PaddingTop = UDim.new(0, 2)
   var460.PaddingBottom = UDim.new(0, 2)
   var456.UIPadding = var2.createElement("UIPadding", var460)
   local var481 = {}
   var481.FillDirection = Enum.FillDirection.Horizontal
   var481.SortOrder = Enum.SortOrder.LayoutOrder
   var481.VerticalAlignment = Enum.VerticalAlignment.Center
   var481.Padding = UDim.new(0, 10)
   var456.UIListLayout = var2.createElement("UIListLayout", var481)
   local var493 = {}
   var493.LayoutOrder = 2
   var493.Size = UDim2.new(0.8, 0, 0.8, 0)
   var493.SizeConstraint = Enum.SizeConstraint.RelativeYY
   var493.AnchorPoint = Vector2.new(0, 0.5)
   var493.Image = arg1.props.Thumbnail
   var493.BackgroundTransparency = 1
   var493.ZIndex = 3
   var456.Thumbnail = var2.createElement("ImageLabel", var493)
   local var512 = {}
   var512.LayoutOrder = 3
   var512.Size = UDim2.new(1, 0, 1, 0)
   var512.BackgroundTransparency = 1
   var512.Text = arg1.props.Name
   var512.TextColor3 = var2.textColor
   var512.Font = var3.FONT
   var512.TextSize = var3.FONT_SIZE_MEDIUM
   var512.TextXAlignment = Enum.TextXAlignment.Left
   var512.TextYAlignment = Enum.TextYAlignment.Center
   var512.TextTruncate = Enum.TextTruncate.AtEnd
   var512.ClipsDescendants = true
   var512.ZIndex = 3
   var456.TextLabel = var2.createElement("TextLabel", var512)
   var428.Container = var2.createElement("Frame", var448, var456)
   return var2.createElement("ImageButton", var398, var428)
end

fun15 = var4.withContext
local var534 = {}
var534.Stylizer = var4.Stylizer
var5 = fun15(var534)(var5)
return var5
