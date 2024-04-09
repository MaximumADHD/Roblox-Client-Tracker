-- Generated with Unluau (https://github.com/valencefun/unluau)
local var9 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Styling
local var1 = var9.createStyleRule
var9 = var1
local var12 = {}
var12.BackgroundColor3 = "$BackgroundPaper"
var12.BorderSizePixel = 0
local var18 = {}
var18.CornerRadius = UDim.new(0, 10)
local var3 = var1("::UICorner", var18)
local var26 = {}
var26.BackgroundColor3 = "$BackgroundHover"
local var4 = var1(":hover", var26)
local var31 = {}
var31.TextSize = 24
var31.Font = Enum.Font.Gotham
var31.TextColor3 = "$TextPrimary"
var31.Size = UDim2.new(1, 0, 0, 50)
var31.BackgroundTransparency = 1
var31.TextXAlignment = Enum.TextXAlignment.Center
var31.TextYAlignment = Enum.TextYAlignment.Center
local var5 = var1("> #OptionalContent", var31)
return var9(".Component-BasicExample", var12, {})
