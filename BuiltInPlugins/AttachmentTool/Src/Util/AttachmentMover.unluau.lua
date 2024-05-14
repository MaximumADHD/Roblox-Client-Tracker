-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("RunService")
local var1 = {}
var1.__index = var1
function var1.new()
   return setmetatable({}, var1)
end

function var1._anchorIfNeedBe(arg1, arg2)
   arg1._cachedAnchoredState = arg2.Anchored
   if arg2 then
      if not arg2:IsGrounded() then
         arg2.Anchored = true
      end
   end
end

function var1.setDragged(arg1, arg2)
   arg1._attachmentsAndParents = {}
   arg1._attachment = arg2
   arg1._parent = arg2:FindFirstAncestorWhichIsA("BasePart")
   if var0:IsRunning() then
      arg1:_anchorIfNeedBe(arg1._parent)
   end
end

function var1.moveTo(arg1, arg2, arg3)
   if arg1._attachment then
      if arg3 ~= arg1._parent then
         if var0:IsRunning() then
            if arg1._parent then
               if arg1._parent.Anchored then
                  arg1._parent.Anchored = arg1._cachedAnchoredState
               end
            end
            arg1:_anchorIfNeedBe(arg3)
         end
         arg1._attachment.Parent = arg3
         arg1._parent = arg3
      end
      arg1._attachment.WorldCFrame = arg2
   end
end

function var1.commit(arg1)
   if var0:IsRunning() then
      if arg1._parent then
         if arg1._parent.Anchored then
            arg1._parent.Anchored = arg1._cachedAnchoredState
         end
      end
   end
   arg1._attachment = nil
   arg1._parent = nil
   arg1._cachedAnchoredState = false
end

function var1.isMovingThisAttachment(arg1, arg2)
   if arg1._attachment ~= arg2 then
      local var0 = false
   end
   return true
end

return var1
