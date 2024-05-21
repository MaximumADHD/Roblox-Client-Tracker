-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script:FindFirstAncestor("SuperTemplate").Packages.Framework).Styling
local var1 = var8.createStyleRule
var8 = var1
local var11 = {}
var11.BackgroundColor3 = "$BackgroundPaper"
var11.BorderSizePixel = 0
local var17 = {}
var17.CornerRadius = UDim.new(0, 10)
local var3 = var1("::UICorner", var17)
local var25 = {}
var25.BackgroundColor3 = "$BackgroundHover"
local var4 = var1(":hover", var25)
local var30 = {}
var30.TextSize = 24
var30.Font = Enum.Font.Gotham
var30.TextColor3 = "$TextPrimary"
var30.Size = UDim2.new(1, 0, 0, 50)
var30.BackgroundTransparency = 1
var30.TextXAlignment = Enum.TextXAlignment.Center
var30.TextYAlignment = Enum.TextYAlignment.Center
local var5 = var1("> #OptionalContent", var30)
return var8(".Component-BasicExample", var11, {})
