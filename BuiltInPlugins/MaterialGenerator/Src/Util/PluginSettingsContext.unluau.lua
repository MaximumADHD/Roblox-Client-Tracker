-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("MaterialGenerator")
local var1 = require(var0.Packages.ReactUtils).createUnimplemented
local var14 = var0.Src
local var3 = require(var14.Types)
local var4 = {}
var14 = var1
local var19 = var14("getSetting")
var4.getSetting = var19
var19 = var1
var4.setSetting = var19("setSetting")
var4.pluginSettings = {}
return require(var0.Packages.React).createContext(var4)
