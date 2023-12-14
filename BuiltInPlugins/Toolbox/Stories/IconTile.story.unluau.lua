-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Util.MockWrapper)
local var3 = require(var0.Core.Util.Urls)
local var4 = require(var0.Core.Components.Categorization.IconTile)
local var5 = require(var0.Core.Util.Constants).ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE
local var6 = require(var0.Packages.Framework).UI.ResponsiveGrid
local var7 = {}
local var37 = 5657301130
local var38 = 13986559755
local var39 = 7062372311
local var40 = 494291269
local var41 = 9346039031
local var42 = 14318578453
local var43 = 8530191225
local var44 = 13902359897
local var16 = {}
local var48 = Color3.fromHex("#005D92")
local var51 = Color3.fromHex("#A2120B")
local var54 = Color3.fromHex("#008347")
local var57 = Color3.fromHex("#AD8007")
local var60 = Color3.fromHex("#B61CA2")
local var63 = Color3.fromHex("#008BDB")
local var66 = Color3.fromHex("#C2510F")
local var69 = Color3.fromHex("#6D34E3")
local var25 = Color3.fromHex("#7A0D08")
local var26 = Color3.fromHex("#AD8007")
local var27 = Color3.fromHex("#00456D")
local var28 = Color3.fromHex("#006939")
local function fun0(arg1)
   return arg1[Random.new():NextInteger(1, arg1)]
end

local var29 = var1.PureComponent:extend("GridStory")
local var94 = {}
var94.numTiles = 10
var94.tileWidth = 120
var29.defaultProps = var94
function var29.init(arg1)
   local var98 = {}
   var98.maxTileHeight = 0
   arg1.state = var98
   function arg1.setMaxTileHeight(arg1)
      return arg1[Random.new():NextInteger(1, arg1)]
   end
   
end

function var29.render(arg1)
   local var110 = 1
   local var111 = arg1.props
   local var112 = var111.numTiles
   local var113 = 1
   var111 = `Tile%*`
   local var121 = {}
   var121.Title = `Category {var110}`
   var121.BackgroundColor = var16[var110]
   local var131 = var7
   var121.Image = var3.constructAssetThumbnailUrl(var131[Random.new():NextInteger(1, var131)], var5, var5)
   var121.LayoutOrder = var110
   var121.OnAbsoluteSizeChanged = arg1.setMaxTileHeight
   arg1.props = var1.createElement(var4, var121)
   local var147 = {}
   var147.AutomaticSize = Enum.AutomaticSize.Y
   local var150 = {}
   var150.ColumnCount = 1
   var150.MinWidth = 0
   local var153 = {}
   var153.ColumnCount = 2
   var153.MinWidth = arg1.props.tileWidth * 3
   local var158 = {}
   var158.ColumnCount = 3
   var158.MinWidth = arg1.props.tileWidth * 8
   var147.CutOffs = {}
   var147.ItemHeight = UDim.new(0, arg1.state.maxTileHeight)
   local var171 = UDim2.fromScale(1, 0)
   var147.Size = var171
   var171 = {}
   return var1.createElement(var6, var147, var171)
end

local var31 = {}
var31.summary = "A generic tile with an icon and flat color background."
local var32 = {}
var32.name = "Single"
var32.summary = "Sends a key on click and has a pointer cursor."
function var32.story()
   local var183 = {}
   local var187 = {}
   var187.BackgroundColor = Color3.fromRGB(50, 168, 82)
   var187.Image = var3.constructAssetThumbnailUrl(var7[1], var5, var5)
   var187.Key = "Click"
   function var187.OnClick(arg1)
      print(arg1)
   end
   
   var187.Size = UDim2.new(0, 75, 0, 90)
   var187.Title = "Category"
   var183.IconTile = var1.createElement(var4, var187)
   return var1.createElement(var2, {}, var183)
end

local var33 = {}
var33.name = "Grid"
var33.summary = "A grid of tiles to show off use in responsive layouts"
function var33.story()
   local var220 = {}
   var220.GridStory = var1.createElement(var29)
   return var1.createElement(var2, {}, var220)
end

local var34 = {}
var34.name = "Text truncation"
var34.summary = "The title text of an IconTile will truncate on smaller sized tiles"
function var34.story()
   local var233 = {}
   local var237 = {}
   var237.BackgroundColor = Color3.fromRGB(50, 168, 82)
   var237.Image = var3.constructAssetThumbnailUrl(var7[1], var5, var5)
   var237.Key = "Click"
   function var237.OnClick(arg1)
      print(arg1)
   end
   
   var237.Size = UDim2.fromOffset(120, 0)
   var237.AutomaticSize = Enum.AutomaticSize.Y
   var237.Title = "OnlyTwentyCharacters"
   var233.IconTile = var1.createElement(var4, var237)
   return var1.createElement(var2, {}, var233)
end

var31.stories = {}
return var31
