-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Core.Util.isCli)
local var1 = {}
local var2 = {}
var2.name = "White"
var2.color = "White"
local var3 = {}
var3.name = "Black"
var3.color = "Black"
local var4 = {}
var4.name = "None"
var4.color = "None"
var1.BACKGROUNDS = { {} }
var1.WHITE = 1
var1.BLACK = 2
var1.NONE = 3
function var1.getBackgroundForStudioTheme()
   if var0() then
      return var1.NONE
   end
   local var0 = settings().Studio.Theme.Name
   if var0 == "Light" then
      return var1.WHITE
   end
   if var0 == "Dark" then
      return var1.NONE
   end
   return var1.NONE
end

return var1
