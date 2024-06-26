-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AnimationClipEditor").Packages.Framework)
local var1 = var0.UI
local var2 = var0.Util
local var3 = var2.Cryo
local var4 = var2.StyleModifier
local var5 = var1.RoundBox
local var6 = var1.Image
local var7 = var0.Style.StyleKey
local var172 = var1.UIFolderData.RoundBox
local var9 = var172.style
var172 = var2.deepCopy
local var10 = var172(var9)
local function fun0(arg1)
   local var0 = {}
   var0.Size = UDim2.fromOffset(28, 28)
   var0.Foreground = var6
   local var183 = {}
   var183.Image = arg1
   var0.ForegroundStyle = var183
   var0.Background = var9
   local var189 = {}
   var189.Color = var7.ImageButtonBackground
   var0.BackgroundStyle = var3.Dictionary.join(var10, var189)
   local var195 = {}
   local var200 = {}
   var200.Transparency = 0.5
   var200.Color = var7.ImageButtonHover
   var195.BackgroundStyle = var3.Dictionary.join(var10, var200)
   var4.Hover = var195
   local var4 = {}
   local var212 = {}
   var212.Color = var7.ButtonDisabled
   var212.Transparency = 0.5
   var4.BackgroundStyle = var3.Dictionary.join(var10, var212)
   var4.Disabled = var4
   return var0
end

local var11 = {}
local var12 = {}
var12.Size = UDim2.new(1, 0, 0, 46)
local var225 = {}
var225.Top = 5
var225.Left = 11
var225.Bottom = 11
var225.Right = 11
var12.Padding = var225
function var225(arg1)
   local var0 = {}
   var0.Size = UDim2.fromOffset(28, 28)
   var0.Foreground = var6
   local var183 = {}
   var183.Image = arg1
   var0.ForegroundStyle = var183
   var0.Background = var9
   local var189 = {}
   var189.Color = var7.ImageButtonBackground
   var0.BackgroundStyle = var3.Dictionary.join(var10, var189)
   local var195 = {}
   local var200 = {}
   var200.Transparency = 0.5
   var200.Color = var7.ImageButtonHover
   var195.BackgroundStyle = var3.Dictionary.join(var10, var200)
   var4.Hover = var195
   local var4 = {}
   local var212 = {}
   var212.Color = var7.ButtonDisabled
   var212.Transparency = 0.5
   var4.BackgroundStyle = var3.Dictionary.join(var10, var212)
   var4.Disabled = var4
   return var0
end

local var231 = var225("rbxasset://textures/DeveloperFramework/MediaPlayerControls/pause_button.png")
var12.PauseButton = var231
function var231(arg1)
   local var0 = {}
   var0.Size = UDim2.fromOffset(28, 28)
   var0.Foreground = var6
   local var183 = {}
   var183.Image = arg1
   var0.ForegroundStyle = var183
   var0.Background = var9
   local var189 = {}
   var189.Color = var7.ImageButtonBackground
   var0.BackgroundStyle = var3.Dictionary.join(var10, var189)
   local var195 = {}
   local var200 = {}
   var200.Transparency = 0.5
   var200.Color = var7.ImageButtonHover
   var195.BackgroundStyle = var3.Dictionary.join(var10, var200)
   var4.Hover = var195
   local var4 = {}
   local var212 = {}
   var212.Color = var7.ButtonDisabled
   var212.Transparency = 0.5
   var4.BackgroundStyle = var3.Dictionary.join(var10, var212)
   var4.Disabled = var4
   return var0
end

var12.PlayButton = var231("rbxasset://textures/DeveloperFramework/MediaPlayerControls/play_button.png")
var11.Controls = var12
return var11
