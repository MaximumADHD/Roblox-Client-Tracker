-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("MaterialGenerator")
local var1 = require(var0.Packages.ReactUtils).createUnimplemented
local var2 = require(var0.Src.Types)
local var3 = {}
var3.session = nil
var3.isGenerating = false
var3.lastGeneratedPromptText = ""
local var73 = ""
var3.promptText = var73
var73 = var1
var3.setPromptText = var73("setPromptText")
local var76 = nil
var3.errorMessage = var76
var76 = var1
local var78 = var76("popError")
var3.popError = var78
var78 = var1
local var80 = var78("generateMaterialVariants")
var3.generateMaterialVariants = var80
var80 = var1
var3.uploadMaterialVariant = var80("uploadMaterialVariant")
return require(var0.Packages.React).createContext(var3)
