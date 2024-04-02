-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Src.Utility.Constants)
local var3 = require(var0.Src.Flags.getFFlagLightGuidesAttachmentErrors)()
local var4 = {}
Enum.NormalId.Back = CFrame.fromMatrix(Vector3.new(), Vector3.new(1, 0, 0), Vector3.new(0, 1, 0), Vector3.new(0, 0, 1))
Enum.NormalId.Front = CFrame.fromMatrix(Vector3.new(), Vector3.new(65535, 0, 0), Vector3.new(0, 1, 0), Vector3.new(0, 0, 65535))
Enum.NormalId.Right = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 0, 65535), Vector3.new(0, 1, 0), Vector3.new(1, 0, 0))
Enum.NormalId.Left = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 0, 1), Vector3.new(0, 1, 0), Vector3.new(65535, 0, 0))
Enum.NormalId.Bottom = CFrame.fromMatrix(Vector3.new(), Vector3.new(1, 0, 0), Vector3.new(0, 0, 1), Vector3.new(0, 65535, 0))
Enum.NormalId.Top = CFrame.fromMatrix(Vector3.new(), Vector3.new(1, 0, 0), Vector3.new(0, 0, 65535), Vector3.new(0, 1, 0))
local var5 = var2.THICKNESS
local var6 = var2.TRANSPARENCY
local var7 = {}
var7.__index = var7
function var7.new()
   local var0 = {}
   var0._adornee = nil
   var0._parent = nil
   var0._light = nil
   var0._handlesFolder = Instance.new("Folder")
   var0._guidesFolder = nil
   var0._handles = {}
   var0._handlesPresent = false
   var0._listener = nil
   var0._attachmentListener = nil
   return setmetatable(var0, var7)
end

function var7.render(arg1)
   arg1:_setListeners()
   if not arg1:_setAncestry() then
   end
   if not arg1._handlesPresent then
      arg1:_setHandles()
   end
   local var0 = arg1._light.Enabled
   local var1 = arg1._light.Range
   local var2 = math.rad(arg1._light.Angle)
   local var3 = arg1._light.Color
   local var4 = var1 * math.sin(var2 / 2)
   local var5 = arg1._handles.Spot
   local var6 = arg1._handles.Left
   local var7 = arg1._handles.Right
   local var8 = arg1._handles.Top
   local var9 = arg1._handles.Bottom
   local var10 = arg1._handles.Center
   var5.Adornee = arg1._adornee
   var5.Radius = var4
   var5.InnerRadius = var4 - var5
   var5.Visible = var0
   var5.Color3 = var3
   var6.Height = var1
   var6.Adornee = arg1._adornee
   var6.Visible = var0
   var6.Color3 = var3
   var7.Height = var1
   var7.Adornee = arg1._adornee
   var7.Visible = var0
   var7.Color3 = var3
   var8.Height = var1
   var8.Adornee = arg1._adornee
   var8.Visible = var0
   var8.Color3 = var3
   var9.Height = var1
   var9.Adornee = arg1._adornee
   var9.Visible = var0
   var9.Color3 = var3
   var10.Height = var1
   var10.Adornee = arg1._adornee
   var10.Visible = var0
   var10.Color3 = var3
   local var205 = var4
   local var206 = arg1._light
   local var207 = var206.Face
   var205 = var4
   var207 = var1
   var206 = var1 * math.cos(var2 / 2)
   arg1:_setCFrameValues(var205[var207], var205, var207, var206, var2)
end

function var7.pool(arg1)
   assert(arg1._handlesFolder, "Wireframe already pooled")
   assert(arg1._light, "Wireframe already pooled")
   arg1._handlesFolder.Name = "pooled"
   arg1._handlesFolder.Parent = nil
   arg1._light = nil
   arg1:_removeListeners()
   return arg1
end

function var7.adorn(arg1, arg2)
   assert(arg2, "Can\'t adorn nil")
   assert(arg1._light, "Wireframe already adorned")
   arg1._light = arg2
   arg1._handlesFolder.Name = arg2.name
   arg1._handlesFolder.Parent = arg1._guidesFolder
   arg1._adornee = arg2.Parent
   arg1._parent = arg2.Parent
   arg1:_setListeners()
   return arg1
end

function var7.destroy(arg1)
   arg1:_removeHandles()
   arg1:_removeListeners()
   arg1._handlesFolder:Destroy()
   arg1._handlesFolder = nil
end

function var7.setGuidesFolder(arg1, arg2)
   arg1._guidesFolder = arg2
end

function var7._setAncestry(arg1)
   if var3 then
      local var0 = arg1._light.Parent
      if not var0 then
         return false
      end
      assert(var0, "Cone Wireframe should have valid Adornee.")
      if var0:IsA("Attachment") then
         local var0 = arg1._light.Parent.Parent
         local var1 = arg1._light.Parent.CFrame
      end
      if not arg1._light.Parent:IsA("Attachment") then
         if not arg1._light.Parent:IsA("BasePart") then
            arg1:_removeHandles()
            return false
         end
      end
      arg1._adornee = var0
      arg1._offset = CFrame.new(Vector3.new())
      arg1._parent = arg1._light.Parent
      return true
   end
   local var0 = arg1._light.parent
   if var0:IsA("Attachment") then
      local var0 = arg1._light.parent.parent
      local var1 = arg1._light.parent.CFrame
   end
   if not arg1._light.Parent:IsA("Attachment") then
      if not arg1._light.Parent:IsA("BasePart") then
         arg1:_removeHandles()
         return false
      end
   end
   arg1._adornee = var0
   arg1._offset = CFrame.new(Vector3.new())
   arg1._parent = arg1._light.Parent
   return true
