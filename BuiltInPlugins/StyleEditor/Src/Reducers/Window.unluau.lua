-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Dash).join
local var2 = var0.Src.Actions
local var3 = {}
var3.DesignSheet = nil
var3.IsDirty = false
local var38 = UDim.new(0, 200)
local var42 = UDim.new(1, 65336)
var3.PaneSizes = {}
var3.SearchTerm = ""
var38 = var3
function require(var2.Window.SetDesignSheet).name(arg1, arg2)
   local var51 = {}
   var51.DesignSheet = arg2.designSheet
   return var1(arg1, var51)
end

function require(var2.Window.SetIsDirty).name(arg1, arg2)
   local var59 = {}
   var59.IsDirty = arg2.isDirty
   return var1(arg1, var59)
end

function require(var2.Window.SetPaneSizes).name(arg1, arg2)
   local var67 = {}
   var67.PaneSizes = arg2.sizes
   return var1(arg1, var67)
end

function require(var2.Window.SetSearch).name(arg1, arg2)
   local var75 = {}
   var75.SearchTerm = arg2.searchTerm
   return var1(arg1, var75)
end

return require(var0.Packages.Rodux).createReducer(var38, {})
