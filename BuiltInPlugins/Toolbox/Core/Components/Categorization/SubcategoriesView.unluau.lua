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
local var14 = require(var0.Core.Util.SharedFlags.getFFlagToolboxTrackCurrentSubcategory)
local var15 = var5.MAIN_VIEW_PADDING
local var16 = var5.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE
local var17 = var3.PureComponent:extend("SubcategoriesView")
local var56 = {}
var56.Size = UDim2.new(1, 0, 0, 0)
var17.defaultProps = var56
function var17.init(arg1, arg2)
   local var65 = {}
   var65.maxTileHeight = 0
   arg1.state = var65
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
         local var87 = var14()
         if var87 then
            var87 = var2
            local var89 = arg1
            var87({}, var5.children, var1, var4, var5.queryParams)
         end
         var87 = var2
         local var95 = arg1
         var87({}, var5.children, var1, var4)
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
   local var126 = {}
   var126.assetType = var8(var1)[var0.CategoryName]
   local var138 = {}
   var138.BackgroundColor3 = var0.Stylizer.backgroundColor
   var138.LayoutOrder = var0.LayoutOrder
   var138.Position = var0.Position
   var138.Size = var2
   local var140 = {}
   local var144 = {}
   var144.AutoSizeCanvas = true
   var144.AutomaticCanvasSize = Enum.AutomaticSize.Y
   var144.CanvasSize = UDim2.new(1, 0, 0, 0)
   var144.Layout = Enum.FillDirection.Vertical
   var144.EnableScrollBarBackground = true
   var144.Padding = var5.MAIN_VIEW_PADDING
   var144.Size = var2
   var144.Spacing = UDim.new(0, var15)
   local var161 = {}
   local var165 = {}
   var165.LayoutOrder = 1
   var165.OnClick = arg1.onClickBack
   var165.Style = "Unobtrusive"
   var165.Text = "< " ... var1:getText("General", "BackToHome", var126)
   var161.BackButton = var3.createElement(var10, var165)
   local var173 = {}
   var173.AutomaticSize = Enum.AutomaticSize.Y
   local var176 = {}
   var176.ColumnCount = 1
   var176.MinWidth = 0
   local var179 = {}
   var179.ColumnCount = 2
   var179.MinWidth = 376
   local var182 = {}
   var182.ColumnCount = 3
   var182.MinWidth = 736
   var173.CutOffs = {}
   var173.ItemHeight = UDim.new(0, arg1.state.maxTileHeight)
   var173.LayoutOrder = 2
   local var195 = UDim2.new(1, 0, 0, 0)
   var173.Size = var195
   var195 = arg1.getSubcategoryElements()
   var161.InnerGrid = var3.createElement(var11, var173, var195)
   var140.ScrollingFrame = var3.createElement(var12, var144, var161)
   return var3.createElement("Frame", var138, var140)
end

function var17.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Size
   local var126 = {}
   var126.assetType = var8(var1)[var0.CategoryName]
   local var138 = {}
   var138.BackgroundColor3 = var0.Stylizer.backgroundColor
   var138.LayoutOrder = var0.LayoutOrder
   var138.Position = var0.Position
   var138.Size = var2
   local var140 = {}
   local var144 = {}
   var144.AutoSizeCanvas = true
   var144.AutomaticCanvasSize = Enum.AutomaticSize.Y
   var144.CanvasSize = UDim2.new(1, 0, 0, 0)
   var144.Layout = Enum.FillDirection.Vertical
   var144.EnableScrollBarBackground = true
   var144.Padding = var5.MAIN_VIEW_PADDING
   var144.Size = var2
   var144.Spacing = UDim.new(0, var15)
   local var161 = {}
   local var165 = {}
   var165.LayoutOrder = 1
   var165.OnClick = arg1.onClickBack
   var165.Style = "Unobtrusive"
   var165.Text = "< " ... var1:getText("General", "BackToHome", var126)
   var161.BackButton = var3.createElement(var10, var165)
   local var173 = {}
   var173.AutomaticSize = Enum.AutomaticSize.Y
   local var176 = {}
   var176.ColumnCount = 1
   var176.MinWidth = 0
   local var179 = {}
   var179.ColumnCount = 2
   var179.MinWidth = 376
   local var182 = {}
   var182.ColumnCount = 3
   var182.MinWidth = 736
   var173.CutOffs = {}
   var173.ItemHeight = UDim.new(0, arg1.state.maxTileHeight)
   var173.LayoutOrder = 2
   local var195 = UDim2.new(1, 0, 0, 0)
   var173.Size = var195
   var195 = arg1.getSubcategoryElements()
   var161.InnerGrid = var3.createElement(var11, var173, var195)
   var140.ScrollingFrame = var3.createElement(var12, var144, var161)
   return var3.createElement("Frame", var138, var140)
end

fun6 = var7.withContext
local var199 = {}
var199.Localization = var7.Localization
var199.Stylizer = var7.Stylizer
var17 = fun6(var199)(var17)
return var17
