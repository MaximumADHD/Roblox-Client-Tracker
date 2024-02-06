-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AnimationClipEditor").Packages.Framework)
local var1 = var0.UI
local var2 = var0.Util
local var3 = var2.Cryo
local var4 = var2.StyleModifier
local var5 = var1.RoundBox
local var6 = var1.Image
local var7 = var0.Style.StyleKey
local var71 = var1.UIFolderData.RoundBox
local var9 = var71.style
var71 = var2.deepCopy
local var10 = var71(var9)
local function fun0(arg1)
   local var0 = {}
   var0.Size = UDim2.fromOffset(28, 28)
   var0.Foreground = var6
   local var82 = {}
   var82.Image = arg1
   var0.ForegroundStyle = var82
   var0.Background = var9
   local var88 = {}
   var88.Color = var7.ImageButtonBackground
   var0.BackgroundStyle = var3.Dictionary.join(var10, var88)
   local var94 = {}
   local var99 = {}
   var99.Transparency = 0.5
   var99.Color = var7.ImageButtonHover
   var94.BackgroundStyle = var3.Dictionary.join(var10, var99)
   var4.Hover = var94
   local var4 = {}
   local var111 = {}
   var111.Color = var7.ButtonDisabled
   var111.Transparency = 0.5
   var4.BackgroundStyle = var3.Dictionary.join(var10, var111)
   var4.Disabled = var4
   return var0
end

local var11 = {}
local var12 = {}
var12.Size = UDim2.new(1, 0, 0, 46)
local var124 = {}
var124.Top = 5
var124.Left = 11
var124.Bottom = 11
var124.Right = 11
var12.Padding = var124
function var124(arg1)
   local var0 = {}
   var0.Size = UDim2.fromOffset(28, 28)
   var0.Foreground = var6
   local var82 = {}
   var82.Image = arg1
   var0.ForegroundStyle = var82
   var0.Background = var9
   local var88 = {}
   var88.Color = var7.ImageButtonBackground
   var0.BackgroundStyle = var3.Dictionary.join(var10, var88)
   local var94 = {}
   local var99 = {}
   var99.Transparency = 0.5
   var99.Color = var7.ImageButtonHover
   var94.BackgroundStyle = var3.Dictionary.join(var10, var99)
   var4.Hover = var94
   local var4 = {}
   local var111 = {}
   var111.Color = var7.ButtonDisabled
   var111.Transparency = 0.5
   var4.BackgroundStyle = var3.Dictionary.join(var10, var111)
   var4.Disabled = var4
   return var0
end

local var130 = var124("rbxasset://textures/DeveloperFramework/MediaPlayerControls/pause_button.png")
var12.PauseButton = var130
function var130(arg1)
   local var0 = {}
   var0.Size = UDim2.fromOffset(28, 28)
   var0.Foreground = var6
   local var82 = {}
   var82.Image = arg1
   var0.ForegroundStyle = var82
   var0.Background = var9
   local var88 = {}
   var88.Color = var7.ImageButtonBackground
   var0.BackgroundStyle = var3.Dictionary.join(var10, var88)
   local var94 = {}
   local var99 = {}
   var99.Transparency = 0.5
   var99.Color = var7.ImageButtonHover
   var94.BackgroundStyle = var3.Dictionary.join(var10, var99)
   var4.Hover = var94
   local var4 = {}
   local var111 = {}
   var111.Color = var7.ButtonDisabled
   var111.Transparency = 0.5
   var4.BackgroundStyle = var3.Dictionary.join(var10, var111)
   var4.Disabled = var4
   return var0
end

var12.PlayButton = var130("rbxasset://textures/DeveloperFramework/MediaPlayerControls/play_button.png")
var11.Controls = var12
return var11
