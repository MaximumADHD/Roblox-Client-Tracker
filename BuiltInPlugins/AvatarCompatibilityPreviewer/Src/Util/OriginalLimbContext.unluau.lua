-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var54 = var0.Src.Util
local var2 = require(var54.createUnimplemented)
local var3 = {}
var54 = var2
local var59 = var54("isLimbOriginal")
var3.isLimbOriginal = var59
var59 = var2
var3.markLimbAsOriginal = var59("markLimbAsOriginal")
return require(var0.Packages.React).createContext(var3)
