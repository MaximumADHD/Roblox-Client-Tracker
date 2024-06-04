-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.game = game
function var0.waitProxy(arg1)
   wait(arg1)
end

function var0.settingsProxy()
   return settings()
end

local var7 = {}
function var7.__index(arg1, arg2)
   return game:GetService(arg2)
end

setmetatable(var0, var7)
return var0
