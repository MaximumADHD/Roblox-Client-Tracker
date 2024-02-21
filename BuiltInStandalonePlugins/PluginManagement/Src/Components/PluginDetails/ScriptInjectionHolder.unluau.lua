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
local var159 = {}
var159.scriptInjectionPermissions = {}
var8.defaultProps = var159
function var8.init(arg1)
   arg1.frameRef = var2.createRef()
   local var3 = {}
   var3.frameWidth = 0
   arg1.state = var3
   function arg1.onCheckboxActivated(arg1)
      local var14 = arg1
      local var15 = var14.props
      var15 = arg1.props.API:get()
      var14 = arg1.props.assetId
      return var15.setPluginPermission(var15, var14, arg1)
   end
   
   function arg1.resizeFrame()
      local var0 = arg1.frameRef.current
      if not var0 then
      end
      if arg1.state.frameWidth ~= var0.AbsoluteSize.X then
         local var28 = {}
         var28.frameWidth = var0.AbsoluteSize.X
         arg1:setState(var28)
      end
   end
   
end

function var8.didMount(arg1)
   arg1.resizeFrame()
end

function var8.renderCheckbox(arg1, arg2, arg3, arg4)
   local var42 = {}
   var42.BackgroundTransparency = 1
   var42.Size = UDim2.new(1, 0, 0, 16)
   var42.LayoutOrder = arg3
   local var50 = {}
   local var54 = {}
   var54.FillDirection = Enum.FillDirection.Horizontal
   var54.Padding = UDim.new(0, 8)
   var50.Layout = var2.createElement("UIListLayout", var54)
   local var64 = {}
   var64.Disabled = false
   var64.LayoutOrder = 1
   function var64.OnClick(arg1)
      local var76 = arg1
      local var77 = var76.props
      var77 = arg1.props.API:get()
      var76 = arg1.props.assetId
      return var77.setPluginPermission(var77, var76, arg1)
   end
   
   var64.Selected = arg4.allowed
   var64.Size = UDim2.new(0, var7.TOGGLE_BUTTON_WIDTH, 0, var7.TOGGLE_BUTTON_HEIGHT)
   var50.ToggleButton = var2.createElement(var9, var64)
   return var2.createElement("Frame", var42, var50)
end

local function fun6(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = {}
   local var103 = pairs(arg1.props.scriptInjectionPermissions)
   local var104 = var1
   local var109 = arg1:renderCheckbox(var0, var106, var107)
   table.insert()
   local var114 = {}
   var114.BackgroundTransparency = 1
   var114.contentPadding = UDim.new(0, 20)
   var114.LayoutOrder = arg1.props.LayoutOrder
   var114.width = UDim.new(1, 0)
   var2.Ref = arg1.frameRef
   var2.Change.AbsoluteSize = arg1.resizeFrame
   local var131 = {}
   local var135 = {}
   var135.BackgroundTransparency = 1
   var135.contentPadding = UDim.new(0, 8)
   var135.LayoutOrder = 0
   local var145 = UDim.new(1, 0)
   var135.width = var145
   var145 = var1
   var131.Checkboxes = var2.createElement(var6, var135, var145)
   local var150 = {}
   var150.BackgroundTransparency = 1
   var150.Font = var0.Font
   var150.LayoutOrder = 1
   var150.TextSize = 16
   var150.Text = arg1.props.Localization:getText("Details", "ScriptInjectionInfo")
   var150.TextXAlignment = Enum.TextXAlignment.Left
   var150.TextColor3 = var0.InfoTextColor
   var131.InfoText = var2.createElement(var5, var150)
   return var2.createElement(var6, var114, var131)
end

function var8.render(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = {}
   local var103 = pairs(arg1.props.scriptInjectionPermissions)
   local var104 = var1
   local var109 = arg1:renderCheckbox(var0, var106, var107)
   table.insert()
   local var114 = {}
   var114.BackgroundTransparency = 1
   var114.contentPadding = UDim.new(0, 20)
   var114.LayoutOrder = arg1.props.LayoutOrder
   var114.width = UDim.new(1, 0)
   var2.Ref = arg1.frameRef
   var2.Change.AbsoluteSize = arg1.resizeFrame
   local var131 = {}
   local var135 = {}
   var135.BackgroundTransparency = 1
   var135.contentPadding = UDim.new(0, 8)
   var135.LayoutOrder = 0
   local var145 = UDim.new(1, 0)
   var135.width = var145
   var145 = var1
   var131.Checkboxes = var2.createElement(var6, var135, var145)
   local var150 = {}
   var150.BackgroundTransparency = 1
   var150.Font = var0.Font
   var150.LayoutOrder = 1
   var150.TextSize = 16
   var150.Text = arg1.props.Localization:getText("Details", "ScriptInjectionInfo")
   var150.TextXAlignment = Enum.TextXAlignment.Left
   var150.TextColor3 = var0.InfoTextColor
   var131.InfoText = var2.createElement(var5, var150)
   return var2.createElement(var6, var114, var131)
end

fun6 = var3.withContext
local var163 = {}
var163.API = require(var0.Src.ContextServices.PluginAPI2)
var163.Localization = var3.Localization
var163.Stylizer = var3.Stylizer
var8 = fun6(var163)(var8)
return require(var0.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.setPluginPermission(arg1)
      local var180 = arg1
      local var181 = var180.props
      var181 = arg1.props.API:get()
      var180 = arg1.props.assetId
      return var181.setPluginPermission(var181, var180, arg1)
   end
   
   return var0
end)(var8)
