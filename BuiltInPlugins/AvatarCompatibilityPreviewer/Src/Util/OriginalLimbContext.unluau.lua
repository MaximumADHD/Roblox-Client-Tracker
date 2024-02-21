-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var99 = var0.Src.Util
local var2 = require(var99.createUnimplemented)
local var3 = {}
var99 = var2
local var104 = var99("isLimbOriginal")
var3.isLimbOriginal = var104
var104 = var2
var3.markLimbAsOriginal = var104("markLimbAsOriginal")
return require(var0.Packages.React).createContext(var3)
