-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var498 = var0.Src
local var2 = require(var498.Util.Signal)
local var3 = {}
var3.onIsColorableAcquired = nil
var3.onRepresentEditorStateOnWorldModelDescriptionApplied = nil
var3.onRepresentEditorStateOnWorldModelUnmounted = nil
var498 = var3
local var4 = {}
var4.Context = require(var0.Packages.React).createContext(var498)
return var4
