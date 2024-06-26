-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.Framework).Styling.createStyleRule
local var2 = require(var0.Src.Util.Images)
local var21 = {}
var21.Size = UDim2.fromOffset(20, 20)
local var26 = var1("> .ClearFilter", var21)
local var27 = {}
var27.FilterSize = UDim2.fromOffset(80, 32)
return var1(".HeaderOptions", {}, {}, var27)
