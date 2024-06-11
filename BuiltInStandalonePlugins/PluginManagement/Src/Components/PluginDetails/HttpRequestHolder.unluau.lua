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
local var93 = {}
var93.httpPermissions = {}
var11.defaultProps = var93
function var11.init(arg1)
   arg1.frameRef = var3.createRef()
   local var99 = {}
   var99.frameWidth = 0
   arg1.state = var99
   function arg1.onCheckboxActivated(arg1)
      local var110 = arg1
      local var111 = var110.props
      var111 = arg1.props.API:get()
      var110 = arg1.props.assetId
      return var111.setPluginPermission(var111, var110, arg1)
   end
   
   function arg1.resizeFrame()
      local var0 = arg1.frameRef.current
      if not var0 then
      end
      if arg1.state.frameWidth ~= var0.AbsoluteSize.X then
         local var124 = {}
         var124.frameWidth = var0.AbsoluteSize.X
         arg1:setState(var124)
      end
   end
   
   function arg1.getTruncatedText(arg1, arg2)
      local var0 = ""
      local var132 = arg1
      local var133 = 16
      local var134 = arg2.Font
      local var136 = Vector2.new()
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
   local var173 = {}
   var173.Checked = arg4.allowed
   var173.LayoutOrder = arg3
   function var173.OnClick(arg1)
      local var183 = arg1
      local var184 = var183.props
      var184 = arg1.props.API:get()
      var183 = arg1.props.assetId
      return var184.setPluginPermission(var184, var183, arg1)
   end
   
   var173.Text = arg1.getTruncatedText("", arg2)
   return var3.createElement(var9, var173)
end

local function fun7(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = {}
   local var201 = pairs(arg1.props.httpPermissions)
   local var202 = var1
   local var207 = arg1:renderCheckbox(var0, var204, var205)
   table.insert()
   local var212 = {}
   var212.BackgroundTransparency = 1
   var212.contentPadding = UDim.new(0, 20)
   var212.LayoutOrder = arg1.props.LayoutOrder
   var212.width = UDim.new(1, 0)
   var3.Ref = arg1.frameRef
   var3.Change.AbsoluteSize = arg1.resizeFrame
   local var229 = {}
   local var233 = {}
   var233.BackgroundTransparency = 1
   var233.contentPadding = UDim.new(0, 8)
   var233.LayoutOrder = 0
   local var243 = UDim.new(1, 0)
   var233.width = var243
   var243 = var1
   var229.Checkboxes = var3.createElement(var7, var233, var243)
   local var248 = {}
   var248.BackgroundTransparency = 1
   var248.Font = var0.Font
   var248.LayoutOrder = 1
   var248.TextSize = 16
   var248.Text = arg1.props.Localization:getText("Details", "HttpRequestInfo")
   var248.TextXAlignment = Enum.TextXAlignment.Left
   var248.TextColor3 = var0.InfoTextColor
   var229.InfoText = var3.createElement(var6, var248)
   return var3.createElement(var7, var212, var229)
end

function var11.render(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = {}
   local var201 = pairs(arg1.props.httpPermissions)
   local var202 = var1
   local var207 = arg1:renderCheckbox(var0, var204, var205)
   table.insert()
   local var212 = {}
   var212.BackgroundTransparency = 1
   var212.contentPadding = UDim.new(0, 20)
   var212.LayoutOrder = arg1.props.LayoutOrder
   var212.width = UDim.new(1, 0)
   var3.Ref = arg1.frameRef
   var3.Change.AbsoluteSize = arg1.resizeFrame
   local var229 = {}
   local var233 = {}
   var233.BackgroundTransparency = 1
   var233.contentPadding = UDim.new(0, 8)
   var233.LayoutOrder = 0
   local var243 = UDim.new(1, 0)
   var233.width = var243
   var243 = var1
   var229.Checkboxes = var3.createElement(var7, var233, var243)
   local var248 = {}
   var248.BackgroundTransparency = 1
   var248.Font = var0.Font
   var248.LayoutOrder = 1
   var248.TextSize = 16
   var248.Text = arg1.props.Localization:getText("Details", "HttpRequestInfo")
   var248.TextXAlignment = Enum.TextXAlignment.Left
   var248.TextColor3 = var0.InfoTextColor
   var229.InfoText = var3.createElement(var6, var248)
   return var3.createElement(var7, var212, var229)
end

fun7 = var4.withContext
local var261 = {}
var261.API = require(var0.Src.ContextServices.PluginAPI2)
var261.Localization = var4.Localization
var261.Stylizer = var4.Stylizer
var11 = fun7(var261)(var11)
return require(var0.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.setPluginPermission(arg1)
      local var278 = arg1
      local var279 = var278.props
      var279 = arg1.props.API:get()
      var278 = arg1.props.assetId
      return var279.setPluginPermission(var279, var278, arg1)
   end
   
   return var0
end)(var11)
