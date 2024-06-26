-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script:FindFirstAncestor("AssetManager").Packages.Framework).Styling
local var1 = var8.createStyleRule
var8 = var1
local var15 = {}
var15.Size = UDim2.new(1, 0, 0, 25)
local var22 = var1("> .HeaderRow", var15)
local var25 = {}
var25.Size = UDim2.new(1, 0, 1, 65511)
local var32 = var1("> .ItemList", var25)
local var33 = {}
var33.ColumnMinSize = UDim.new(0, 60)
var33.RowHeight = 50
return var8(".ContentList", {}, {}, var33)
