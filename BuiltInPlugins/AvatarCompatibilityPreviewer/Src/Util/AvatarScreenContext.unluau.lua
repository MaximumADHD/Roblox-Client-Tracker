-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Components.Screens.AvatarScreen.Stages.StageType)
local var187 = var0.Src.Util
local var3 = require(var187.createUnimplemented)
local var4 = {}
var187 = var3
var4.openPalette = var187("openPalette")
local var193 = false
var4.dummyPreviewLocked = var193
var193 = var3
local var195 = var193("incrementDummyPreviewLock")
var4.incrementDummyPreviewLock = var195
var195 = var3
var4.decrementDummyPreviewLock = var195("decrementDummyPreviewLock")
function var4.resetCamera()
end

var4.stage = {}
return require(var0.Packages.React).createContext(var4)
