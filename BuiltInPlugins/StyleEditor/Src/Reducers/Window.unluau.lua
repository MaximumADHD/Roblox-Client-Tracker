-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Dash).join
local var2 = var0.Src.Actions
local var3 = {}
var3.DesignSheet = nil
var3.IsDirty = false
var3.SearchTerm = ""
function require(var2.Window.SetDesignSheet).name(arg1, arg2)
   local var39 = {}
   var39.DesignSheet = arg2.designSheet
   return var1(arg1, var39)
end

function require(var2.Window.SetIsDirty).name(arg1, arg2)
   local var47 = {}
   var47.IsDirty = arg2.isDirty
   return var1(arg1, var47)
end

function require(var2.Window.SetSearch).name(arg1, arg2)
   local var55 = {}
   var55.SearchTerm = arg2.searchTerm
   return var1(arg1, var55)
end

return require(var0.Packages.Rodux).createReducer(var3, {})
