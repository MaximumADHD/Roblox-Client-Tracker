-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Util.Constants)
local var4 = require(var0.Core.Util.Images)
local var5 = require(var1.Framework).ContextServices
local var6 = var2.PureComponent:extend("SearchBar")
function var6.init(arg1)
   local var320 = {}
   var320.isSearchButtonHovered = false
   var320.isClearButtonHovered = false
   arg1.state = var320
   function arg1.onClearButtonHovered()
      local var324 = {}
      var324.isClearButtonHovered = true
      arg1:setState(var324)
   end
   
   function arg1.onClearButtonHoverEnded()
      local var328 = {}
      var328.isClearButtonHovered = false
      arg1:setState(var328)
   end
   
   function arg1.onClearButtonClicked()
      arg1.props.onClearButtonClicked()
      arg1.onClearButtonHoverEnded()
   end
   
   function arg1.onSearchButtonHovered()
      local var337 = {}
      var337.isSearchButtonHovered = true
      arg1:setState(var337)
   end
   
   function arg1.onSearchButtonHoverEnded()
      local var341 = {}
      var341.isSearchButtonHovered = false
      arg1:setState(var341)
   end
   
end

local function fun28(arg1)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var0.showSearchButton
   local var3 = var3
   local var4 = var3.SEARCH_BAR_BUTTON_WIDTH
   if var2 then
      local var0 = 2 * var4 + 1
      if not var0 then
         var0 = var4
      end
   end
   var3 = var4
   local var5 = var3.SEARCH_BAR_BUTTON_INSET
   local var6 = var0.Stylizer.searchBar
   local var364 = {}
   var364.AnchorPoint = Vector2.new(1, 0)
   var364.Position = UDim2.new(1, 0, 0, 0)
   var364.Size = UDim2.new(0, var3, 1, 0)
   var364.BackgroundTransparency = 1
   local var382 = {}
   local var7 = var0.showClearButton
   if var7 then
      local var387 = {}
      var387.AnchorPoint = Vector2.new(0, 0)
      var387.Position = UDim2.new(0, var5, 0, var5)
      var387.Size = UDim2.new(0, var4 - 2 * var5, 1, 2 * var5)
      var387.BackgroundTransparency = 1
      var2.Event.MouseEnter = arg1.onClearButtonHovered
      var2.Event.MouseMoved = arg1.onClearButtonHovered
      var2.Event.MouseLeave = arg1.onClearButtonHoverEnded
      var2.Event.MouseButton1Down = arg1.onClearButtonClicked
      local var425 = {}
      local var429 = {}
      var429.AnchorPoint = Vector2.new(0.5, 0.5)
      var429.Position = UDim2.new(0.5, 0, 0.5, 0)
      var429.Size = UDim2.new(0, var3.SEARCH_BAR_BUTTON_ICON_SIZE, 0, var3.SEARCH_BAR_BUTTON_ICON_SIZE)
      var429.BackgroundTransparency = 1
      if var1.isClearButtonHovered then
         local var0 = var4.CLEAR_ICON_HOVER or var4.CLEAR_ICON
      end
      var429.Image = var4.CLEAR_ICON
      var429.ImageColor3 = var6.clearButton.imageColor
      var425.ImageLabel = var2.createElement("ImageLabel", var429)
      local var0 = var2.createElement("ImageButton", var387, var425)
   end
   var382.ClearButton = var7
   var7 = var2
   if var7 then
      local var463 = {}
      var463.AnchorPoint = Vector2.new(0, 0)
      var463.Position = UDim2.new(0, var4, 0, 1)
      var463.Size = UDim2.new(0, 1, 1, 65534)
      var463.BackgroundColor3 = var6.divideLineColor
      var463.BorderSizePixel = 0
      local var0 = var2.createElement("Frame", var463)
   end
   var382.Line = var7
   var7 = var2
   if var7 then
      local var486 = {}
      var486.AnchorPoint = Vector2.new(1, 0)
      var486.Position = UDim2.new(1, var5, 0, var5)
      var486.Size = UDim2.new(0, var4 - 2 * var5, 1, 2 * var5)
      var486.BackgroundTransparency = 1
      var2.Event.MouseEnter = arg1.onSearchButtonHovered
      var2.Event.MouseMoved = arg1.onSearchButtonHovered
      var2.Event.MouseLeave = arg1.onSearchButtonHoverEnded
      var2.Event.MouseButton1Down = var0.onSearchButtonClicked
      local var523 = {}
      local var527 = {}
      var527.AnchorPoint = Vector2.new(0.5, 0.5)
      var527.Position = UDim2.new(0.5, 0, 0.5, 0)
      var527.Size = UDim2.new(0, var3.SEARCH_BAR_BUTTON_ICON_SIZE, 0, var3.SEARCH_BAR_BUTTON_ICON_SIZE)
      var527.BackgroundTransparency = 1
      var527.Image = var4.SEARCH_ICON
      if var1.isSearchButtonHovered then
         local var0 = var6.searchButton.imageSelectedColor or var6.searchButton.imageColor
      end
      var527.ImageColor3 = var6.searchButton.imageColor
      var523.ImageLabel = var2.createElement("ImageLabel", var527)
      local var0 = var2.createElement("ImageButton", var486, var523)
   end
   var382.SearchButton = var7
   return var2.createElement("Frame", var364, var382)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var0.showSearchButton
   local var3 = var3
   local var4 = var3.SEARCH_BAR_BUTTON_WIDTH
   if var2 then
      local var0 = 2 * var4 + 1
      if not var0 then
         var0 = var4
      end
   end
   var3 = var4
   local var5 = var3.SEARCH_BAR_BUTTON_INSET
   local var6 = var0.Stylizer.searchBar
   local var364 = {}
   var364.AnchorPoint = Vector2.new(1, 0)
   var364.Position = UDim2.new(1, 0, 0, 0)
   var364.Size = UDim2.new(0, var3, 1, 0)
   var364.BackgroundTransparency = 1
   local var382 = {}
   local var7 = var0.showClearButton
   if var7 then
      local var387 = {}
      var387.AnchorPoint = Vector2.new(0, 0)
      var387.Position = UDim2.new(0, var5, 0, var5)
      var387.Size = UDim2.new(0, var4 - 2 * var5, 1, 2 * var5)
      var387.BackgroundTransparency = 1
      var2.Event.MouseEnter = arg1.onClearButtonHovered
      var2.Event.MouseMoved = arg1.onClearButtonHovered
      var2.Event.MouseLeave = arg1.onClearButtonHoverEnded
      var2.Event.MouseButton1Down = arg1.onClearButtonClicked
      local var425 = {}
      local var429 = {}
      var429.AnchorPoint = Vector2.new(0.5, 0.5)
      var429.Position = UDim2.new(0.5, 0, 0.5, 0)
      var429.Size = UDim2.new(0, var3.SEARCH_BAR_BUTTON_ICON_SIZE, 0, var3.SEARCH_BAR_BUTTON_ICON_SIZE)
      var429.BackgroundTransparency = 1
      if var1.isClearButtonHovered then
         local var0 = var4.CLEAR_ICON_HOVER or var4.CLEAR_ICON
      end
      var429.Image = var4.CLEAR_ICON
      var429.ImageColor3 = var6.clearButton.imageColor
      var425.ImageLabel = var2.createElement("ImageLabel", var429)
      local var0 = var2.createElement("ImageButton", var387, var425)
   end
   var382.ClearButton = var7
   var7 = var2
   if var7 then
      local var463 = {}
      var463.AnchorPoint = Vector2.new(0, 0)
      var463.Position = UDim2.new(0, var4, 0, 1)
      var463.Size = UDim2.new(0, 1, 1, 65534)
      var463.BackgroundColor3 = var6.divideLineColor
      var463.BorderSizePixel = 0
      local var0 = var2.createElement("Frame", var463)
   end
   var382.Line = var7
   var7 = var2
   if var7 then
      local var486 = {}
      var486.AnchorPoint = Vector2.new(1, 0)
      var486.Position = UDim2.new(1, var5, 0, var5)
      var486.Size = UDim2.new(0, var4 - 2 * var5, 1, 2 * var5)
      var486.BackgroundTransparency = 1
      var2.Event.MouseEnter = arg1.onSearchButtonHovered
      var2.Event.MouseMoved = arg1.onSearchButtonHovered
      var2.Event.MouseLeave = arg1.onSearchButtonHoverEnded
      var2.Event.MouseButton1Down = var0.onSearchButtonClicked
      local var523 = {}
      local var527 = {}
      var527.AnchorPoint = Vector2.new(0.5, 0.5)
      var527.Position = UDim2.new(0.5, 0, 0.5, 0)
      var527.Size = UDim2.new(0, var3.SEARCH_BAR_BUTTON_ICON_SIZE, 0, var3.SEARCH_BAR_BUTTON_ICON_SIZE)
      var527.BackgroundTransparency = 1
      var527.Image = var4.SEARCH_ICON
      if var1.isSearchButtonHovered then
         local var0 = var6.searchButton.imageSelectedColor or var6.searchButton.imageColor
      end
      var527.ImageColor3 = var6.searchButton.imageColor
      var523.ImageLabel = var2.createElement("ImageLabel", var527)
      local var0 = var2.createElement("ImageButton", var486, var523)
   end
   var382.SearchButton = var7
   return var2.createElement("Frame", var364, var382)
end

fun28 = var5.withContext
local var559 = {}
var559.Stylizer = var5.Stylizer
var6 = fun28(var559)(var6)
return var6
