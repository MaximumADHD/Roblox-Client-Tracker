-- Generated with Unluau (https://github.com/valencefun/unluau)
local var81 = require(script:FindFirstAncestor("AssetManager").Packages.Framework).Styling
local var1 = var81.createStyleRule
var81 = var1
local var88 = {}
var88.Size = UDim2.new(1, 65532, 0, 24)
local var102 = {}
var102.CornerRadius = UDim.new(1, 0)
local var2 = var1("::UICorner", var102)
local var3 = var1("> .ScopeIcon", {}, {})
local var109 = var1(">> .Element", var88, {})
local var110 = {}
var110.RowHeight = 24
return var81(".Explorer", {}, {}, var110)
