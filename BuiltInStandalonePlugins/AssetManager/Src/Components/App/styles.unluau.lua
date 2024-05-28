-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script:FindFirstAncestor("AssetManager").Packages.Framework).Styling
local var1 = var8.createStyleRule
var8 = var1
local var15 = {}
var15.Size = UDim2.new(1, 0, 0, 42)
local var22 = var1(">> .TopBar", var15)
local var25 = {}
var25.Size = UDim2.new(1, 0, 1, 65494)
local var32 = var1(">> .Explorer", var25)
local var35 = {}
var35.Size = UDim2.new(1, 0, 1, 65494)
local var42 = var1(">> .MainContents", var35)
local var43 = {}
var43.DefaultSizeSidebar = UDim.new(0.15, 0)
var43.MinimumSizeSidebar = UDim.new(0, 100)
var43.DefaultSizeMainView = UDim.new(0.85, 0)
var43.MinimumSizeMainView = UDim.new(0, 400)
return var8(".App", {}, {}, var43)