end

function var7._setCFrameValues(arg1, arg2, arg3, arg4, arg5, arg6)
   if arg1._handles then
      local var0 = arg3 / 2
      local var1 = arg5 / 2
      local var2 = arg6 / 2
      arg1._handles.Spot.CFrame = arg1._offset * arg2 * CFrame.new(0, 0, arg5)
      arg1._handles.Left.CFrame = arg1._offset * arg2 * CFrame.new(var0, 0, var1) * CFrame.Angles(0, var2, 0)
      arg1._handles.Right.CFrame = arg1._offset * arg2 * CFrame.new(var0, 0, var1) * CFrame.Angles(0, var2, 0)
      arg1._handles.Top.CFrame = arg1._offset * arg2 * CFrame.new(0, var0, var1) * CFrame.Angles(var2, 0, 0)
      arg1._handles.Bottom.CFrame = arg1._offset * arg2 * CFrame.new(0, var0, var1) * CFrame.Angles(var2, 0, 0)
      arg1._handles.Center.CFrame = arg1._offset * arg2 * CFrame.new(0, 0, arg4 / 2)
   end
end

function var7._setHandles(arg1)
   local var0 = Instance.new("CylinderHandleAdornment")
   var0.Transparency = var6
   var0.Height = var5
   var0.Transparency = var6
   var0.Parent = arg1._handlesFolder
   local var1 = Instance.new("CylinderHandleAdornment")
   var1.Radius = var5 / 2
   var1.Transparency = var6
   var1.Parent = arg1._handlesFolder
   local var2 = Instance.new("CylinderHandleAdornment")
   var2.Radius = var5 / 2
   var2.Transparency = var6
   var2.Parent = arg1._handlesFolder
   local var3 = Instance.new("CylinderHandleAdornment")
   var3.Radius = var5 / 2
   var3.Transparency = var6
   var3.Parent = arg1._handlesFolder
   local var4 = Instance.new("CylinderHandleAdornment")
   var4.Radius = var5 / 2
   var4.Transparency = var6
   var4.Parent = arg1._handlesFolder
   local var5 = Instance.new("CylinderHandleAdornment")
   var5.Radius = var5 / 2
   var5.Transparency = var6
   var5.Parent = arg1._handlesFolder
   arg1._handles.Spot = var0
   arg1._handles.Left = var1
   arg1._handles.Right = var2
   arg1._handles.Top = var3
   arg1._handles.Bottom = var4
   arg1._handles.Center = var5
   arg1._handlesPresent = true
end

function var7._removeHandles(arg1)
   if arg1._handles then
      if arg1._handlesPresent then
         arg1._handles.Spot:Destroy()
         arg1._handles.Left:Destroy()
         arg1._handles.Right:Destroy()
         arg1._handles.Top:Destroy()
         arg1._handles.Bottom:Destroy()
         arg1._handles.Center:Destroy()
         arg1._handlesPresent = false
      end
   end
end

function var7._setListeners(arg1)
   if not arg1._listener then
      arg1._listener = arg1._light.Changed:Connect(function()
         local var0 = {}
         var0._adornee = nil
         var0._parent = nil
         var0._light = nil
         var0._handlesFolder = Instance.new("Folder")
         var0._guidesFolder = nil
         var0._handles = {}
         var0._handlesPresent = false
         var0._listener = nil
         var0._attachmentListener = nil
         return setmetatable(var0, var7)
      end)
   end
   if not arg1._attachmentListener then
      if arg1._parent:IsA("Attachment") then
         arg1._attachmentListener = arg1._parent:GetPropertyChangedSignal("CFrame"):Connect(function(arg1)
            arg1:_setListeners()
            if not arg1:_setAncestry() then
            end
            if not arg1._handlesPresent then
               arg1:_setHandles()
            end
            local var0 = arg1._light.Enabled
            local var1 = arg1._light.Range
            local var2 = math.rad(arg1._light.Angle)
            local var3 = arg1._light.Color
            local var4 = var1 * math.sin(var2 / 2)
            local var5 = arg1._handles.Spot
            local var6 = arg1._handles.Left
            local var7 = arg1._handles.Right
            local var8 = arg1._handles.Top
            local var9 = arg1._handles.Bottom
            local var10 = arg1._handles.Center
            var5.Adornee = arg1._adornee
            var5.Radius = var4
            var5.InnerRadius = var4 - var5
            var5.Visible = var0
            var5.Color3 = var3
            var6.Height = var1
            var6.Adornee = arg1._adornee
            var6.Visible = var0
            var6.Color3 = var3
            var7.Height = var1
            var7.Adornee = arg1._adornee
            var7.Visible = var0
            var7.Color3 = var3
            var8.Height = var1
            var8.Adornee = arg1._adornee
            var8.Visible = var0
            var8.Color3 = var3
            var9.Height = var1
            var9.Adornee = arg1._adornee
            var9.Visible = var0
            var9.Color3 = var3
            var10.Height = var1
            var10.Adornee = arg1._adornee
            var10.Visible = var0
            var10.Color3 = var3
            local var557 = var4
            local var558 = arg1._light
            local var559 = var558.Face
            var557 = var4
            var559 = var1
            var558 = var1 * math.cos(var2 / 2)
            arg1:_setCFrameValues(var557[var559], var557, var559, var558, var2)
         end)
      end
   end
end

function var7._removeListeners(arg1)
   if arg1._listener then
      arg1._listener:Disconnect()
   end
   if arg1._attachmentListener then
      arg1._attachmentListener:Disconnect()
   end
   arg1._listener = nil
   arg1._attachmentListener = nil
end

return var7
