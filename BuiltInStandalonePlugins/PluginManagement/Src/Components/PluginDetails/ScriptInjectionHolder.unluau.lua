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
local var18 = {}
var18.scriptInjectionPermissions = {}
var8.defaultProps = var18
function var8.init(arg1)
   arg1.frameRef = var2.createRef()
   local var24 = {}
   var24.frameWidth = 0
   arg1.state = var24
   function arg1.onCheckboxActivated(arg1)
      local var35 = arg1
      local var36 = var35.props
      var36 = arg1.props.API:get()
      var35 = arg1.props.assetId
      return var36.setPluginPermission(var36, var35, arg1)
   end
   
   function arg1.resizeFrame()
      local var0 = arg1.frameRef.current
      if not var0 then
      end
      if arg1.state.frameWidth ~= var0.AbsoluteSize.X then
         local var49 = {}
         var49.frameWidth = var0.AbsoluteSize.X
         arg1:setState(var49)
      end
   end
   
end

function var8.didMount(arg1)
   arg1.resizeFrame()
end

function var8.renderCheckbox(arg1, arg2, arg3, arg4)
   local var63 = {}
   var63.BackgroundTransparency = 1
   var63.Size = UDim2.new(1, 0, 0, 16)
   var63.LayoutOrder = arg3
   local var71 = {}
   local var75 = {}
   var75.FillDirection = Enum.FillDirection.Horizontal
   var75.Padding = UDim.new(0, 8)
   var71.Layout = var2.createElement("UIListLayout", var75)
   local var85 = {}
   var85.Disabled = false
   var85.LayoutOrder = 1
   function var85.OnClick(arg1)
      local var97 = arg1
      local var98 = var97.props
      var98 = arg1.props.API:get()
      var97 = arg1.props.assetId
      return var98.setPluginPermission(var98, var97, arg1)
   end
   
   var85.Selected = arg4.allowed
   var85.Size = UDim2.new(0, var7.TOGGLE_BUTTON_WIDTH, 0, var7.TOGGLE_BUTTON_HEIGHT)
   var71.ToggleButton = var2.createElement(var9, var85)
   return var2.createElement("Frame", var63, var71)
end

local function fun6(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = {}
   local var124 = pairs(arg1.props.scriptInjectionPermissions)
   local var125 = var1
   local var130 = arg1:renderCheckbox(var0, var127, var128)
   table.insert()
   local var135 = {}
   var135.BackgroundTransparency = 1
   var135.contentPadding = UDim.new(0, 20)
   var135.LayoutOrder = arg1.props.LayoutOrder
   var135.width = UDim.new(1, 0)
   var2.Ref = arg1.frameRef
   var2.Change.AbsoluteSize = arg1.resizeFrame
   local var152 = {}
   local var156 = {}
   var156.BackgroundTransparency = 1
   var156.contentPadding = UDim.new(0, 8)
   var156.LayoutOrder = 0
   local var166 = UDim.new(1, 0)
   var156.width = var166
   var166 = var1
   var152.Checkboxes = var2.createElement(var6, var156, var166)
   local var171 = {}
   var171.BackgroundTransparency = 1
   var171.Font = var0.Font
   var171.LayoutOrder = 1
   var171.TextSize = 16
   var171.Text = arg1.props.Localization:getText("Details", "ScriptInjectionInfo")
   var171.TextXAlignment = Enum.TextXAlignment.Left
   var171.TextColor3 = var0.InfoTextColor
   var152.InfoText = var2.createElement(var5, var171)
   return var2.createElement(var6, var135, var152)
end

function var8.render(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = {}
   local var124 = pairs(arg1.props.scriptInjectionPermissions)
   local var125 = var1
   local var130 = arg1:renderCheckbox(var0, var127, var128)
   table.insert()
   local var135 = {}
   var135.BackgroundTransparency = 1
   var135.contentPadding = UDim.new(0, 20)
   var135.LayoutOrder = arg1.props.LayoutOrder
   var135.width = UDim.new(1, 0)
   var2.Ref = arg1.frameRef
   var2.Change.AbsoluteSize = arg1.resizeFrame
   local var152 = {}
   local var156 = {}
   var156.BackgroundTransparency = 1
   var156.contentPadding = UDim.new(0, 8)
   var156.LayoutOrder = 0
   local var166 = UDim.new(1, 0)
   var156.width = var166
   var166 = var1
   var152.Checkboxes = var2.createElement(var6, var156, var166)
   local var171 = {}
   var171.BackgroundTransparency = 1
   var171.Font = var0.Font
   var171.LayoutOrder = 1
   var171.TextSize = 16
   var171.Text = arg1.props.Localization:getText("Details", "ScriptInjectionInfo")
   var171.TextXAlignment = Enum.TextXAlignment.Left
   var171.TextColor3 = var0.InfoTextColor
   var152.InfoText = var2.createElement(var5, var171)
   return var2.createElement(var6, var135, var152)
end

fun6 = var3.withContext
local var184 = {}
var184.API = require(var0.Src.ContextServices.PluginAPI2)
var184.Localization = var3.Localization
var184.Stylizer = var3.Stylizer
var8 = fun6(var184)(var8)
return require(var0.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.setPluginPermission(arg1)
      local var201 = arg1
      local var202 = var201.props
      var202 = arg1.props.API:get()
      var201 = arg1.props.assetId
      return var202.setPluginPermission(var202, var201, arg1)
   end
   
   return var0
end)(var8)
