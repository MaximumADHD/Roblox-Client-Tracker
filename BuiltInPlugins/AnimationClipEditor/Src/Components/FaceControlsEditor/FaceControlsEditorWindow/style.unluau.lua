-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AnimationClipEditor").Packages.Framework)
local var1 = var0.UI
local var2 = var0.Util
local var3 = var2.Cryo
local var4 = var2.StyleModifier
local var5 = var1.RoundBox
local var6 = var1.Image
local var7 = var0.Style.StyleKey
local var18 = var1.UIFolderData.RoundBox
local var9 = var18.style
var18 = var2.deepCopy
local var10 = var18(var9)
local function fun0(arg1)
   local var0 = {}
   var0.Size = UDim2.fromOffset(28, 28)
   var0.Foreground = var6
   local var29 = {}
   var29.Image = arg1
   var0.ForegroundStyle = var29
   var0.Background = var9
   local var35 = {}
   var35.Color = var7.ImageButtonBackground
   var0.BackgroundStyle = var3.Dictionary.join(var10, var35)
   local var41 = {}
   local var46 = {}
   var46.Transparency = 0.5
   var46.Color = var7.ImageButtonHover
   var41.BackgroundStyle = var3.Dictionary.join(var10, var46)
   var4.Hover = var41
   local var4 = {}
   local var58 = {}
   var58.Color = var7.ButtonDisabled
   var58.Transparency = 0.5
   var4.BackgroundStyle = var3.Dictionary.join(var10, var58)
   var4.Disabled = var4
   return var0
end

local var11 = {}
local var12 = {}
var12.Size = UDim2.new(1, 0, 0, 46)
local var71 = {}
var71.Top = 5
var71.Left = 11
var71.Bottom = 11
var71.Right = 11
var12.Padding = var71
function var71(arg1)
   local var0 = {}
   var0.Size = UDim2.fromOffset(28, 28)
   var0.Foreground = var6
   local var29 = {}
   var29.Image = arg1
   var0.ForegroundStyle = var29
   var0.Background = var9
   local var35 = {}
   var35.Color = var7.ImageButtonBackground
   var0.BackgroundStyle = var3.Dictionary.join(var10, var35)
   local var41 = {}
   local var46 = {}
   var46.Transparency = 0.5
   var46.Color = var7.ImageButtonHover
   var41.BackgroundStyle = var3.Dictionary.join(var10, var46)
   var4.Hover = var41
   local var4 = {}
   local var58 = {}
   var58.Color = var7.ButtonDisabled
   var58.Transparency = 0.5
   var4.BackgroundStyle = var3.Dictionary.join(var10, var58)
   var4.Disabled = var4
   return var0
end

local var77 = var71("rbxasset://textures/DeveloperFramework/MediaPlayerControls/pause_button.png")
var12.PauseButton = var77
function var77(arg1)
   local var0 = {}
   var0.Size = UDim2.fromOffset(28, 28)
   var0.Foreground = var6
   local var29 = {}
   var29.Image = arg1
   var0.ForegroundStyle = var29
   var0.Background = var9
   local var35 = {}
   var35.Color = var7.ImageButtonBackground
   var0.BackgroundStyle = var3.Dictionary.join(var10, var35)
   local var41 = {}
   local var46 = {}
   var46.Transparency = 0.5
   var46.Color = var7.ImageButtonHover
   var41.BackgroundStyle = var3.Dictionary.join(var10, var46)
   var4.Hover = var41
   local var4 = {}
   local var58 = {}
   var58.Color = var7.ButtonDisabled
   var58.Transparency = 0.5
   var4.BackgroundStyle = var3.Dictionary.join(var10, var58)
   var4.Disabled = var4
   return var0
end

var12.PlayButton = var77("rbxasset://textures/DeveloperFramework/MediaPlayerControls/play_button.png")
var11.Controls = var12
return var11
