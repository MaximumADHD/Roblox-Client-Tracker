-- Generated with Unluau (https://github.com/valencefun/unluau)
local var138 = require(script:FindFirstAncestor("AssetManager").Packages.Framework).Styling
local var1 = var138.createStyleRule
var138 = var1
local var141 = {}
var141.Size = UDim2.new(1, 0, 0, 50)
local var151 = {}
var151.Size = UDim2.fromOffset(50, 50)
local var159 = {}
var159.Size = UDim2.fromOffset(30, 30)
local var2 = var1("> .Thumbnail", var159)
local var165 = var1("> .ThumbnailContainer", var151, {})
local var166 = {}
var166.ThumbnailSize = 50
return var138(".ItemRow", var141, {}, var166)
