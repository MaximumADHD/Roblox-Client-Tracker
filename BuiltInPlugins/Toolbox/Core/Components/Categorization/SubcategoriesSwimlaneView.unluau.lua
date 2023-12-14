-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework)
local var4 = require(var0.Core.Types.Sort)
local var5 = require(var1.Dash)
local var6 = var3.ContextServices
local var7 = var3.UI.LinkText
local var8 = var3.UI.Pane
local var9 = require(var0.Core.Components.AssetLogicWrapper)
local var10 = require(var0.Core.Components.Categorization.AssetSwimlane)
local var11 = require(var0.Core.Types.HomeTypes)
local var12 = require(var0.Core.Util.Layouter)
local var13 = require(var0.Core.Localization.getLocalizedCategoryMap)
local var14 = require(var0.Core.Models.AssetInfo)
local var15 = var3.UI.ScrollingFrame
local var16 = require(var0.Core.Util.Constants)
local var17 = require(var0.Core.Util.SharedFlags.getFFlagToolboxFixInventoryGridSearch)
local var18 = var2.PureComponent:extend("SubcategoriesSwimlaneView")
local var251 = {}
var251.Size = UDim2.new(1, 0, 1, 0)
var18.defaultProps = var251
function var18.init(arg1)
   function arg1.onClickBack(arg1)
      local var0 = arg1.props.OnClickBack
      if var0 then
         var0()
      end
   end
   
   function arg1.onClickSeeAllAssets(arg1, arg2, arg3, arg4, arg5)
      local var0 = arg1.props
      local var1 = var0.OnClickSeeAllAssets
      if var1 then
         var1(nil, var0.CategoryName, var0.SortName, nil, arg5.queryParams)
      end
   end
   
   function arg1.renderSwimlanes(arg1)
      return arg1 + 1
   end
   
end

function var18.render(arg1)
   local var0 = arg1.props
   local var1 = var0.LayoutOrder
   local var2 = var0.Localization
   local var3 = var0.Size
   local var4 = var0.SectionName
   if not var0.SortName then
      local var290 = var4
      var290 = var0.CategoryName
      local var0 = var290.getDefaultSortNameForCategory(var290)
   end
   local var5 = var0.SubcategoryDict
   local var6 = var0.Stylizer
   local var7 = var0.CanInsertAsset
   local var8 = var0.TryInsert
   local var9 = var0.TryOpenAssetConfig
   local var10 = var0.OnClickSeeAllAssets
   local var304 = {}
   var304.assetType = var13(var2)[var0.CategoryName]
   local var315 = {}
   var315.BackgroundColor3 = var6.backgroundColor
   var315.LayoutOrder = var1
   var315.Size = var3
   local var323 = {}
   local var327 = {}
   var327.AutoSizeCanvas = true
   var327.EnableScrollBarBackground = true
   var327.LayoutOrder = var1
   var327.Padding = var16.MAIN_VIEW_PADDING
   var327.Size = var3
   local var332 = {}
   local var336 = {}
   var336.AutomaticSize = Enum.AutomaticSize.Y
   var336.BackgroundColor3 = var6.backgroundColor
   var336.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var336.Layout = Enum.FillDirection.Vertical
   var336.LayoutOrder = 2
   var336.Spacing = 20
   var336.Size = UDim2.new(1, 0, 0, 0)
   var336.VerticalAlignment = Enum.VerticalAlignment.Top
   local var352 = {}
   local var356 = {}
   var356.LayoutOrder = 65535
   var356.OnClick = arg1.onClickBack
   var356.Style = "Unobtrusive"
   var356.Text = "< " ... var2:getText("General", "BackToHome", var304)
   local var360 = var2.createElement(var7, var356)
   var352.BackButton = var360
   var360 = arg1.renderSwimlanes()
   var332.Contents = var2.createElement(var8, var336, var5.join(var352, var360))
   var323.ScrollingFrame = var2.createElement(var15, var327, var332)
   return var2.createElement(var8, var5.join(var315, var0.WrapperProps), var323)
end

local function fun6(arg1, arg2)
   arg1 = arg1 or {}
   local var0 = {}
   var0.IncludeUnverifiedCreators = arg1.pageInfo or {}.includeUnverifiedCreators
   return var0
end

function mapStateToProps(arg1, arg2)
   arg1 = arg1 or {}
   local var0 = {}
   var0.IncludeUnverifiedCreators = arg1.pageInfo or {}.includeUnverifiedCreators
   return var0
end

fun6 = var6.withContext
local var375 = {}
var375.Localization = var6.Localization
var375.Stylizer = var6.Stylizer
var375.Network = require(var0.Core.ContextServices.NetworkContext)
var18 = fun6(var375)(var18)
local var385 = require(var1.RoactRodux).connect(mapStateToProps)(var18)
var18 = var385
var385 = var3.Wrappers.withAbsoluteSizeAndPosition
return var385(var18)
