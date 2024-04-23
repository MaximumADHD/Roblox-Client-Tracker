-- Generated with Unluau (https://github.com/valencefun/unluau)
local var340 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Styling
local var1 = var340.createStyleRule
var340 = var1
local var343 = {}
var343.BackgroundColor3 = "$BackgroundPaper"
var343.BorderSizePixel = 0
local var349 = {}
var349.CornerRadius = UDim.new(0, 10)
local var3 = var1("::UICorner", var349)
local var357 = {}
var357.BackgroundColor3 = "$BackgroundHover"
local var4 = var1(":hover", var357)
local var362 = {}
var362.TextSize = 24
var362.Font = Enum.Font.Gotham
var362.TextColor3 = "$TextPrimary"
var362.Size = UDim2.new(1, 0, 0, 50)
var362.BackgroundTransparency = 1
var362.TextXAlignment = Enum.TextXAlignment.Center
var362.TextYAlignment = Enum.TextYAlignment.Center
local var5 = var1("> #OptionalContent", var362)
return var340(".Component-BasicExample", var343, {})
