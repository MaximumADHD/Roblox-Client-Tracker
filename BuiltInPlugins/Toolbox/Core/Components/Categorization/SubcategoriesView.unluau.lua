-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Framework)
local var3 = require(var1.Roact)
local var4 = var0.Core.Util
local var5 = require(var4.Constants)
local var6 = require(var4.Urls)
local var7 = var2.ContextServices
local var8 = require(var0.Core.Localization.getLocalizedCategoryMap)
local var9 = require(var0.Core.Components.Categorization.IconTile)
local var10 = var2.UI.LinkText
local var11 = var2.UI.ResponsiveGrid
local var12 = var2.UI.ScrollingFrame
local var13 = require(var0.Core.Types.HomeTypes)
local var14 = var5.MAIN_VIEW_PADDING
local var15 = var5.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE
local var16 = var3.PureComponent:extend("SubcategoriesView")
local var50 = {}
var50.Size = UDim2.new(1, 0, 0, 0)
var16.defaultProps = var50
function var16.init(arg1, arg2)
   local var59 = {}
   var59.maxTileHeight = 0
   arg1.state = var59
   function arg1.onClickBack(arg1)
      local var0 = arg1.props
      local var1 = var0.OnClickBack
      if var1 then
         var0 = var1
         var0()
      end
   end
   
   function arg1.onClickSubcategory(arg1)
      local var0 = arg1.props
      local var1 = var0.CategoryName
      local var2 = var0.OnClickSubcategory
      local var3 = var0.OnClickSeeAllAssets
      local var4 = var0.SortName
      local var5 = var0.SubcategoryDict[arg1]
      local var6 = var5.childCount
      if var6 == 0 then
         if var3 then
            var6 = var3
            var6(nil, var1, var4, nil, var5.queryParams)
         end
      end
      if var2 then
         var6 = var2
         local var81 = arg1
         var6({}, var5.children, var1, var4, var5.queryParams)
      end
   end
   
   function arg1.onTileSizeChanged(arg1)
      local var0 = {}
      var0.maxTileHeight = math.max(arg1.maxTileHeight, arg1.Y)
      return var0
   end
   
   function arg1.getSubcategoryElements(arg1)
      arg1:setState(function(arg1)
         local var0 = arg1.props
         local var1 = var0.OnClickBack
         if var1 then
            var0 = var1
            var0()
         end
      end)
   end
   
end

local function fun6(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Size
   local var113 = {}
   var113.assetType = var8(var1)[var0.CategoryName]
   local var125 = {}
   var125.BackgroundColor3 = var0.Stylizer.backgroundColor
   var125.LayoutOrder = var0.LayoutOrder
   var125.Position = var0.Position
   var125.Size = var2
   local var127 = {}
   local var131 = {}
   var131.AutoSizeCanvas = true
   var131.AutomaticCanvasSize = Enum.AutomaticSize.Y
   var131.CanvasSize = UDim2.new(1, 0, 0, 0)
   var131.Layout = Enum.FillDirection.Vertical
   var131.EnableScrollBarBackground = true
   var131.Padding = var5.MAIN_VIEW_PADDING
   var131.Size = var2
   var131.Spacing = UDim.new(0, var14)
   local var148 = {}
   local var152 = {}
   var152.LayoutOrder = 1
   var152.OnClick = arg1.onClickBack
   var152.Style = "Unobtrusive"
   var152.Text = "< " ... var1:getText("General", "BackToHome", var113)
   var148.BackButton = var3.createElement(var10, var152)
   local var160 = {}
   var160.AutomaticSize = Enum.AutomaticSize.Y
   local var163 = {}
   var163.ColumnCount = 1
   var163.MinWidth = 0
   local var166 = {}
   var166.ColumnCount = 2
   var166.MinWidth = 376
   local var169 = {}
   var169.ColumnCount = 3
   var169.MinWidth = 736
   var160.CutOffs = {}
   var160.ItemHeight = UDim.new(0, arg1.state.maxTileHeight)
   var160.LayoutOrder = 2
   local var182 = UDim2.new(1, 0, 0, 0)
   var160.Size = var182
   var182 = arg1.getSubcategoryElements()
   var148.InnerGrid = var3.createElement(var11, var160, var182)
   var127.ScrollingFrame = var3.createElement(var12, var131, var148)
   return var3.createElement("Frame", var125, var127)
end

function var16.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Size
   local var113 = {}
   var113.assetType = var8(var1)[var0.CategoryName]
   local var125 = {}
   var125.BackgroundColor3 = var0.Stylizer.backgroundColor
   var125.LayoutOrder = var0.LayoutOrder
   var125.Position = var0.Position
   var125.Size = var2
   local var127 = {}
   local var131 = {}
   var131.AutoSizeCanvas = true
   var131.AutomaticCanvasSize = Enum.AutomaticSize.Y
   var131.CanvasSize = UDim2.new(1, 0, 0, 0)
   var131.Layout = Enum.FillDirection.Vertical
   var131.EnableScrollBarBackground = true
   var131.Padding = var5.MAIN_VIEW_PADDING
   var131.Size = var2
   var131.Spacing = UDim.new(0, var14)
   local var148 = {}
   local var152 = {}
   var152.LayoutOrder = 1
   var152.OnClick = arg1.onClickBack
   var152.Style = "Unobtrusive"
   var152.Text = "< " ... var1:getText("General", "BackToHome", var113)
   var148.BackButton = var3.createElement(var10, var152)
   local var160 = {}
   var160.AutomaticSize = Enum.AutomaticSize.Y
   local var163 = {}
   var163.ColumnCount = 1
   var163.MinWidth = 0
   local var166 = {}
   var166.ColumnCount = 2
   var166.MinWidth = 376
   local var169 = {}
   var169.ColumnCount = 3
   var169.MinWidth = 736
   var160.CutOffs = {}
   var160.ItemHeight = UDim.new(0, arg1.state.maxTileHeight)
   var160.LayoutOrder = 2
   local var182 = UDim2.new(1, 0, 0, 0)
   var160.Size = var182
   var182 = arg1.getSubcategoryElements()
   var148.InnerGrid = var3.createElement(var11, var160, var182)
   var127.ScrollingFrame = var3.createElement(var12, var131, var148)
   return var3.createElement("Frame", var125, var127)
end

fun6 = var7.withContext
local var186 = {}
var186.Localization = var7.Localization
var186.Stylizer = var7.Stylizer
var16 = fun6(var186)(var16)
return var16
