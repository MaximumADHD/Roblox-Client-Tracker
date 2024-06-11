-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var9 = var0.Src
local var2 = require(var9.Util.Signal)
local var3 = {}
var3.onIsColorableAcquired = nil
var3.onRepresentEditorStateOnWorldModelDescriptionApplied = nil
var3.onRepresentEditorStateOnWorldModelUnmounted = nil
var9 = var3
local var4 = {}
var4.Context = require(var0.Packages.React).createContext(var9)
return var4
