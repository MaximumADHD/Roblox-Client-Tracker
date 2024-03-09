-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Components.Screens.AvatarScreen.Stages.StageType)
local var173 = var0.Src.Util
local var3 = require(var173.createUnimplemented)
local var4 = {}
var173 = var3
var4.openPalette = var173("openPalette")
local var179 = false
var4.dummyPreviewLocked = var179
var179 = var3
local var181 = var179("incrementDummyPreviewLock")
var4.incrementDummyPreviewLock = var181
var181 = var3
var4.decrementDummyPreviewLock = var181("decrementDummyPreviewLock")
function var4.resetCamera()
end

var4.stage = {}
return require(var0.Packages.React).createContext(var4)
