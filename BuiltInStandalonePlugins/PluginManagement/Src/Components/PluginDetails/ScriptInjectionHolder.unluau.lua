-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = game:GetService("PermissionsService")
local var2 = require(var0.Packages.Roact)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = require(var0.Src.Thunks.SetPluginPermission)
local var5 = require(var0.Src.Components.FluidFitTextLabel)
local var6 = require(var0.Packages.FitFrame).FitFrameVertical
local var7 = require(var0.Src.Util.Constants)
local var8 = var2.Component:extend("ScriptInjectionHolder")
local var9 = require(var0.Packages.Framework).UI.ToggleButton
local var58 = {}
var58.scriptInjectionPermissions = {}
var8.defaultProps = var58
function var8.init(arg1)
   arg1.frameRef = var2.createRef()
   local var64 = {}
   var64.frameWidth = 0
   arg1.state = var64
   function arg1.onCheckboxActivated(arg1)
      local var75 = arg1
      local var76 = var75.props
      var76 = arg1.props.API:get()
      var75 = arg1.props.assetId
      return var76.setPluginPermission(var76, var75, arg1)
   end
   
   function arg1.resizeFrame()
      local var0 = arg1.frameRef.current
      if not var0 then
      end
      if arg1.state.frameWidth ~= var0.AbsoluteSize.X then
         local var89 = {}
         var89.frameWidth = var0.AbsoluteSize.X
         arg1:setState(var89)
      end
   end
   
end

function var8.didMount(arg1)
   arg1.resizeFrame()
end

function var8.renderCheckbox(arg1, arg2, arg3, arg4)
   local var103 = {}
   var103.BackgroundTransparency = 1
   var103.Size = UDim2.new(1, 0, 0, 16)
   var103.LayoutOrder = arg3
   local var111 = {}
   local var115 = {}
   var115.FillDirection = Enum.FillDirection.Horizontal
   var115.Padding = UDim.new(0, 8)
   var111.Layout = var2.createElement("UIListLayout", var115)
   local var125 = {}
   var125.Disabled = false
   var125.LayoutOrder = 1
   function var125.OnClick(arg1)
      local var137 = arg1
      local var138 = var137.props
      var138 = arg1.props.API:get()
      var137 = arg1.props.assetId
      return var138.setPluginPermission(var138, var137, arg1)
   end
   
   var125.Selected = arg4.allowed
   var125.Size = UDim2.new(0, var7.TOGGLE_BUTTON_WIDTH, 0, var7.TOGGLE_BUTTON_HEIGHT)
   var111.ToggleButton = var2.createElement(var9, var125)
   return var2.createElement("Frame", var103, var111)
end

local function fun6(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = {}
   local var164 = pairs(arg1.props.scriptInjectionPermissions)
   local var165 = var1
   local var170 = arg1:renderCheckbox(var0, var167, var168)
   table.insert()
   local var175 = {}
   var175.BackgroundTransparency = 1
   var175.contentPadding = UDim.new(0, 20)
   var175.LayoutOrder = arg1.props.LayoutOrder
   var175.width = UDim.new(1, 0)
   var2.Ref = arg1.frameRef
   var2.Change.AbsoluteSize = arg1.resizeFrame
   local var192 = {}
   local var196 = {}
   var196.BackgroundTransparency = 1
   var196.contentPadding = UDim.new(0, 8)
   var196.LayoutOrder = 0
   local var206 = UDim.new(1, 0)
   var196.width = var206
   var206 = var1
   var192.Checkboxes = var2.createElement(var6, var196, var206)
   local var211 = {}
   var211.BackgroundTransparency = 1
   var211.Font = var0.Font
   var211.LayoutOrder = 1
   var211.TextSize = 16
   var211.Text = arg1.props.Localization:getText("Details", "ScriptInjectionInfo")
   var211.TextXAlignment = Enum.TextXAlignment.Left
   var211.TextColor3 = var0.InfoTextColor
   var192.InfoText = var2.createElement(var5, var211)
   return var2.createElement(var6, var175, var192)
end

function var8.render(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = {}
   local var164 = pairs(arg1.props.scriptInjectionPermissions)
   local var165 = var1
   local var170 = arg1:renderCheckbox(var0, var167, var168)
   table.insert()
   local var175 = {}
   var175.BackgroundTransparency = 1
   var175.contentPadding = UDim.new(0, 20)
   var175.LayoutOrder = arg1.props.LayoutOrder
   var175.width = UDim.new(1, 0)
   var2.Ref = arg1.frameRef
   var2.Change.AbsoluteSize = arg1.resizeFrame
   local var192 = {}
   local var196 = {}
   var196.BackgroundTransparency = 1
   var196.contentPadding = UDim.new(0, 8)
   var196.LayoutOrder = 0
   local var206 = UDim.new(1, 0)
   var196.width = var206
   var206 = var1
   var192.Checkboxes = var2.createElement(var6, var196, var206)
   local var211 = {}
   var211.BackgroundTransparency = 1
   var211.Font = var0.Font
   var211.LayoutOrder = 1
   var211.TextSize = 16
   var211.Text = arg1.props.Localization:getText("Details", "ScriptInjectionInfo")
   var211.TextXAlignment = Enum.TextXAlignment.Left
   var211.TextColor3 = var0.InfoTextColor
   var192.InfoText = var2.createElement(var5, var211)
   return var2.createElement(var6, var175, var192)
end

fun6 = var3.withContext
local var224 = {}
var224.API = require(var0.Src.ContextServices.PluginAPI2)
var224.Localization = var3.Localization
var224.Stylizer = var3.Stylizer
var8 = fun6(var224)(var8)
return require(var0.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.setPluginPermission(arg1)
      local var241 = arg1
      local var242 = var241.props
      var242 = arg1.props.API:get()
      var241 = arg1.props.assetId
      return var242.setPluginPermission(var242, var241, arg1)
   end
   
   return var0
end)(var8)
