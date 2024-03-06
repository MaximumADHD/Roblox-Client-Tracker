-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TextureGenerator")
local var1 = require(var0.Src.Util.createUnimplemented)
local var2 = {}
local var14 = {}
var2.generations = var14
var14 = var1
var2.updateGeneration = var14("updateGeneration")
local var17 = {}
var2.modelToGenerations = var17
var17 = var1
var2.updateModelToGenerations = var17("updateModelToGenerations")
local var20 = nil
var2.selected = var20
var20 = var1
var2.setSelected = var20("setSelected")
local var23 = 0
var2.quota = var23
var23 = var1
var2.setQuota = var23("setQuota")
local var26 = 0
var2.total = var26
var26 = var1
var2.setTotal = var26("setTotal")
return require(var0.Packages.React).createContext(var2)
