-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Components.Screens.AvatarScreen.Stages.StageType)
local var2 = require(var0.Src.Types)
local var60 = var0.Src.Util
local var4 = require(var60.createUnimplemented)
local var5 = {}
var60 = var4
var5.openPalette = var60("openPalette")
local var66 = {}
var5.focusedAttachments = var66
var66 = var4
var5.setFocusedAttachments = var66("setFocusedAttachments")
local var69 = false
var5.dummyPreviewLocked = var69
var69 = var4
local var71 = var69("incrementDummyPreviewLock")
var5.incrementDummyPreviewLock = var71
var71 = var4
var5.decrementDummyPreviewLock = var71("decrementDummyPreviewLock")
function var5.resetCamera()
end

var5.stage = {}
return require(var0.Packages.React).createContext(var5)
