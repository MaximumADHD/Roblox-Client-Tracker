-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Types)
local var2 = require(var0.Src.Util.createUnimplemented)
local var3 = {}
local var18 = {}
var3.equippedItems = var18
var18 = var2
local var20 = var18("addEquippedItem")
var3.addEquippedItem = var20
var20 = var2
local var22 = var20("removeEquippedItem")
var3.removeEquippedItem = var22
var22 = var2
local var24 = var22("removeAllEquippedItems")
var3.removeAllEquippedItems = var24
var24 = var2
var3.swapEquippedItemsByIndex = var24("swapEquippedItemsByIndex")
local var27 = {}
var27.accessories = {}
var27.animation = nil
var27.clothing = {}
var27.emotion = nil
local var32 = {}
var27.patches = var32
var3.avatarAssets = var27
var32 = var3
return require(var0.Packages.React).createContext(var32)
