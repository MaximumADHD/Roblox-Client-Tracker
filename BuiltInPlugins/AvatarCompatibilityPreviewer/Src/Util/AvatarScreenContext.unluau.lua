-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Components.Screens.AvatarScreen.Stages.StageType)
local var56 = var0.Src.Util
local var3 = require(var56.createUnimplemented)
local var4 = {}
var56 = var3
var4.openPalette = var56("openPalette")
local var62 = false
var4.dummyPreviewLocked = var62
var62 = var3
local var64 = var62("incrementDummyPreviewLock")
var4.incrementDummyPreviewLock = var64
var64 = var3
var4.decrementDummyPreviewLock = var64("decrementDummyPreviewLock")
function var4.resetCamera()
end

var4.stage = {}
return require(var0.Packages.React).createContext(var4)
