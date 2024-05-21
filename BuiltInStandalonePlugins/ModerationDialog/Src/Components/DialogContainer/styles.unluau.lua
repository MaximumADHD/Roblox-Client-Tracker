-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script:FindFirstAncestor("ModerationDialog").Packages.Framework).Styling
local var1 = var8.createStyleRule
var8 = var1
local var11 = {}
var11.BackgroundColor3 = "$ForegroundMain"
var11.BorderSizePixel = 0
local var17 = {}
var17.Padding = UDim.new(0, 16)
local var3 = var1("> UIListLayout", var17)
local var25 = {}
var25.BackgroundTransparency = 1
local var4 = var1(">> Frame", var25)
local var30 = {}
var30.Size = UDim2.new(1, 0, 0, 1)
var30.BackgroundColor3 = "$Divider"
var30.AnchorPoint = Vector2.new(0.5, 0.5)
var30.BorderSizePixel = 0
var30.BackgroundTransparency = 0
local var5 = var1(">> .Separator", var30)
return var8(".Component-DialogContainer", var11, {})
