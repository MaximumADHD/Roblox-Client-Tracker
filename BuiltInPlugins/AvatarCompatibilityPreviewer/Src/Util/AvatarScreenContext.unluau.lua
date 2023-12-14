-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Components.Screens.AvatarScreen.Stages.StageType)
local var125 = var0.Src.Util
local var3 = require(var125.createUnimplemented)
local var4 = {}
var125 = var3
var4.openPalette = var125("openPalette")
local var131 = false
var4.dummyPreviewLocked = var131
var131 = var3
local var133 = var131("incrementDummyPreviewLock")
var4.incrementDummyPreviewLock = var133
var133 = var3
var4.decrementDummyPreviewLock = var133("decrementDummyPreviewLock")
function var4.resetCamera()
end

var4.stage = {}
return require(var0.Packages.React).createContext(var4)
