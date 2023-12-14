-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = var0.Src.Actions
local var3 = require(var2.SetMaterialAsTool)
local var4 = require(var2.SetMaterialBrowserLayout)
local var5 = require(var2.SetMaterialTileSize)
local var6 = require(var2.SetViewType)
local var7 = require(var0.Src.Controllers.GeneralServiceController)
local var8 = require(var0.Src.Util.SetHighlight)
local var9 = require(var0.Packages.Framework).ContextServices.ContextItem:extend("PluginController")
function var9.new(arg1, arg2, arg3, arg4, arg5)
   local var186 = {}
   var186._plugin = arg1
   var186._store = arg2
   var186._mouse = arg3
   var186._generalServiceController = arg4
   var186._mock = arg5
   local var1 = setmetatable(var186, var9)
   var1._mouseMoveConnection = nil
   var1._mouseClickedConnection = nil
   var1._deactivationConnection = nil
   return var1
end

function var9.mock()
   return var9.new(nil, nil, var7.mock(), true)
end

function var9.initialize(arg1)
   if arg1._mock then
   end
   local var0 = arg1._plugin:GetSetting("MaterialBrowserLayout")
   local var1 = arg1._plugin:GetSetting("MaterialTileSize")
   local var2 = arg1._plugin:GetSetting("ViewType")
   if var0 then
      local var0 = var4(var0)
      arg1._store:dispatch()
   end
   if var1 then
      local var0 = var5(var1)
      arg1._store:dispatch()
   end
   if var2 then
      local var0 = var6(var2)
      arg1._store:dispatch()
   end
end

function var9.setMaterialTileSize(arg1, arg2)
   if arg1._mock then
   end
   arg1._plugin:SetSetting("MaterialTileSize", arg2)
end

function var9.setViewType(arg1, arg2)
   if arg1._mock then
   end
   arg1._plugin:SetSetting("ViewType", arg2)
end

function var9.setMaterialBrowserLayout(arg1, arg2)
   if arg1._mock then
   end
   arg1._plugin:SetSetting("MaterialBrowserLayout", arg2)
end

function var9.toggleMaterialAsTool(arg1)
   if arg1._mock then
   end
   arg1._plugin:Activate(true)
   local var260 = var3(true)
   arg1._store:dispatch()
   local var1 = nil
   arg1._mouseMoveConnection = arg1._mouse.Move:Connect(function(arg1, arg2, arg3, arg4, arg5)
      local var270 = {}
      var270._plugin = arg1
      var270._store = arg2
      var270._mouse = arg3
      var270._generalServiceController = arg4
      var270._mock = arg5
      local var1 = setmetatable(var270, var9)
      var1._mouseMoveConnection = nil
      var1._mouseClickedConnection = nil
      var1._deactivationConnection = nil
      return var1
   end)
   arg1._mouseClickedConnection = arg1._mouse.Button1Down:Connect(function()
      return var9.new(nil, nil, var7.mock(), true)
   end)
   arg1._deactivationConnection = arg1._plugin.Deactivation:Connect(function(arg1)
      if arg1._mock then
      end
      local var0 = arg1._plugin:GetSetting("MaterialBrowserLayout")
      local var1 = arg1._plugin:GetSetting("MaterialTileSize")
      local var2 = arg1._plugin:GetSetting("ViewType")
      if var0 then
         local var0 = var4(var0)
         arg1._store:dispatch()
      end
      if var1 then
         local var0 = var5(var1)
         arg1._store:dispatch()
      end
      if var2 then
         local var0 = var6(var2)
         arg1._store:dispatch()
      end
   end)
end

function var9.untoggleMaterialAsTool(arg1)
   if arg1._mock then
   end
   arg1._plugin:Deactivate()
end

function var9.destroy(arg1)
   if arg1._mock then
   end
   if arg1._mouseMoveConnection then
      arg1._mouseMoveConnection:Disconnect()
   end
   if arg1._mouseClickedConnection then
      arg1._mouseClickedConnection:Disconnect()
   end
   if arg1._deactivationConnection then
      arg1._deactivationConnection:Disconnect()
   end
end

return var9
