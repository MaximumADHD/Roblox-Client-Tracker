-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Types)
local var77 = var0.Src.Util
local var3 = require(var77.createUnimplemented)
local var4 = {}
var77 = var3
var4.setStage = var77("setStage")
local var83 = "CheckBody"
var4.stage = var83
var83 = var3
var4.setIsTextured = var83("setIsTextured")
var4.isTextured = true
return require(var0.Packages.React).createContext(var4)
