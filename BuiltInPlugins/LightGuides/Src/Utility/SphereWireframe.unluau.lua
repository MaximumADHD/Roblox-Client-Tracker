-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Src.Flags.getFFlagLightGuidesAttachmentErrors)()
local var3 = require(var0.Src.Utility.Constants)
local var4 = var3.THICKNESS
local var5 = var3.TRANSPARENCY
local var6 = {}
var6.__index = var6
function var6.new()
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
   return setmetatable(var0, var6)
end

function var6.render(arg1)
   arg1:_setListeners()
   if not arg1:_setAncestry() then
   end
   if not arg1._handlesPresent then
      arg1:_setHandles()
   end
   local var0 = arg1._light.Enabled
   local var1 = arg1._light.Color
   local var2 = arg1._light.Range
   local var3 = arg1._handles.AxisAdornmentX
   local var4 = arg1._handles.AxisAdornmentY
   local var5 = arg1._handles.AxisAdornmentZ
   var3.Radius = var2
   var3.InnerRadius = var2 - var4
   var3.Adornee = arg1._adornee
   var3.Visible = var0
   var3.Color3 = var1
   var3.CFrame = arg1._offset * CFrame.Angles(0, 1.5707963267949, 0)
   var4.Radius = var2
   var4.InnerRadius = var2 - var4
   var4.Adornee = arg1._adornee
   var4.Visible = var0
   var4.Color3 = var1
   var4.CFrame = arg1._offset * CFrame.Angles(1.5707963267949, 0, 0)
   var5.Radius = var2
   var5.InnerRadius = var2 - var4
   var5.Adornee = arg1._adornee
   var5.Visible = var0
   var5.Color3 = var1
   var5.CFrame = arg1._offset
end

function var6.pool(arg1)
   assert(arg1._handlesFolder, "Wireframe already pooled")
   assert(arg1._light, "Wireframe already pooled")
   arg1._handlesFolder.Name = "pooled"
   arg1._handlesFolder.Parent = nil
   arg1._light = nil
   arg1:_removeListeners()
   return arg1
end

function var6.adorn(arg1, arg2)
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

function var6.destroy(arg1)
   arg1:_removeHandles()
   arg1:_removeListeners()
   arg1._handlesFolder:Destroy()
   arg1._handlesFolder = nil
end

function var6.setGuidesFolder(arg1, arg2)
   arg1._guidesFolder = arg2
end

function var6._setAncestry(arg1)
   if var2 then
      local var0 = arg1._light.Parent
      if not var0 then
         return false
      end
      assert(var0, "Sphere Wireframe should have valid Adornee.")
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

function var6._setHandles(arg1)
   local var0 = Instance.new("CylinderHandleAdornment")
   var0.Height = var4
   var0.Transparency = var5
   var0.Parent = arg1._handlesFolder
   local var1 = Instance.new("CylinderHandleAdornment")
   var1.Height = var4
   var1.Transparency = var5
   var1.Parent = arg1._handlesFolder
   local var2 = Instance.new("CylinderHandleAdornment")
   var2.Height = var4
   var2.Transparency = var5
   var2.Parent = arg1._handlesFolder
   arg1._handles.AxisAdornmentX = var0
   arg1._handles.AxisAdornmentY = var1
   arg1._handles.AxisAdornmentZ = var2
   arg1._handlesPresent = true
end

function var6._removeHandles(arg1)
   if arg1._handles then
      if arg1._handlesPresent then
         arg1._handles.AxisAdornmentX:Destroy()
         arg1._handles.AxisAdornmentY:Destroy()
         arg1._handles.AxisAdornmentZ:Destroy()
         arg1._handlesPresent = false
      end
   end
end

function var6._setListeners(arg1)
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
         return setmetatable(var0, var6)
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
            local var1 = arg1._light.Color
            local var2 = arg1._light.Range
            local var3 = arg1._handles.AxisAdornmentX
            local var4 = arg1._handles.AxisAdornmentY
            local var5 = arg1._handles.AxisAdornmentZ
            var3.Radius = var2
            var3.InnerRadius = var2 - var4
            var3.Adornee = arg1._adornee
            var3.Visible = var0
            var3.Color3 = var1
            var3.CFrame = arg1._offset * CFrame.Angles(0, 1.5707963267949, 0)
            var4.Radius = var2
            var4.InnerRadius = var2 - var4
            var4.Adornee = arg1._adornee
            var4.Visible = var0
            var4.Color3 = var1
            var4.CFrame = arg1._offset * CFrame.Angles(1.5707963267949, 0, 0)
            var5.Radius = var2
            var5.InnerRadius = var2 - var4
            var5.Adornee = arg1._adornee
            var5.Visible = var0
            var5.Color3 = var1
            var5.CFrame = arg1._offset
         end)
      end
   end
end

function var6._removeListeners(arg1)
   if arg1._listener then
      arg1._listener:Disconnect()
   end
   if arg1._attachmentListener then
      arg1._attachmentListener:Disconnect()
   end
   arg1._listener = nil
   arg1._attachmentListener = nil
end

return var6
