-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AnimationClipEditor").Packages.Framework)
local var1 = var0.UI
local var2 = var0.Util
local var3 = var2.Cryo
local var4 = var2.StyleModifier
local var5 = var1.RoundBox
local var6 = var1.Image
local var7 = var0.Style.StyleKey
local var175 = var1.UIFolderData.RoundBox
local var9 = var175.style
var175 = var2.deepCopy
local var10 = var175(var9)
local function fun0(arg1)
   local var0 = {}
   var0.Size = UDim2.fromOffset(28, 28)
   var0.Foreground = var6
   local var186 = {}
   var186.Image = arg1
   var0.ForegroundStyle = var186
   var0.Background = var9
   local var192 = {}
   var192.Color = var7.ImageButtonBackground
   var0.BackgroundStyle = var3.Dictionary.join(var10, var192)
   local var198 = {}
   local var203 = {}
   var203.Transparency = 0.5
   var203.Color = var7.ImageButtonHover
   var198.BackgroundStyle = var3.Dictionary.join(var10, var203)
   var4.Hover = var198
   local var4 = {}
   local var215 = {}
   var215.Color = var7.ButtonDisabled
   var215.Transparency = 0.5
   var4.BackgroundStyle = var3.Dictionary.join(var10, var215)
   var4.Disabled = var4
   return var0
end

local var11 = {}
local var12 = {}
var12.Size = UDim2.new(1, 0, 0, 46)
local var228 = {}
var228.Top = 5
var228.Left = 11
var228.Bottom = 11
var228.Right = 11
var12.Padding = var228
function var228(arg1)
   local var0 = {}
   var0.Size = UDim2.fromOffset(28, 28)
   var0.Foreground = var6
   local var186 = {}
   var186.Image = arg1
   var0.ForegroundStyle = var186
   var0.Background = var9
   local var192 = {}
   var192.Color = var7.ImageButtonBackground
   var0.BackgroundStyle = var3.Dictionary.join(var10, var192)
   local var198 = {}
   local var203 = {}
   var203.Transparency = 0.5
   var203.Color = var7.ImageButtonHover
   var198.BackgroundStyle = var3.Dictionary.join(var10, var203)
   var4.Hover = var198
   local var4 = {}
   local var215 = {}
   var215.Color = var7.ButtonDisabled
   var215.Transparency = 0.5
   var4.BackgroundStyle = var3.Dictionary.join(var10, var215)
   var4.Disabled = var4
   return var0
end

local var234 = var228("rbxasset://textures/DeveloperFramework/MediaPlayerControls/pause_button.png")
var12.PauseButton = var234
function var234(arg1)
   local var0 = {}
   var0.Size = UDim2.fromOffset(28, 28)
   var0.Foreground = var6
   local var186 = {}
   var186.Image = arg1
   var0.ForegroundStyle = var186
   var0.Background = var9
   local var192 = {}
   var192.Color = var7.ImageButtonBackground
   var0.BackgroundStyle = var3.Dictionary.join(var10, var192)
   local var198 = {}
   local var203 = {}
   var203.Transparency = 0.5
   var203.Color = var7.ImageButtonHover
   var198.BackgroundStyle = var3.Dictionary.join(var10, var203)
   var4.Hover = var198
   local var4 = {}
   local var215 = {}
   var215.Color = var7.ButtonDisabled
   var215.Transparency = 0.5
   var4.BackgroundStyle = var3.Dictionary.join(var10, var215)
   var4.Disabled = var4
   return var0
end

var12.PlayButton = var234("rbxasset://textures/DeveloperFramework/MediaPlayerControls/play_button.png")
var11.Controls = var12
return var11
