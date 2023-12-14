-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.Pane
local var6 = var4.SimpleExpandablePane
local var7 = var4.TextInput
local var8 = var1.PureComponent:extend("NetworkPane")
local var9 = settings().Network
local var10 = var9:GetPropertyChangedSignal("IncomingReplicationLag")
function var8.init(arg1, arg2)
   local var31 = {}
   local var32 = var9
   var31.incomingReplicationLag = tostring(var32.IncomingReplicationLag)
   arg1.state = var31
   function var32()
      local var37 = {}
      var37.incomingReplicationLag = tostring(var9.IncomingReplicationLag)
      arg1:setState(var37)
   end
   
   arg1.incomingReplicationLagChangedConnection = var10:Connect(var32)
end

function var8.willUnmount(arg1)
   arg1.incomingReplicationLagChangedConnection:Disconnect()
end

local function fun6(arg1)
   local var0 = arg1.props.Localization
   local var56 = {}
   var56.AutomaticSize = Enum.AutomaticSize.Y
   var56.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var56.Layout = Enum.FillDirection.Vertical
   var56.Padding = 10
   var56.Spacing = 10
   local var62 = {}
   local var66 = {}
   var66.AutomaticSize = Enum.AutomaticSize.Y
   var66.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var66.Layout = Enum.FillDirection.Vertical
   var66.AlwaysExpanded = true
   var66.LayoutOrder = 2
   var66.Style = "Box"
   var66.Text = var0:getText("NetworkSettings", "NetworkReplicationLagLabel")
   local var81 = {}
   var81.PlaceholderText = var0:getText("NetworkSettings", "NetworkReplicationLagPlaceholder")
   var81.ShouldFocus = true
   var81.Width = 100
   var81.MaxLength = 5
   function var81.OnValidateText()
      local var90 = {}
      var90.incomingReplicationLag = tostring(var9.IncomingReplicationLag)
      arg1:setState(var90)
   end
   
   function var81.OnFormatText(arg1)
      local var0 = 5
      if var0 < string.len(arg1) then
         var0 = arg1
         return string.sub(var0, 1, 5)
      end
      return arg1
   end
   
   var81.Text = arg1.state.incomingReplicationLag
   function var81.OnTextChanged(arg1)
      arg1.incomingReplicationLagChangedConnection:Disconnect()
   end
   
   local var1 = var1.createElement(var7, var81)
   var62.networkPane = var1.createElement(var6, var66, {})
   return var1.createElement(var5, var56, var62)
end

function var8.render(arg1)
   local var0 = arg1.props.Localization
   local var56 = {}
   var56.AutomaticSize = Enum.AutomaticSize.Y
   var56.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var56.Layout = Enum.FillDirection.Vertical
   var56.Padding = 10
   var56.Spacing = 10
   local var62 = {}
   local var66 = {}
   var66.AutomaticSize = Enum.AutomaticSize.Y
   var66.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var66.Layout = Enum.FillDirection.Vertical
   var66.AlwaysExpanded = true
   var66.LayoutOrder = 2
   var66.Style = "Box"
   var66.Text = var0:getText("NetworkSettings", "NetworkReplicationLagLabel")
   local var81 = {}
   var81.PlaceholderText = var0:getText("NetworkSettings", "NetworkReplicationLagPlaceholder")
   var81.ShouldFocus = true
   var81.Width = 100
   var81.MaxLength = 5
   function var81.OnValidateText()
      local var90 = {}
      var90.incomingReplicationLag = tostring(var9.IncomingReplicationLag)
      arg1:setState(var90)
   end
   
   function var81.OnFormatText(arg1)
      local var0 = 5
      if var0 < string.len(arg1) then
         var0 = arg1
         return string.sub(var0, 1, 5)
      end
      return arg1
   end
   
   var81.Text = arg1.state.incomingReplicationLag
   function var81.OnTextChanged(arg1)
      arg1.incomingReplicationLagChangedConnection:Disconnect()
   end
   
   local var1 = var1.createElement(var7, var81)
   var62.networkPane = var1.createElement(var6, var66, {})
   return var1.createElement(var5, var56, var62)
end

fun6 = var3.withContext
local var112 = {}
var112.Localization = var3.Localization
var112.Stylizer = var3.Stylizer
var8 = fun6(var112)(var8)
return var8
