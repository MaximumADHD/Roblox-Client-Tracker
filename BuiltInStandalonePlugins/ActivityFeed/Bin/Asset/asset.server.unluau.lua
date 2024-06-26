-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script
require(var0.Parent.Parent.Common.defineLuaFlags)
if game:GetService("RunService"):IsEdit() then
   var0 = game.PlaceId
   plugin:SetItem("placeid", var0)
   plugin:SetItem("universeid", game.GameId)
   plugin:Invoke("idsupdated")
   game:GetPropertyChangedSignal("PlaceId"):Connect(function()
      plugin:SetItem("placeid", game.PlaceId)
      plugin:Invoke("idsupdated")
   end)
   game:GetPropertyChangedSignal("GameId"):Connect(function()
      plugin:SetItem("universeid", game.GameId)
      plugin:Invoke("idsupdated")
   end)
end
if not plugin then
end
local var1 = script.Parent.Parent.Parent
local var2 = require(var1.Packages.TestLoader)
var2.launch("ActivityFeed", var1.Src)
if var2.isCli() then
end
