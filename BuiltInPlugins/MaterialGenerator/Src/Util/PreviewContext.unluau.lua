-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("MaterialGenerator")
local var1 = require(var0.Packages.ReactUtils).createUnimplemented
local var2 = require(var0.Src.Types)
local var3 = {}
local var18 = nil
var3.selectedMaterial = var18
var18 = var1
local var20 = var18("setSelectedMaterial")
var3.setSelectedMaterial = var20
var20 = var1
var3.applySelectedMaterial = var20("applySelectedMaterial")
return require(var0.Packages.React).createContext(var3)
