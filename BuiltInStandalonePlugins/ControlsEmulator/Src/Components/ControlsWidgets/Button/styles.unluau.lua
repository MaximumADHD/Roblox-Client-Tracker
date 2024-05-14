-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script:FindFirstAncestor("ControlsEmulator").Packages.Framework).Styling
local var1 = var8.createStyleRule
var8 = var1
local var11 = {}
var11.BorderSizePixel = 3
var11.BorderColor3 = "$ForegroundMain"
var11.BorderMode = Enum.BorderMode.Outline
var11.Size = UDim2.new(0, 36, 0, 36)
local var24 = {}
var24.CornerRadius = UDim.new(1, 0)
local var2 = var1("::UICorner", var24)
local var32 = {}
var32.BackgroundColor3 = "$BackgroundHover"
local var3 = var1(":hover", var32)
return var8(".Widget-Button", var11, {})
