-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var127 = var0.Src.Util
local var2 = require(var127.createUnimplemented)
local var3 = {}
var127 = var2
local var132 = var127("isLimbOriginal")
var3.isLimbOriginal = var132
var132 = var2
var3.markLimbAsOriginal = var132("markLimbAsOriginal")
return require(var0.Packages.React).createContext(var3)
