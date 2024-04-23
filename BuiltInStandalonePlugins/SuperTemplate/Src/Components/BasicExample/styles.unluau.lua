-- Generated with Unluau (https://github.com/valencefun/unluau)
local var80 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Styling
local var1 = var80.createStyleRule
var80 = var1
local var83 = {}
var83.BackgroundColor3 = "$BackgroundPaper"
var83.BorderSizePixel = 0
local var89 = {}
var89.CornerRadius = UDim.new(0, 10)
local var3 = var1("::UICorner", var89)
local var97 = {}
var97.BackgroundColor3 = "$BackgroundHover"
local var4 = var1(":hover", var97)
local var102 = {}
var102.TextSize = 24
var102.Font = Enum.Font.Gotham
var102.TextColor3 = "$TextPrimary"
var102.Size = UDim2.new(1, 0, 0, 50)
var102.BackgroundTransparency = 1
var102.TextXAlignment = Enum.TextXAlignment.Center
var102.TextYAlignment = Enum.TextYAlignment.Center
local var5 = var1("> #OptionalContent", var102)
return var80(".Component-BasicExample", var83, {})
