-- Generated with Unluau (https://github.com/valencefun/unluau)
local var142 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Styling
local var1 = var142.createStyleRule
var142 = var1
local var145 = {}
var145.BackgroundColor3 = "$BackgroundPaper"
var145.BorderSizePixel = 0
local var151 = {}
var151.CornerRadius = UDim.new(0, 10)
local var3 = var1("::UICorner", var151)
local var159 = {}
var159.BackgroundColor3 = "$BackgroundHover"
local var4 = var1(":hover", var159)
local var164 = {}
var164.TextSize = 24
var164.Font = Enum.Font.Gotham
var164.TextColor3 = "$TextPrimary"
var164.Size = UDim2.new(1, 0, 0, 50)
var164.BackgroundTransparency = 1
var164.TextXAlignment = Enum.TextXAlignment.Center
var164.TextYAlignment = Enum.TextYAlignment.Center
local var5 = var1("> #OptionalContent", var164)
return var142(".Component-BasicExample", var145, {})
