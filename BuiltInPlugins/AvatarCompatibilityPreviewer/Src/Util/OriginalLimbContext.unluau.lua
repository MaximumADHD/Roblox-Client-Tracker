-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var87 = var0.Src.Util
local var2 = require(var87.createUnimplemented)
local var3 = {}
var87 = var2
local var92 = var87("isLimbOriginal")
var3.isLimbOriginal = var92
var92 = var2
var3.markLimbAsOriginal = var92("markLimbAsOriginal")
return require(var0.Packages.React).createContext(var3)
