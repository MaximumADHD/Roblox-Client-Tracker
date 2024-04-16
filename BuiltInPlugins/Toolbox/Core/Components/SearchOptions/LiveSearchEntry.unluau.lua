-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Util.Constants)
local var4 = require(var1.Framework).ContextServices
local var5 = var2.PureComponent:extend("LiveSearchEntry")
function var5.init(arg1, arg2)
   local var336 = {}
   var336.hovering = false
   arg1.state = var336
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
      local var353 = {}
      var353.hovering = true
      arg1:setState(var353)
   end
   
   function arg1.mouseLeave()
      local var357 = {}
      var357.hovering = false
      arg1:setState(var357)
   end
   
end

local function fun15(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = var0.dropdownMenu
   local var2 = var1.item
   local var3 = arg1.state.hovering
   local var381 = {}
   local var388 = var3.SCROLLBAR_PADDING
   var388 = var3.SEARCH_ENTRY_HEIGHT
   var381.Size = UDim2.new(1, var3.SCROLLBAR_BACKGROUND_THICKNESS + var388, 0, var388)
   if var3 then
      local var0 = var2.backgroundSelectedColor or var2.backgroundColor
   end
   var381.BackgroundColor3 = var2.backgroundColor
   var381.BorderSizePixel = 0
   var381.LayoutOrder = arg1.props.LayoutOrder
   var381.ZIndex = 2
   var381.AutoButtonColor = false
   var2.Event.Activated = arg1.onClick
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var411 = {}
   local var412 = var0.isDarkerTheme
   if var412 then
      local var416 = {}
      var416.Size = UDim2.new(0, var3.DROPDOWN_SELECTED_BAR, 1, 0)
      var416.BorderSizePixel = 0
      var416.BackgroundColor3 = var1.item.selectedBarColor
      var416.Visible = var3
      var416.ZIndex = 2
      local var0 = var2.createElement("Frame", var416)
   end
   var411.SelectedBar = var412
   local var431 = {}
   var431.Size = UDim2.new(1, 0, 1, 0)
   var431.BackgroundTransparency = 1
   local var439 = {}
   local var443 = {}
   var443.PaddingLeft = UDim.new(0, 10)
   var443.PaddingRight = UDim.new(0, 10)
   var443.PaddingTop = UDim.new(0, 2)
   var443.PaddingBottom = UDim.new(0, 2)
   var439.UIPadding = var2.createElement("UIPadding", var443)
   local var464 = {}
   var464.FillDirection = Enum.FillDirection.Horizontal
   var464.SortOrder = Enum.SortOrder.LayoutOrder
   var464.VerticalAlignment = Enum.VerticalAlignment.Center
   var464.Padding = UDim.new(0, 10)
   var439.UIListLayout = var2.createElement("UIListLayout", var464)
   local var476 = {}
   var476.LayoutOrder = 2
   var476.Size = UDim2.new(0.8, 0, 0.8, 0)
   var476.SizeConstraint = Enum.SizeConstraint.RelativeYY
   var476.AnchorPoint = Vector2.new(0, 0.5)
   var476.Image = arg1.props.Thumbnail
   var476.BackgroundTransparency = 1
   var476.ZIndex = 3
   var439.Thumbnail = var2.createElement("ImageLabel", var476)
   local var495 = {}
   var495.LayoutOrder = 3
   var495.Size = UDim2.new(1, 0, 1, 0)
   var495.BackgroundTransparency = 1
   var495.Text = arg1.props.Name
   var495.TextColor3 = var2.textColor
   var495.Font = var3.FONT
   var495.TextSize = var3.FONT_SIZE_MEDIUM
   var495.TextXAlignment = Enum.TextXAlignment.Left
   var495.TextYAlignment = Enum.TextYAlignment.Center
   var495.TextTruncate = Enum.TextTruncate.AtEnd
   var495.ClipsDescendants = true
   var495.ZIndex = 3
   var439.TextLabel = var2.createElement("TextLabel", var495)
   var411.Container = var2.createElement("Frame", var431, var439)
   return var2.createElement("ImageButton", var381, var411)
end

function var5.render(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = var0.dropdownMenu
   local var2 = var1.item
   local var3 = arg1.state.hovering
   local var381 = {}
   local var388 = var3.SCROLLBAR_PADDING
   var388 = var3.SEARCH_ENTRY_HEIGHT
   var381.Size = UDim2.new(1, var3.SCROLLBAR_BACKGROUND_THICKNESS + var388, 0, var388)
   if var3 then
      local var0 = var2.backgroundSelectedColor or var2.backgroundColor
   end
   var381.BackgroundColor3 = var2.backgroundColor
   var381.BorderSizePixel = 0
   var381.LayoutOrder = arg1.props.LayoutOrder
   var381.ZIndex = 2
   var381.AutoButtonColor = false
   var2.Event.Activated = arg1.onClick
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var411 = {}
   local var412 = var0.isDarkerTheme
   if var412 then
      local var416 = {}
      var416.Size = UDim2.new(0, var3.DROPDOWN_SELECTED_BAR, 1, 0)
      var416.BorderSizePixel = 0
      var416.BackgroundColor3 = var1.item.selectedBarColor
      var416.Visible = var3
      var416.ZIndex = 2
      local var0 = var2.createElement("Frame", var416)
   end
   var411.SelectedBar = var412
   local var431 = {}
   var431.Size = UDim2.new(1, 0, 1, 0)
   var431.BackgroundTransparency = 1
   local var439 = {}
   local var443 = {}
   var443.PaddingLeft = UDim.new(0, 10)
   var443.PaddingRight = UDim.new(0, 10)
   var443.PaddingTop = UDim.new(0, 2)
   var443.PaddingBottom = UDim.new(0, 2)
   var439.UIPadding = var2.createElement("UIPadding", var443)
   local var464 = {}
   var464.FillDirection = Enum.FillDirection.Horizontal
   var464.SortOrder = Enum.SortOrder.LayoutOrder
   var464.VerticalAlignment = Enum.VerticalAlignment.Center
   var464.Padding = UDim.new(0, 10)
   var439.UIListLayout = var2.createElement("UIListLayout", var464)
   local var476 = {}
   var476.LayoutOrder = 2
   var476.Size = UDim2.new(0.8, 0, 0.8, 0)
   var476.SizeConstraint = Enum.SizeConstraint.RelativeYY
   var476.AnchorPoint = Vector2.new(0, 0.5)
   var476.Image = arg1.props.Thumbnail
   var476.BackgroundTransparency = 1
   var476.ZIndex = 3
   var439.Thumbnail = var2.createElement("ImageLabel", var476)
   local var495 = {}
   var495.LayoutOrder = 3
   var495.Size = UDim2.new(1, 0, 1, 0)
   var495.BackgroundTransparency = 1
   var495.Text = arg1.props.Name
   var495.TextColor3 = var2.textColor
   var495.Font = var3.FONT
   var495.TextSize = var3.FONT_SIZE_MEDIUM
   var495.TextXAlignment = Enum.TextXAlignment.Left
   var495.TextYAlignment = Enum.TextYAlignment.Center
   var495.TextTruncate = Enum.TextTruncate.AtEnd
   var495.ClipsDescendants = true
   var495.ZIndex = 3
   var439.TextLabel = var2.createElement("TextLabel", var495)
   var411.Container = var2.createElement("Frame", var431, var439)
   return var2.createElement("ImageButton", var381, var411)
end

fun15 = var4.withContext
local var517 = {}
var517.Stylizer = var4.Stylizer
var5 = fun15(var517)(var5)
return var5
