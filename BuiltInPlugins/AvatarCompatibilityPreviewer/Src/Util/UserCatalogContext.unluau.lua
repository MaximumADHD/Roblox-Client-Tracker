-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Types)
local var2 = {}
var2.equippableItems = {}
function var2.addNewItem(arg1, arg2)
   error("Calling default addNewItem")
end

function var2.removeItem()
   error("Calling default removeItem")
end

return require(var0.Packages.React).createContext(var2)
