-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Core.Util.MockWrapper)
local var3 = require(var0.Core.Networking.NetworkInterface)
local var4 = require(script.Parent.AudioViewWrapper)
local var5 = {}
function var5.story()
   local var30 = {}
   var30.networkInterface = var3.new()
   local var31 = {}
   var31.AudioViewWrapper = var1.createElement(var4)
   return var1.createElement(var2, var30, var31)
end

return var5
