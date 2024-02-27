-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Dash).join
local var2 = require(var0.Src.Types)
local var3 = {}
var3.Fonts = {}
function require(var0.Src.Actions.Asset.SaveFontMetadata).name(arg1, arg2)
   local var160 = {}
   var160.Fonts = var1(arg1.Fonts, arg2.metadata)
   return var1(arg1, var160)
end

return require(var0.Packages.Rodux).createReducer(var3, {})
