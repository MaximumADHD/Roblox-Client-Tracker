-- Generated with Unluau (https://github.com/valencefun/unluau)
local var100 = require(script:FindFirstAncestor("LightingCompatibilityMigration").Packages.Framework).Styling
local var1 = var100.createStyleRule
var100 = var1
local var103 = {}
var103.BackgroundColor3 = "$BackgroundPaper"
var103.BorderSizePixel = 0
local var109 = {}
var109.CornerRadius = UDim.new(0, 10)
local var3 = var1("::UICorner", var109)
local var117 = {}
var117.BackgroundColor3 = "$BackgroundHover"
local var4 = var1(":hover", var117)
local var122 = {}
var122.TextSize = 24
var122.Font = Enum.Font.Gotham
var122.TextColor3 = "$TextPrimary"
var122.Size = UDim2.new(1, 0, 0, 50)
var122.BackgroundTransparency = 1
var122.TextXAlignment = Enum.TextXAlignment.Center
var122.TextYAlignment = Enum.TextYAlignment.Center
local var5 = var1("> #OptionalContent", var122)
return var100(".Component-BasicExample", var103, {})
