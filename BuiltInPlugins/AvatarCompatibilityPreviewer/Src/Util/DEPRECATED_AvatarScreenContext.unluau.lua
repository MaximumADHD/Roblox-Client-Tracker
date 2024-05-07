-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Components.Screens.AvatarScreen.Stages.StageType)
local var2 = require(var0.Src.Types)
local var26 = var0.Src.Util
local var4 = require(var26.createUnimplemented)
local var5 = {}
var26 = var4
var5.openPalette = var26("openPalette")
local var32 = {}
var5.focusedAttachments = var32
var32 = var4
var5.setFocusedAttachments = var32("setFocusedAttachments")
local var35 = false
var5.dummyPreviewLocked = var35
var35 = var4
local var37 = var35("incrementDummyPreviewLock")
var5.incrementDummyPreviewLock = var37
var37 = var4
var5.decrementDummyPreviewLock = var37("decrementDummyPreviewLock")
function var5.resetCamera()
end

var5.stage = {}
return require(var0.Packages.React).createContext(var5)
