-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Core.Types.Category)
local var1 = {}
local var11 = {}
var11.name = "NPC"
var11.search = "NPC"
local var3 = {}
var3.name = "Vehicle"
var3.search = "Vehicle"
local var4 = {}
var4.name = "Weapon"
var4.search = "Weapon"
local var5 = {}
var5.name = "Building"
var5.search = "Building"
local var6 = {}
var6.name = "Light"
var6.search = "Light"
var1.SUGGESTIONS = { {}, {}, {} }
function var1.canHaveSuggestions(arg1, arg2)
   if arg1 == "" then
      local var29 = var0
      var29 = arg2
      local var0 = var29.categoryIsFreeAsset(var29)
   end
   return false
end

return var1
