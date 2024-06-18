-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AttachmentTool")
local var1 = game:GetService("MouseService")
local var2 = game:GetService("RunService")
local var3 = game:GetService("UserInputService")
local var4 = game:GetService("HttpService")
local var5 = require(var0.Src.AttachmentToolModel)
local var6 = require(var0.Packages.DraggerFramework.Utility.ViewChangeDetector)
local var7 = require(var0.Packages.Roact).PureComponent:extend("AttachmentToolComponent")
function var7.init(arg1)
   arg1:setup(arg1.props)
end

function var7.didMount(arg1)
end

function var7.willUnmount(arg1)
   arg1:teardown()
end

function var7.willUpdate(arg1, arg2, arg3)
   local var48 = arg1.props
   if arg2.DraggerContext == "teardown" then
      if arg2.DraggerSchema == "teardown" then
         local var0 = arg1.props
         if arg2.DraggerSettings ~= var0.DraggerSettings then
            arg1:teardown()
            var0 = arg2
            arg1:setup(var0)
         end
      end
   end
   arg1:teardown()
   var48 = arg2
   arg1:setup(var48)
end

function var7.render(arg1)
   return arg1._attachmentToolModel:render()
end

function var7.setup(arg1, arg2)
   assert(arg2.DraggerContext)
   assert(arg2.DraggerSchema)
   assert(arg2.DraggerSettings)
   assert(arg2.ClosePluginCallback)
   arg1._selectionBoundsAreDirty = false
   arg1._viewBoundsAreDirty = false
   arg1._bindName = "AttachmentToolViewUpdate"
   arg1._bindName = arg1._bindName ... var4:GenerateGUID(false)
   arg1._attachmentToolModel = var5.new(arg2.DraggerContext, arg2.DraggerSchema, arg2.DraggerSettings, arg2.ClosePluginCallback, function(arg1)
      arg1:setup(arg1.props)
   end, function(arg1)
   end, function(arg1)
      arg1:teardown()
   end)
   arg1._attachmentToolModel:_processSelected()
   arg1._inputBeganConnection = var3.InputBegan:Connect(function(arg1, arg2, arg3)
      local var107 = arg1.props
      if arg2.DraggerContext == "teardown" then
         if arg2.DraggerSchema == "teardown" then
            local var0 = arg1.props
            if arg2.DraggerSettings ~= var0.DraggerSettings then
               arg1:teardown()
               var0 = arg2
               arg1:setup(var0)
            end
         end
      end
      arg1:teardown()
      var107 = arg2
      arg1:setup(var107)
   end)
   arg1._inputEndedConnection = var3.InputEnded:Connect(function(arg1)
      return arg1._attachmentToolModel:render()
   end)
   arg1._mouseEnterConnection = var1.MouseEnterStudioViewport:Connect(function()
      if arg1._isMounted then
         if arg1.forceUpdate then
            arg1:forceUpdate()
         end
         arg1:setState({})
      end
   end)
   arg1._mouseLeaveConnection = var1.MouseLeaveStudioViewport:Connect(function()
      arg1._viewBoundsAreDirty = true
   end)
   local var148 = var6
   var148 = arg2.Mouse
   local var1 = var148.new(var148)
   local var2 = arg2.DraggerContext:shouldUseLocalSpace()
   var2:BindToRenderStep(arg1._bindName, Enum.RenderPriority.First.Value, function()
      arg1._selectionBoundsAreDirty = true
   end)
   arg1._isMounted = true
end

function var7.teardown(arg1)
   arg1._isMounted = false
   arg1._inputBeganConnection:Disconnect()
   arg1._inputBeganConnection = nil
   arg1._inputEndedConnection:Disconnect()
   arg1._inputEndedConnection = nil
   arg1._mouseEnterConnection:Disconnect()
   arg1._mouseEnterConnection = nil
   arg1._mouseLeaveConnection:Disconnect()
   arg1._mouseLeaveConnection = nil
   var2:UnbindFromRenderStep(arg1._bindName)
   arg1._attachmentToolModel:_processDeselected()
end

return var7
