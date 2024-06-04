-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("ControlsEmulator")
local var1 = require(var0.Packages.Framework).Styling.createStyleRule
local var11 = var0.Src
local var3 = require(var11.Util.Constants)
local var4 = var3.THUMBSTICK_SIZE
local var5 = var3.THUMBSTICK_SOCKET_SIZE
var11 = var1
local var18 = {}
var18.Size = UDim2.new(0, var5, 0, var5)
var18.BackgroundColor3 = "$ForegroundMuted"
local var29 = {}
var29.BackgroundColor3 = "$Foreground"
var29.Size = UDim2.new(0, var4, 0, var4)
var29.Position = UDim2.new(0.5, 0, 0.5, 0)
var29.AnchorPoint = Vector2.new(0.5, 0.5)
local var6 = var1("> .Widget-Thumbstick-Stick", var29)
return var11(".Widget-Thumbstick", var18, {})
