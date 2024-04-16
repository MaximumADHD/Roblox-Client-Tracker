-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Util.Constants)
local var4 = require(var0.Core.Util.Images)
local var5 = require(var1.Framework).ContextServices
local var6 = var2.PureComponent:extend("SearchBar")
function var6.init(arg1)
   local var29 = {}
   var29.isSearchButtonHovered = false
   var29.isClearButtonHovered = false
   arg1.state = var29
   function arg1.onClearButtonHovered()
      local var33 = {}
      var33.isClearButtonHovered = true
      arg1:setState(var33)
   end
   
   function arg1.onClearButtonHoverEnded()
      local var37 = {}
      var37.isClearButtonHovered = false
      arg1:setState(var37)
   end
   
   function arg1.onClearButtonClicked()
      arg1.props.onClearButtonClicked()
      arg1.onClearButtonHoverEnded()
   end
   
   function arg1.onSearchButtonHovered()
      local var46 = {}
      var46.isSearchButtonHovered = true
      arg1:setState(var46)
   end
   
   function arg1.onSearchButtonHoverEnded()
      local var50 = {}
      var50.isSearchButtonHovered = false
      arg1:setState(var50)
   end
   
end

local function fun6(arg1)
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
   local var73 = {}
   var73.AnchorPoint = Vector2.new(1, 0)
   var73.Position = UDim2.new(1, 0, 0, 0)
   var73.Size = UDim2.new(0, var3, 1, 0)
   var73.BackgroundTransparency = 1
   local var91 = {}
   local var7 = var0.showClearButton
   if var7 then
      local var96 = {}
      var96.AnchorPoint = Vector2.new(0, 0)
      var96.Position = UDim2.new(0, var5, 0, var5)
      var96.Size = UDim2.new(0, var4 - 2 * var5, 1, 2 * var5)
      var96.BackgroundTransparency = 1
      var2.Event.MouseEnter = arg1.onClearButtonHovered
      var2.Event.MouseMoved = arg1.onClearButtonHovered
      var2.Event.MouseLeave = arg1.onClearButtonHoverEnded
      var2.Event.MouseButton1Down = arg1.onClearButtonClicked
      local var134 = {}
      local var138 = {}
      var138.AnchorPoint = Vector2.new(0.5, 0.5)
      var138.Position = UDim2.new(0.5, 0, 0.5, 0)
      var138.Size = UDim2.new(0, var3.SEARCH_BAR_BUTTON_ICON_SIZE, 0, var3.SEARCH_BAR_BUTTON_ICON_SIZE)
      var138.BackgroundTransparency = 1
      if var1.isClearButtonHovered then
         local var0 = var4.CLEAR_ICON_HOVER or var4.CLEAR_ICON
      end
      var138.Image = var4.CLEAR_ICON
      var138.ImageColor3 = var6.clearButton.imageColor
      var134.ImageLabel = var2.createElement("ImageLabel", var138)
      local var0 = var2.createElement("ImageButton", var96, var134)
   end
   var91.ClearButton = var7
   var7 = var2
   if var7 then
      local var172 = {}
      var172.AnchorPoint = Vector2.new(0, 0)
      var172.Position = UDim2.new(0, var4, 0, 1)
      var172.Size = UDim2.new(0, 1, 1, 65534)
      var172.BackgroundColor3 = var6.divideLineColor
      var172.BorderSizePixel = 0
      local var0 = var2.createElement("Frame", var172)
   end
   var91.Line = var7
   var7 = var2
   if var7 then
      local var195 = {}
      var195.AnchorPoint = Vector2.new(1, 0)
      var195.Position = UDim2.new(1, var5, 0, var5)
      var195.Size = UDim2.new(0, var4 - 2 * var5, 1, 2 * var5)
      var195.BackgroundTransparency = 1
      var2.Event.MouseEnter = arg1.onSearchButtonHovered
      var2.Event.MouseMoved = arg1.onSearchButtonHovered
      var2.Event.MouseLeave = arg1.onSearchButtonHoverEnded
      var2.Event.MouseButton1Down = var0.onSearchButtonClicked
      local var232 = {}
      local var236 = {}
      var236.AnchorPoint = Vector2.new(0.5, 0.5)
      var236.Position = UDim2.new(0.5, 0, 0.5, 0)
      var236.Size = UDim2.new(0, var3.SEARCH_BAR_BUTTON_ICON_SIZE, 0, var3.SEARCH_BAR_BUTTON_ICON_SIZE)
      var236.BackgroundTransparency = 1
      var236.Image = var4.SEARCH_ICON
      if var1.isSearchButtonHovered then
         local var0 = var6.searchButton.imageSelectedColor or var6.searchButton.imageColor
      end
      var236.ImageColor3 = var6.searchButton.imageColor
      var232.ImageLabel = var2.createElement("ImageLabel", var236)
      local var0 = var2.createElement("ImageButton", var195, var232)
   end
   var91.SearchButton = var7
   return var2.createElement("Frame", var73, var91)
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
   local var73 = {}
   var73.AnchorPoint = Vector2.new(1, 0)
   var73.Position = UDim2.new(1, 0, 0, 0)
   var73.Size = UDim2.new(0, var3, 1, 0)
   var73.BackgroundTransparency = 1
   local var91 = {}
   local var7 = var0.showClearButton
   if var7 then
      local var96 = {}
      var96.AnchorPoint = Vector2.new(0, 0)
      var96.Position = UDim2.new(0, var5, 0, var5)
      var96.Size = UDim2.new(0, var4 - 2 * var5, 1, 2 * var5)
      var96.BackgroundTransparency = 1
      var2.Event.MouseEnter = arg1.onClearButtonHovered
      var2.Event.MouseMoved = arg1.onClearButtonHovered
      var2.Event.MouseLeave = arg1.onClearButtonHoverEnded
      var2.Event.MouseButton1Down = arg1.onClearButtonClicked
      local var134 = {}
      local var138 = {}
      var138.AnchorPoint = Vector2.new(0.5, 0.5)
      var138.Position = UDim2.new(0.5, 0, 0.5, 0)
      var138.Size = UDim2.new(0, var3.SEARCH_BAR_BUTTON_ICON_SIZE, 0, var3.SEARCH_BAR_BUTTON_ICON_SIZE)
      var138.BackgroundTransparency = 1
      if var1.isClearButtonHovered then
         local var0 = var4.CLEAR_ICON_HOVER or var4.CLEAR_ICON
      end
      var138.Image = var4.CLEAR_ICON
      var138.ImageColor3 = var6.clearButton.imageColor
      var134.ImageLabel = var2.createElement("ImageLabel", var138)
      local var0 = var2.createElement("ImageButton", var96, var134)
   end
   var91.ClearButton = var7
   var7 = var2
   if var7 then
      local var172 = {}
      var172.AnchorPoint = Vector2.new(0, 0)
      var172.Position = UDim2.new(0, var4, 0, 1)
      var172.Size = UDim2.new(0, 1, 1, 65534)
      var172.BackgroundColor3 = var6.divideLineColor
      var172.BorderSizePixel = 0
      local var0 = var2.createElement("Frame", var172)
   end
   var91.Line = var7
   var7 = var2
   if var7 then
      local var195 = {}
      var195.AnchorPoint = Vector2.new(1, 0)
      var195.Position = UDim2.new(1, var5, 0, var5)
      var195.Size = UDim2.new(0, var4 - 2 * var5, 1, 2 * var5)
      var195.BackgroundTransparency = 1
      var2.Event.MouseEnter = arg1.onSearchButtonHovered
      var2.Event.MouseMoved = arg1.onSearchButtonHovered
      var2.Event.MouseLeave = arg1.onSearchButtonHoverEnded
      var2.Event.MouseButton1Down = var0.onSearchButtonClicked
      local var232 = {}
      local var236 = {}
      var236.AnchorPoint = Vector2.new(0.5, 0.5)
      var236.Position = UDim2.new(0.5, 0, 0.5, 0)
      var236.Size = UDim2.new(0, var3.SEARCH_BAR_BUTTON_ICON_SIZE, 0, var3.SEARCH_BAR_BUTTON_ICON_SIZE)
      var236.BackgroundTransparency = 1
      var236.Image = var4.SEARCH_ICON
      if var1.isSearchButtonHovered then
         local var0 = var6.searchButton.imageSelectedColor or var6.searchButton.imageColor
      end
      var236.ImageColor3 = var6.searchButton.imageColor
      var232.ImageLabel = var2.createElement("ImageLabel", var236)
      local var0 = var2.createElement("ImageButton", var195, var232)
   end
   var91.SearchButton = var7
   return var2.createElement("Frame", var73, var91)
end

fun6 = var5.withContext
local var268 = {}
var268.Stylizer = var5.Stylizer
var6 = fun6(var268)(var6)
return var6
