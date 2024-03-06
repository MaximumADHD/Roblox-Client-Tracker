-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Util.Constants)
local var4 = require(var1.Framework).ContextServices
local var5 = var2.PureComponent:extend("LiveSearchEntry")
function var5.init(arg1, arg2)
   local var347 = {}
   var347.hovering = false
   arg1.state = var347
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
      local var364 = {}
      var364.hovering = true
      arg1:setState(var364)
   end
   
   function arg1.mouseLeave()
      local var368 = {}
      var368.hovering = false
      arg1:setState(var368)
   end
   
end

local function fun15(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = var0.dropdownMenu
   local var2 = var1.item
   local var3 = arg1.state.hovering
   local var392 = {}
   local var399 = var3.SCROLLBAR_PADDING
   var399 = var3.SEARCH_ENTRY_HEIGHT
   var392.Size = UDim2.new(1, var3.SCROLLBAR_BACKGROUND_THICKNESS + var399, 0, var399)
   if var3 then
      local var0 = var2.backgroundSelectedColor or var2.backgroundColor
   end
   var392.BackgroundColor3 = var2.backgroundColor
   var392.BorderSizePixel = 0
   var392.LayoutOrder = arg1.props.LayoutOrder
   var392.ZIndex = 2
   var392.AutoButtonColor = false
   var2.Event.Activated = arg1.onClick
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var422 = {}
   local var423 = var0.isDarkerTheme
   if var423 then
      local var427 = {}
      var427.Size = UDim2.new(0, var3.DROPDOWN_SELECTED_BAR, 1, 0)
      var427.BorderSizePixel = 0
      var427.BackgroundColor3 = var1.item.selectedBarColor
      var427.Visible = var3
      var427.ZIndex = 2
      local var0 = var2.createElement("Frame", var427)
   end
   var422.SelectedBar = var423
   local var442 = {}
   var442.Size = UDim2.new(1, 0, 1, 0)
   var442.BackgroundTransparency = 1
   local var450 = {}
   local var454 = {}
   var454.PaddingLeft = UDim.new(0, 10)
   var454.PaddingRight = UDim.new(0, 10)
   var454.PaddingTop = UDim.new(0, 2)
   var454.PaddingBottom = UDim.new(0, 2)
   var450.UIPadding = var2.createElement("UIPadding", var454)
   local var475 = {}
   var475.FillDirection = Enum.FillDirection.Horizontal
   var475.SortOrder = Enum.SortOrder.LayoutOrder
   var475.VerticalAlignment = Enum.VerticalAlignment.Center
   var475.Padding = UDim.new(0, 10)
   var450.UIListLayout = var2.createElement("UIListLayout", var475)
   local var487 = {}
   var487.LayoutOrder = 2
   var487.Size = UDim2.new(0.8, 0, 0.8, 0)
   var487.SizeConstraint = Enum.SizeConstraint.RelativeYY
   var487.AnchorPoint = Vector2.new(0, 0.5)
   var487.Image = arg1.props.Thumbnail
   var487.BackgroundTransparency = 1
   var487.ZIndex = 3
   var450.Thumbnail = var2.createElement("ImageLabel", var487)
   local var506 = {}
   var506.LayoutOrder = 3
   var506.Size = UDim2.new(1, 0, 1, 0)
   var506.BackgroundTransparency = 1
   var506.Text = arg1.props.Name
   var506.TextColor3 = var2.textColor
   var506.Font = var3.FONT
   var506.TextSize = var3.FONT_SIZE_MEDIUM
   var506.TextXAlignment = Enum.TextXAlignment.Left
   var506.TextYAlignment = Enum.TextYAlignment.Center
   var506.TextTruncate = Enum.TextTruncate.AtEnd
   var506.ClipsDescendants = true
   var506.ZIndex = 3
   var450.TextLabel = var2.createElement("TextLabel", var506)
   var422.Container = var2.createElement("Frame", var442, var450)
   return var2.createElement("ImageButton", var392, var422)
end

function var5.render(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = var0.dropdownMenu
   local var2 = var1.item
   local var3 = arg1.state.hovering
   local var392 = {}
   local var399 = var3.SCROLLBAR_PADDING
   var399 = var3.SEARCH_ENTRY_HEIGHT
   var392.Size = UDim2.new(1, var3.SCROLLBAR_BACKGROUND_THICKNESS + var399, 0, var399)
   if var3 then
      local var0 = var2.backgroundSelectedColor or var2.backgroundColor
   end
   var392.BackgroundColor3 = var2.backgroundColor
   var392.BorderSizePixel = 0
   var392.LayoutOrder = arg1.props.LayoutOrder
   var392.ZIndex = 2
   var392.AutoButtonColor = false
   var2.Event.Activated = arg1.onClick
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var422 = {}
   local var423 = var0.isDarkerTheme
   if var423 then
      local var427 = {}
      var427.Size = UDim2.new(0, var3.DROPDOWN_SELECTED_BAR, 1, 0)
      var427.BorderSizePixel = 0
      var427.BackgroundColor3 = var1.item.selectedBarColor
      var427.Visible = var3
      var427.ZIndex = 2
      local var0 = var2.createElement("Frame", var427)
   end
   var422.SelectedBar = var423
   local var442 = {}
   var442.Size = UDim2.new(1, 0, 1, 0)
   var442.BackgroundTransparency = 1
   local var450 = {}
   local var454 = {}
   var454.PaddingLeft = UDim.new(0, 10)
   var454.PaddingRight = UDim.new(0, 10)
   var454.PaddingTop = UDim.new(0, 2)
   var454.PaddingBottom = UDim.new(0, 2)
   var450.UIPadding = var2.createElement("UIPadding", var454)
   local var475 = {}
   var475.FillDirection = Enum.FillDirection.Horizontal
   var475.SortOrder = Enum.SortOrder.LayoutOrder
   var475.VerticalAlignment = Enum.VerticalAlignment.Center
   var475.Padding = UDim.new(0, 10)
   var450.UIListLayout = var2.createElement("UIListLayout", var475)
   local var487 = {}
   var487.LayoutOrder = 2
   var487.Size = UDim2.new(0.8, 0, 0.8, 0)
   var487.SizeConstraint = Enum.SizeConstraint.RelativeYY
   var487.AnchorPoint = Vector2.new(0, 0.5)
   var487.Image = arg1.props.Thumbnail
   var487.BackgroundTransparency = 1
   var487.ZIndex = 3
   var450.Thumbnail = var2.createElement("ImageLabel", var487)
   local var506 = {}
   var506.LayoutOrder = 3
   var506.Size = UDim2.new(1, 0, 1, 0)
   var506.BackgroundTransparency = 1
   var506.Text = arg1.props.Name
   var506.TextColor3 = var2.textColor
   var506.Font = var3.FONT
   var506.TextSize = var3.FONT_SIZE_MEDIUM
   var506.TextXAlignment = Enum.TextXAlignment.Left
   var506.TextYAlignment = Enum.TextYAlignment.Center
   var506.TextTruncate = Enum.TextTruncate.AtEnd
   var506.ClipsDescendants = true
   var506.ZIndex = 3
   var450.TextLabel = var2.createElement("TextLabel", var506)
   var422.Container = var2.createElement("Frame", var442, var450)
   return var2.createElement("ImageButton", var392, var422)
end

fun15 = var4.withContext
local var528 = {}
var528.Stylizer = var4.Stylizer
var5 = fun15(var528)(var5)
return var5
