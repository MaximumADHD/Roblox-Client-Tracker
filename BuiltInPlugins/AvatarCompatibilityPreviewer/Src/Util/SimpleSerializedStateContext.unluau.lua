-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Types)
local var16 = var0.Src.Util
local var3 = require(var16.createUnimplemented)
local var4 = {}
var16 = var3
var4.setStage = var16("setStage")
local var22 = "CheckBody"
var4.stage = var22
var22 = var3
var4.setIsTextured = var22("setIsTextured")
var4.isTextured = true
return require(var0.Packages.React).createContext(var4)
