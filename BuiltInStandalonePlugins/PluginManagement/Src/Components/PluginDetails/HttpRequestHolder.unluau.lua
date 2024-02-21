-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = game:GetService("TextService")
local var2 = game:GetService("PermissionsService")
local var3 = require(var0.Packages.Roact)
local var4 = require(var0.Packages.Framework).ContextServices
local var5 = require(var0.Src.Thunks.SetPluginPermission)
local var6 = require(var0.Src.Components.FluidFitTextLabel)
local var7 = require(var0.Packages.FitFrame).FitFrameVertical
local var8 = require(var0.Src.Util.Constants)
local var9 = require(var0.Packages.Framework).UI.Checkbox
local var10 = require(var0.Src.Util.truncateMiddleText)
local var11 = var3.Component:extend("HttpRequestHolder")
local var192 = {}
var192.httpPermissions = {}
var11.defaultProps = var192
function var11.init(arg1)
   arg1.frameRef = var3.createRef()
   local var198 = {}
   var198.frameWidth = 0
   arg1.state = var198
   function arg1.onCheckboxActivated(arg1)
      local var209 = arg1
      local var210 = var209.props
      var210 = arg1.props.API:get()
      var209 = arg1.props.assetId
      return var210.setPluginPermission(var210, var209, arg1)
   end
   
   function arg1.resizeFrame()
      local var0 = arg1.frameRef.current
      if not var0 then
      end
      if arg1.state.frameWidth ~= var0.AbsoluteSize.X then
         local var223 = {}
         var223.frameWidth = var0.AbsoluteSize.X
         arg1:setState(var223)
      end
   end
   
   function arg1.getTruncatedText(arg1, arg2)
      local var0 = ""
      local var231 = arg1
      local var232 = 16
      local var233 = arg2.Font
      local var235 = Vector2.new()
      local var5 = var8.SCROLLBAR_WIDTH_ADJUSTMENT
      local var6 = arg1.state.frameWidth - 16 - var5
      if 0 < var6 then
         if var6 < var1:GetTextSize().X then
            var5 = arg1
            var0 = var10(var5, 16, arg2.Font, var6)
            return var0
         end
      end
      var0 = arg1
      return var0
   end
   
end

function var11.didMount(arg1)
   arg1.resizeFrame()
end

function var11.renderCheckbox(arg1, arg2, arg3, arg4)
   if arg4.data then
      local var0 = arg4.data.domain or ""
   end
   local var272 = {}
   var272.Checked = arg4.allowed
   var272.LayoutOrder = arg3
   function var272.OnClick(arg1)
      local var282 = arg1
      local var283 = var282.props
      var283 = arg1.props.API:get()
      var282 = arg1.props.assetId
      return var283.setPluginPermission(var283, var282, arg1)
   end
   
   var272.Text = arg1.getTruncatedText("", arg2)
   return var3.createElement(var9, var272)
end

local function fun11(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = {}
   local var300 = pairs(arg1.props.httpPermissions)
   local var301 = var1
   local var306 = arg1:renderCheckbox(var0, var303, var304)
   table.insert()
   local var311 = {}
   var311.BackgroundTransparency = 1
   var311.contentPadding = UDim.new(0, 20)
   var311.LayoutOrder = arg1.props.LayoutOrder
   var311.width = UDim.new(1, 0)
   var3.Ref = arg1.frameRef
   var3.Change.AbsoluteSize = arg1.resizeFrame
   local var328 = {}
   local var332 = {}
   var332.BackgroundTransparency = 1
   var332.contentPadding = UDim.new(0, 8)
   var332.LayoutOrder = 0
   local var342 = UDim.new(1, 0)
   var332.width = var342
   var342 = var1
   var328.Checkboxes = var3.createElement(var7, var332, var342)
   local var347 = {}
   var347.BackgroundTransparency = 1
   var347.Font = var0.Font
   var347.LayoutOrder = 1
   var347.TextSize = 16
   var347.Text = arg1.props.Localization:getText("Details", "HttpRequestInfo")
   var347.TextXAlignment = Enum.TextXAlignment.Left
   var347.TextColor3 = var0.InfoTextColor
   var328.InfoText = var3.createElement(var6, var347)
   return var3.createElement(var7, var311, var328)
end

function var11.render(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = {}
   local var300 = pairs(arg1.props.httpPermissions)
   local var301 = var1
   local var306 = arg1:renderCheckbox(var0, var303, var304)
   table.insert()
   local var311 = {}
   var311.BackgroundTransparency = 1
   var311.contentPadding = UDim.new(0, 20)
   var311.LayoutOrder = arg1.props.LayoutOrder
   var311.width = UDim.new(1, 0)
   var3.Ref = arg1.frameRef
   var3.Change.AbsoluteSize = arg1.resizeFrame
   local var328 = {}
   local var332 = {}
   var332.BackgroundTransparency = 1
   var332.contentPadding = UDim.new(0, 8)
   var332.LayoutOrder = 0
   local var342 = UDim.new(1, 0)
   var332.width = var342
   var342 = var1
   var328.Checkboxes = var3.createElement(var7, var332, var342)
   local var347 = {}
   var347.BackgroundTransparency = 1
   var347.Font = var0.Font
   var347.LayoutOrder = 1
   var347.TextSize = 16
   var347.Text = arg1.props.Localization:getText("Details", "HttpRequestInfo")
   var347.TextXAlignment = Enum.TextXAlignment.Left
   var347.TextColor3 = var0.InfoTextColor
   var328.InfoText = var3.createElement(var6, var347)
   return var3.createElement(var7, var311, var328)
end

fun11 = var4.withContext
local var360 = {}
var360.API = require(var0.Src.ContextServices.PluginAPI2)
var360.Localization = var4.Localization
var360.Stylizer = var4.Stylizer
var11 = fun11(var360)(var11)
return require(var0.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.setPluginPermission(arg1)
      local var377 = arg1
      local var378 = var377.props
      var378 = arg1.props.API:get()
      var377 = arg1.props.assetId
      return var378.setPluginPermission(var378, var377, arg1)
   end
   
   return var0
end)(var11)
