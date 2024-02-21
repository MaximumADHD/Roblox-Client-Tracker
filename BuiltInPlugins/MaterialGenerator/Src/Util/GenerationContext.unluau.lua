-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("MaterialGenerator")
local var1 = require(var0.Packages.ReactUtils).createUnimplemented
local var2 = {}
var2.session = nil
var2.isGenerating = false
var2.currentPromptText = ""
local var69 = nil
var2.errorMessage = var69
var69 = var1
local var71 = var69("popError")
var2.popError = var71
var71 = var1
local var73 = var71("generateMaterialVariants")
var2.generateMaterialVariants = var73
var73 = var1
var2.uploadMaterialVariant = var73("uploadMaterialVariant")
return require(var0.Packages.React).createContext(var2)
