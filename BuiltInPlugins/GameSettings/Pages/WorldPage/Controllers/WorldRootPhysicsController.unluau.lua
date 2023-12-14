-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.__index = var0
function var0.new()
   return setmetatable({}, var0)
end

function var0.convertStudsToMeters(arg1)
   return arg1 * 0.28
end

function var0.calculateJumpDistance(arg1, arg2, arg3)
   return workspace:CalculateJumpDistance(arg1, arg2, arg3)
end

function var0.calculateJumpHeight(arg1, arg2)
   return workspace:CalculateJumpHeight(arg1, arg2)
end

function var0.calculateJumpPower(arg1, arg2)
   return workspace:CalculateJumpPower(arg1, arg2)
end

function var0.getGravity(arg1, arg2)
   return arg2:GetService("Workspace").Gravity
end

function var0.setGravity(arg1, arg2, arg3)
   arg2:GetService("Workspace").Gravity = arg3
end

function var0.getUseJumpPower(arg1, arg2)
   return arg2:GetService("StarterPlayer").CharacterUseJumpPower
end

function var0.setUseJumpPower(arg1, arg2, arg3)
   arg2:GetService("StarterPlayer").CharacterUseJumpPower = arg3
end

function var0.getJumpHeight(arg1, arg2)
   if arg1:getUseJumpPower(arg2) then
      local var0 = arg1:getGravity(arg2)
      local var1 = arg1:getJumpPower(arg2)
      return arg2:GetService("Workspace"):CalculateJumpHeight()
   end
   return arg2:GetService("StarterPlayer").CharacterJumpHeight
end

function var0.setJumpHeight(arg1, arg2, arg3)
   local var0 = arg2:GetService("StarterPlayer")
   var0.CharacterJumpHeight = arg3
   var0.CharacterJumpPower = arg2:GetService("Workspace"):CalculateJumpPower(arg1:getGravity(arg2), arg3)
end

function var0.getJumpPower(arg1, arg2)
   if arg1:getUseJumpPower(arg2) then
      return arg2:GetService("StarterPlayer").CharacterJumpPower
   end
   local var0 = arg1:getGravity(arg2)
   local var1 = arg1:getJumpHeight(arg2)
   return workspace:CalculateJumpPower()
end

function var0.setJumpPower(arg1, arg2, arg3)
   local var0 = arg2:GetService("StarterPlayer")
   var0.CharacterJumpPower = arg3
   var0.CharacterJumpHeight = workspace:CalculateJumpHeight(arg1:getGravity(arg2), arg3)
end

function var0.getWalkspeed(arg1, arg2)
   return arg2:GetService("StarterPlayer").CharacterWalkSpeed
end

function var0.setWalkspeed(arg1, arg2, arg3)
   arg2:GetService("StarterPlayer").CharacterWalkSpeed = arg3
end

function var0.getMaxSlopeAngle(arg1, arg2)
   return arg2:GetService("StarterPlayer").CharacterMaxSlopeAngle
end

function var0.setMaxSlopeAngle(arg1, arg2, arg3)
   arg2:GetService("StarterPlayer").CharacterMaxSlopeAngle = arg3
end

return var0
