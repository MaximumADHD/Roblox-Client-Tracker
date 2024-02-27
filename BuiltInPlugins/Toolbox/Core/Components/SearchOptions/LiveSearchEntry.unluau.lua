-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Util.Constants)
local var4 = require(var1.Framework).ContextServices
local var5 = var2.PureComponent:extend("LiveSearchEntry")
function var5.init(arg1, arg2)
   local var364 = {}
   var364.hovering = false
   arg1.state = var364
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
      local var381 = {}
      var381.hovering = true
      arg1:setState(var381)
   end
   
   function arg1.mouseLeave()
      local var385 = {}
      var385.hovering = false
      arg1:setState(var385)
   end
   
end

local function fun15(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = var0.dropdownMenu
   local var2 = var1.item
   local var3 = arg1.state.hovering
   local var409 = {}
   local var416 = var3.SCROLLBAR_PADDING
   var416 = var3.SEARCH_ENTRY_HEIGHT
   var409.Size = UDim2.new(1, var3.SCROLLBAR_BACKGROUND_THICKNESS + var416, 0, var416)
   if var3 then
      local var0 = var2.backgroundSelectedColor or var2.backgroundColor
   end
   var409.BackgroundColor3 = var2.backgroundColor
   var409.BorderSizePixel = 0
   var409.LayoutOrder = arg1.props.LayoutOrder
   var409.ZIndex = 2
   var409.AutoButtonColor = false
   var2.Event.Activated = arg1.onClick
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var439 = {}
   local var440 = var0.isDarkerTheme
   if var440 then
      local var444 = {}
      var444.Size = UDim2.new(0, var3.DROPDOWN_SELECTED_BAR, 1, 0)
      var444.BorderSizePixel = 0
      var444.BackgroundColor3 = var1.item.selectedBarColor
      var444.Visible = var3
      var444.ZIndex = 2
      local var0 = var2.createElement("Frame", var444)
   end
   var439.SelectedBar = var440
   local var459 = {}
   var459.Size = UDim2.new(1, 0, 1, 0)
   var459.BackgroundTransparency = 1
   local var467 = {}
   local var471 = {}
   var471.PaddingLeft = UDim.new(0, 10)
   var471.PaddingRight = UDim.new(0, 10)
   var471.PaddingTop = UDim.new(0, 2)
   var471.PaddingBottom = UDim.new(0, 2)
   var467.UIPadding = var2.createElement("UIPadding", var471)
   local var492 = {}
   var492.FillDirection = Enum.FillDirection.Horizontal
   var492.SortOrder = Enum.SortOrder.LayoutOrder
   var492.VerticalAlignment = Enum.VerticalAlignment.Center
   var492.Padding = UDim.new(0, 10)
   var467.UIListLayout = var2.createElement("UIListLayout", var492)
   local var504 = {}
   var504.LayoutOrder = 2
   var504.Size = UDim2.new(0.8, 0, 0.8, 0)
   var504.SizeConstraint = Enum.SizeConstraint.RelativeYY
   var504.AnchorPoint = Vector2.new(0, 0.5)
   var504.Image = arg1.props.Thumbnail
   var504.BackgroundTransparency = 1
   var504.ZIndex = 3
   var467.Thumbnail = var2.createElement("ImageLabel", var504)
   local var523 = {}
   var523.LayoutOrder = 3
   var523.Size = UDim2.new(1, 0, 1, 0)
   var523.BackgroundTransparency = 1
   var523.Text = arg1.props.Name
   var523.TextColor3 = var2.textColor
   var523.Font = var3.FONT
   var523.TextSize = var3.FONT_SIZE_MEDIUM
   var523.TextXAlignment = Enum.TextXAlignment.Left
   var523.TextYAlignment = Enum.TextYAlignment.Center
   var523.TextTruncate = Enum.TextTruncate.AtEnd
   var523.ClipsDescendants = true
   var523.ZIndex = 3
   var467.TextLabel = var2.createElement("TextLabel", var523)
   var439.Container = var2.createElement("Frame", var459, var467)
   return var2.createElement("ImageButton", var409, var439)
end

function var5.render(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = var0.dropdownMenu
   local var2 = var1.item
   local var3 = arg1.state.hovering
   local var409 = {}
   local var416 = var3.SCROLLBAR_PADDING
   var416 = var3.SEARCH_ENTRY_HEIGHT
   var409.Size = UDim2.new(1, var3.SCROLLBAR_BACKGROUND_THICKNESS + var416, 0, var416)
   if var3 then
      local var0 = var2.backgroundSelectedColor or var2.backgroundColor
   end
   var409.BackgroundColor3 = var2.backgroundColor
   var409.BorderSizePixel = 0
   var409.LayoutOrder = arg1.props.LayoutOrder
   var409.ZIndex = 2
   var409.AutoButtonColor = false
   var2.Event.Activated = arg1.onClick
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var439 = {}
   local var440 = var0.isDarkerTheme
   if var440 then
      local var444 = {}
      var444.Size = UDim2.new(0, var3.DROPDOWN_SELECTED_BAR, 1, 0)
      var444.BorderSizePixel = 0
      var444.BackgroundColor3 = var1.item.selectedBarColor
      var444.Visible = var3
      var444.ZIndex = 2
      local var0 = var2.createElement("Frame", var444)
   end
   var439.SelectedBar = var440
   local var459 = {}
   var459.Size = UDim2.new(1, 0, 1, 0)
   var459.BackgroundTransparency = 1
   local var467 = {}
   local var471 = {}
   var471.PaddingLeft = UDim.new(0, 10)
   var471.PaddingRight = UDim.new(0, 10)
   var471.PaddingTop = UDim.new(0, 2)
   var471.PaddingBottom = UDim.new(0, 2)
   var467.UIPadding = var2.createElement("UIPadding", var471)
   local var492 = {}
   var492.FillDirection = Enum.FillDirection.Horizontal
   var492.SortOrder = Enum.SortOrder.LayoutOrder
   var492.VerticalAlignment = Enum.VerticalAlignment.Center
   var492.Padding = UDim.new(0, 10)
   var467.UIListLayout = var2.createElement("UIListLayout", var492)
   local var504 = {}
   var504.LayoutOrder = 2
   var504.Size = UDim2.new(0.8, 0, 0.8, 0)
   var504.SizeConstraint = Enum.SizeConstraint.RelativeYY
   var504.AnchorPoint = Vector2.new(0, 0.5)
   var504.Image = arg1.props.Thumbnail
   var504.BackgroundTransparency = 1
   var504.ZIndex = 3
   var467.Thumbnail = var2.createElement("ImageLabel", var504)
   local var523 = {}
   var523.LayoutOrder = 3
   var523.Size = UDim2.new(1, 0, 1, 0)
   var523.BackgroundTransparency = 1
   var523.Text = arg1.props.Name
   var523.TextColor3 = var2.textColor
   var523.Font = var3.FONT
   var523.TextSize = var3.FONT_SIZE_MEDIUM
   var523.TextXAlignment = Enum.TextXAlignment.Left
   var523.TextYAlignment = Enum.TextYAlignment.Center
   var523.TextTruncate = Enum.TextTruncate.AtEnd
   var523.ClipsDescendants = true
   var523.ZIndex = 3
   var467.TextLabel = var2.createElement("TextLabel", var523)
   var439.Container = var2.createElement("Frame", var459, var467)
   return var2.createElement("ImageButton", var409, var439)
end

fun15 = var4.withContext
local var545 = {}
var545.Stylizer = var4.Stylizer
var5 = fun15(var545)(var5)
return var5
