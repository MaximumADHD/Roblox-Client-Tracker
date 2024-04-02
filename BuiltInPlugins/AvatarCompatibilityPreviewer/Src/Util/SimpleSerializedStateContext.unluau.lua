-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Types)
local var82 = var0.Src.Util
local var3 = require(var82.createUnimplemented)
local var4 = {}
var82 = var3
var4.setStage = var82("setStage")
local var88 = "CheckBody"
var4.stage = var88
var88 = var3
var4.setIsTextured = var88("setIsTextured")
var4.isTextured = true
return require(var0.Packages.React).createContext(var4)
