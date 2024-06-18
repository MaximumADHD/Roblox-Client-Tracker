-- Generated with Unluau (https://github.com/valencefun/unluau)
local var143 = require(script:FindFirstAncestor("CancellableDialog").Packages.Framework).Styling
local var1 = var143.createStyleRule
var143 = var1
local var146 = {}
var146.BackgroundColor3 = "$BackgroundPaper"
var146.BorderSizePixel = 0
local var152 = {}
var152.CornerRadius = UDim.new(0, 10)
local var3 = var1("::UICorner", var152)
local var160 = {}
var160.BackgroundColor3 = "$BackgroundHover"
local var4 = var1(":hover", var160)
local var165 = {}
var165.TextSize = 24
var165.Font = Enum.Font.Gotham
var165.TextColor3 = "$TextPrimary"
var165.Size = UDim2.new(1, 0, 0, 50)
var165.BackgroundTransparency = 1
var165.TextXAlignment = Enum.TextXAlignment.Center
var165.TextYAlignment = Enum.TextYAlignment.Center
local var5 = var1("> #OptionalContent", var165)
return var143(".Component-BasicExample", var146, {})
