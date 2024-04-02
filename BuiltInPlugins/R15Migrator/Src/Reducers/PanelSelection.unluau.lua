-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = var0.Src.Actions
local function fun0()
   local var0 = {}
   var0.selectedTab = nil
   var0.allTabsData = nil
   return var0
end

local var24 = {}
var24.selectedTab = nil
var24.allTabsData = nil
function require(var2.SetSelectedTab).name(arg1, arg2)
   local var32 = var1.Dictionary
   var32 = arg1
   local var34 = {}
   var34.selectedTab = arg2.selectedTab
   return var32.join(var32, var34)
end

function require(var2.SetAllTabsData).name(arg1, arg2)
   local var41 = var1.Dictionary
   var41 = arg1
   local var43 = {}
   var43.allTabsData = arg2.allTabsData
   return var41.join(var41, var43)
end

return require(var0.Packages.Rodux).createReducer(var24, {})
