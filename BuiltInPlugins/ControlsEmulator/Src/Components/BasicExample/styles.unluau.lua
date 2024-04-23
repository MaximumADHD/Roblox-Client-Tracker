-- Generated with Unluau (https://github.com/valencefun/unluau)
local var298 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Styling
local var1 = var298.createStyleRule
var298 = var1
local var301 = {}
var301.BackgroundColor3 = "$BackgroundPaper"
var301.BorderSizePixel = 0
local var307 = {}
var307.CornerRadius = UDim.new(0, 10)
local var3 = var1("::UICorner", var307)
local var315 = {}
var315.BackgroundColor3 = "$BackgroundHover"
local var4 = var1(":hover", var315)
local var320 = {}
var320.TextSize = 24
var320.Font = Enum.Font.Gotham
var320.TextColor3 = "$TextPrimary"
var320.Size = UDim2.new(1, 0, 0, 50)
var320.BackgroundTransparency = 1
var320.TextXAlignment = Enum.TextXAlignment.Center
var320.TextYAlignment = Enum.TextYAlignment.Center
local var5 = var1("> #OptionalContent", var320)
return var298(".Component-BasicExample", var301, {})
